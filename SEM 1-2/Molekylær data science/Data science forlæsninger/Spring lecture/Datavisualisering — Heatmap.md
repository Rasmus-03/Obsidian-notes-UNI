2026-06-03

*Datavisualisering — Heatmaps til præsentation af parvise korrelationer og ekspressionsmønstre i en kompakt matrixform.*

> [!tip] For en 5-årig: Temperaturkort
> Forestil dig et klasselokale med en plan over alle bordene. Du farvelægger hvert bord efter hvor varmt det er: rød = meget varmt, gul = lunken, blå = koldt. Med et enkelt blik kan du se hvor der er varmest og koldest.
>
> Et heatmap gør det samme med data — høje værdier bliver røde, lave værdier bliver blå, og du kan med ét blik spotte mønstre.

> [!INFO] Course info
> BMB547, Datavisualisering, 2026.

---

## Hvad er et heatmap?

En **matrix** af værdier visualiseret med farver:
- **Rækker:** Gener, features eller observationer
- **Kolonner:** Samples, betingelser eller tidspunkter
- **Farve:** Værdiens størrelse (f.eks. høj/lav ekspression, stærk/svag korrelation)

---

## Anvendelser i molekylær data science

| Anvendelse | Beskrivelse |
| :--- | :--- |
| **Gene expression** | Ekspressionsniveauer på tværs af samples (rød = høj, blå = lav) |
| **Korrelationsmatrix** | Parvise Pearson/Spearman-korrelationer mellem gener eller proteiner |
| **Co-expression** | Moduler af gener der co-udtrykkes på tværs af betingelser |
| **Methylering** | Methyleringsmønstre på tværs af loci og vævstyper |

---

## Korrelations-heatmap

Det mest almindelige heatmap i data science — viser parvise korrelationer mellem mange variable:

```
          Gen1   Gen2   Gen3   Gen4
Gen1   1.00   0.85   0.12  -0.45
Gen2   0.85   1.00   0.08  -0.52
Gen3   0.12   0.08   1.00   0.03
Gen4  -0.45  -0.52   0.03   1.00
```

Farvegradient: Rød = positiv korrelation, blå = negativ, hvid = ingen.

Se [[Lineær regression]] og [[PCA (Principal Component Analysis)]] for at forstå hvad korrelation betyder i praksis.

---

## R-kode: Korrelations-heatmap (ggplot2)

```r
# 1. Indlæs pakker
# install.packages(c("ggplot2", "reshape2"))
library(ggplot2)
library(reshape2)

# 2. Beregn korrelationsmatrix (Pearson som standard)
# expression_data skal være en data.frame/matrix med samples i rækker
# og gener/proteiner i kolonner — eller omvendt alt efter dit format
kor_matrix <- cor(expression_data, method = "pearson")

# 3. Smelt matrix til langt format (til ggplot)
kor_meltet <- melt(kor_matrix, varnames = c("Var1", "Var2"),
                   value.name = "Korrelation")

# 4. Plot heatmap
ggplot(kor_meltet, aes(x = Var1, y = Var2, fill = Korrelation)) +
  geom_tile() +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red",
                       midpoint = 0, limits = c(-1, 1)) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Korrelations-heatmap", fill = "Pearson r")
```

## R-kode: Gene expression heatmap med clustering (pheatmap)

```r
# 1. Indlæs pakke
# install.packages("pheatmap")
library(pheatmap)

# 2. Forbered data: gener i rækker, samples i kolonner
# Sørg for at data er numerisk (ingen metadata-kolonner)
eksp_data <- as.matrix(expression_data)

# 3. Definér farvepalet (blå → hvid → rød)
farver <- colorRampPalette(c("blue", "white", "red"))(100)

# 4. Opret heatmap med clustering og cut-off
pheatmap(eksp_data,
         scale = "row",                # Z-score per gen (træk middel, del med SD)
         clustering_method = "ward.D2", # Ward's linkage
         cutree_rows = 4,               # Klip dendrogram i 4 klynger
         cutree_cols = 2,               # Klip kolonner i 2 klynger
         color = farver,
         main = "Gene Expression Heatmap",
         fontsize_row = 8,
         fontsize_col = 10,
         show_rownames = TRUE,
         show_colnames = TRUE)

# 5. Gem som PDF
# pheatmap(eksp_data, scale = "row", clustering_method = "ward.D2",
#          filename = "heatmap.pdf", width = 8, height = 10)
```

---

## Heatmap med dendrogram

Heatmaps kombineres ofte med [[Dendrogram — Hierarkisk clustering]] i række- og kolonnekanten for at afsløre grupperinger:

```
       ┌──────────────────────────┐
       │                     ┌────┤ Dendrogram
       │                     │    │ (clustering af rækker)
       │    Heatmap          │    │
       │    (farver)         │    │
       │                     │    │
       │                     └────┤
       └──────────────────────────┘
        └── Dendrogram (kolonner) ──┘
```

> [!NOTE] Læsning af et klynget heatmap
> 1. **Dendrogrammet** viser hvor ens rækker/kolonner er — jo kortere gren før de mødes, jo mere ens
> 2. **Farveblokkene** i heatmappet viser grupper af co-eksprimerede gener
> 3. **Kolonne-dendrogrammet** afslører om samples grupperer sig efter f.eks. behandling vs kontrol

---

## Fortolkning

| Farveområde | Korrelationsfortolkning |
| :--- | :--- |
| Mørkerød (nær +1) | Stærk positiv korrelation — variable følges ad |
| Hvid (nær 0) | Ingen lineær sammenhæng |
| Mørkeblå (nær -1) | Stærk negativ korrelation — omvendt proportional |

> [!WARNING] Korrelation ≠ kausalitet
> To variable der co-udtrykkes i et heatmap, behøver ikke have en kausal sammenhæng. De kan begge være påvirket af en tredje faktor. Se [[Ordinære differentialligninger]] for dynamiske modeller der kan teste kausalitet.

> [!question]- Hvornår skal man scale ("row") i pheatmap?
> **Uden scaling:** Rå værdier — farver viser absolutte niveauer. Godt hvis niveauer er sammenlignelige på tværs af rækker.
>
> **Med scaling:** Z-score-normaliserede rækker — hvert gen centreres (middelværdi = 0) og skaleres (SD = 1). Godt til at sammenligne mønstre på tværs af gener med forskellige baseline-niveauer.
>
> **Regel:** Brug `scale = "row"` medmindre du har en specifik grund til at bevare absolutte niveauer.

Se også: [[Datavisualisering — Venn-diagram]] for overlap-visualisering, [[PCA (Principal Component Analysis)]] for dimensionalitetsreduktion.
