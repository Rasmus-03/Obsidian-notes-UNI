2026-06-03

*Datavisualisering — Venn-diagrammer til mængdelære og logiske overlap mellem grupper.*

> [!tip] For en 5-årig: Fælles venner
> Forestil dig at du har to vennegrupper — dem fra skole og dem fra sport. Nogle venner er med i BEGGE grupper (fælles venner). Et Venn-diagram tegner det som to overlappende cirkler, så du kan se hvem der er i skole, hvem der er i sport, og hvem der er i begge.
>
> Det er en måde at vise "hvad har de til fælles, og hvad er unikt for hver gruppe?"

> [!INFO] Course info
> BMB547, Datavisualisering, 2026.

---

## Hvad er et Venn-diagram?

Et Venn-diagram visualiserer **mængderelationer** mellem to eller flere grupper ved hjælp af overlappende cirkler/ellipser.

- **Hver cirkel** repræsenterer en mængde (f.eks. "gener udtrykt i væv A")
- **Overlap (intersection)** viser elementer der er fælles for begge mængder
- **Udenfor cirklerne** viser elementer der ikke tilhører nogen af mængderne

---

## Anvendelser i molekylær data science

| Anvendelse | Beskrivelse |
| :--- | :--- |
| **DEG overlap** | Differentially expressed genes mellem to behandlinger |
| **GO term overlap** | Fælles gene ontology-kategorier på tværs af assays |
| **Sample overlap** | Fordeling af patienter på tværs af kohorter |
| **Feature selection** | Overlap mellem variable udvalgt af forskellige metoder |

> [!NOTE] Eksempel: DEG overlap
> ```
> Behandling A        Behandling B
> (150 gener)         (120 gener)
>       ┌───┐         ┌───┐
>       │   │   ┌───┐ │   │
>       │ 100│   │ 50│ │ 70│
>       │   │   └───┘ │   │
>       └───┘         └───┘
> ```
> 100 gener unikke for A, 70 unikke for B, 50 gener fælles for begge.

---

## R-kode: 2-sætters Venn-diagram (DEG overlap)

```r
# 1. Indtast størrelserne på dine mængder
# Eksempel: Differentially expressed genes fra to behandlinger
behandling_A <- 150   # Unikke + fælles for A
behandling_B <- 120   # Unikke + fælles for B
faelles <- 50         # Gener fundet i BEGGE behandlinger

# 2. Beregn unikke værdier
kun_A <- behandling_A - faelles
kun_B <- behandling_B - faelles

cat("Kun behandling A:", kun_A, "\n")
cat("Kun behandling B:", kun_B, "\n")
cat("Fælles:", faelles, "\n")
cat("Total unikke gener:", kun_A + kun_B + faelles, "\n")

# 3. Installer og indlæs pakke (kør kun første gang)
# install.packages("VennDiagram")
library(VennDiagram)

# 4. Tegn Venn-diagram
venn.plot <- draw.pairwise.venn(
  area1 = behandling_A,
  area2 = behandling_B,
  cross.area = faelles,
  category = c("Behandling A", "Behandling B"),
  fill = c("lightblue", "lightcoral"),
  cat.cex = 1.2,
  cex = 1.5
)

# 5. Visualiser
grid.draw(venn.plot)
```

## R-kode: Proportionelt Euler-diagram (3 sæt)

```r
# 1. Indtast dine mængder og overlap
# Syntaks: c("Sæt1" = antal, "Sæt2" = antal, "Sæt1&Sæt2" = overlap, ...)
library(eulerr)

fit <- euler(c(
  "RNAseq" = 80,
  "Proteomics" = 60,
  "Metabolomics" = 40,
  "RNAseq&Proteomics" = 25,
  "RNAseq&Metabolomics" = 10,
  "Proteomics&Metabolomics" = 8,
  "RNAseq&Proteomics&Metabolomics" = 3
))

# 2. Plot med tilpassede farver
plot(fit,
     quantities = TRUE,
     fills = c("skyblue", "lightcoral", "lightgreen"),
     labels = c("RNA-seq", "Proteomics", "Metabolomics"))
```

Se også: [[Datavisualisering — Heatmap]] og [[Datavisualisering — Dendrogram]] for relaterede visualiseringer.

---

## Fortolkning

| Scenario | Tolkning |
| :--- | :--- |
| Stort overlap | Meget fælles signal — metoder/grupper er enige |
| Lille overlap | Forskellige mekanismer — komplementære informationer |
| Ét sæt indeholder et andet | Den ene gruppe er en delmængde af den anden |
| Intet overlap | Uafhængige sæt — interessante kandidater til videre analyse |

> [!WARNING] Proportionelle arealer
> Standard Venn-diagrammer skalerer ikke nødvendigvis cirkelarealer proportionelt med mængdernes størrelse. Brug `eulerr`-pakken i R for proportionelle diagrammer (area-proportional Venn/Euler-diagrammer).

> [!question]- Hvornår bruger man Venn vs Euler-diagram?
> **Venn-diagram:** Alle mulige overlap vises, også tomme intersectioner. God til pædagogisk fremstilling.
>
> **Euler-diagram:** Kun overlap der faktisk findes, vises. Mere præcis og skalerbar til mange sæt.
>
> For 3+ sæt bliver Venn-diagrammer hurtigt uoverskuelige — overvej [[Heatmap — Korrelation og visualisering]] eller [[PCA (Principal Component Analysis)]] i stedet.
