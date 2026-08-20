*Principal Component Analysis (PCA) — dimensionsreduktion ved at finde de vigtigste retninger i data.*

> [!tip] For en 5-årig: Skyggen af en 3D-figur
> Forestil dig at du har en 3D-klods og tegner dens skygge på væggen. Skyggen er flad (2D), men du kan stadig genkende klodsens form.
>
> PCA gør det samme med data: hvis du har 100 målinger per prøve, finder PCA de **2-3 vigtigste retninger** og kaster skyggen ned på dem. Du mister lidt information, men data bliver meget lettere at arbejde med og tegne.
>
> Den første principale komponent (PC1) er den retning hvor data varierer **mest**. PC2 er den næstvigtigste retning — på tværs af PC1.

---

## 01 Hvorfor PCA?

| Problem | Løsning |
|:---|:---|
| For mange variable (f.eks. gene expression: 20.000 gener) | Reducér til 2-20 PC'er |
| Variable er korrelerede | PCA laver nye ukorrelerede variable |
| Kan ikke visualisere højdimensionelle data | Plot PC1 vs. PC2 — 2D scatter |
| Støj i data | De sidste PC'er er oftest støj — fjern dem |

---

## 02 Hvordan virker PCA?

### Trin-for-trin

1. **Standardisér data** — hver variabel centreres ($\mu = 0$) og skaleres ($\sigma = 1$)
2. **Beregn kovariansmatricen** — hvor meget hænger variablene sammen?
3. **Find egenværdier $\lambda_i$ og egenvektorer $v_i$** af kovariansmatricen
4. **Sortér** egenværdierne — størst = vigtigst
5. **Vælg $k$ komponenter** (f.eks. de 2 største)
6. **Projicér** data ned på de $k$ egenvektorer

### Matematikken

Kovariansmatrix $C$ for data $X$ ($n$ prøver, $p$ variable):

$$
C = \frac{1}{n-1} X^T X
$$

Egenværdidekomposition: $C v_i = \lambda_i v_i$

PC-scores (de transformerede data): $Z = X V$, hvor $V$ er egenvektorerne.

---

## 03 Forklaret varians

Hver PC forklarer en andel af den totale variation:

$$
\text{Variansandel for PC}_i = \frac{\lambda_i}{\sum_{j=1}^{p} \lambda_j}
$$

**Scree plot:** Plot $\lambda_i$ i rækkefølge — find "knæet" hvor kurven flader ud.

> [!question]- Hvor mange PC'er skal jeg vælge?
> Egenværdier fra en PCA på gene expression data:
>
> | PC | $\lambda$ | Forklaret varians | Kumuleret |
> |:---|:---|:---|:---|
> | 1 | 8,2 | $41\%$ | $41\%$ |
> | 2 | 4,1 | $20,5\%$ | $61,5\%$ |
> | 3 | 1,9 | $9,5\%$ | $71\%$ |
> | 4 | 1,2 | $6\%$ | $77\%$ |
> | 5 | 0,8 | $4\%$ | $81\%$ |
> | $\dots$ | $< 1$ | $< 5\%$ hver | |
>
> **Løsning:**
>
> **80%-reglen:** Vælg nok PC'er til at forklare $80\%$ af variansen.
>
> Her: PC1-PC4 forklarer $77\%$ — tilføj PC5 for at nå $81\%$ → **5 PC'er** er et godt valg.
>
> **Visualisering:** PC1 vs. PC2 ($61,5\%$) giver et rimeligt 2D-billede af data.

---

## 04 Loadings — hvilke variable betyder noget?

**Loadings** er egenvektorerne — de fortæller hvilke originale variable der bidrager til hver PC.

- Høj loading ($|v_{ij}| \approx 1$) = variabel $j$ er vigtig for PC$_i$
- Lav loading ($|v_{ij}| \approx 0$) = variabel $j$ betyder lidt for PC$_i$
- Positiv/negativ loading = retning (modsat fortegn = modsat bidrag)

> [!WARNING] PCA fælder
> - **Standardisér altid** før PCA, ellers dominerer variable med stor skala (f.eks. mg vs. µg)
> - PCA er **ikke** et feature selection-værktøj — det laver nye features (PC'er)
> - PCA antager **linearitet** — ikke-lineære strukturer fanges ikke
> - Store egenværdier = stor varians, men **ikke** nødvendigvis stor biologisk betydning

---

## 05 PCA i R

```r
# Data: gener i rækker, prøver i kolonner
data <- read.csv("expression.csv", row.names = 1)
data_t <- t(data)  # prøver i rækker, gener i kolonner

# PCA
pca_result <- prcomp(data_t, scale. = TRUE)

# Scree plot
plot(pca_result, type = "l", main = "Scree plot")

# Biplot (PC1 vs PC2)
biplot(pca_result)

# Få fat i scores og loadings
scores <- pca_result$x        # de transformerede data (PC-scores)
loadings <- pca_result$rotation  # egenvektorer
variance <- summary(pca_result)$importance[2, ]  # forklaret varians
```

---

## 06 Anvendelse: Gene expression

PCA bruges ofte til at **kvalitetstjekke** RNA-seq data:

- **Før normalisering:** Tekniske batches ses som separate klynger
- **Efter normalisering:** Batch-effekter bør være væk
- **Outliers:** Én prøve der ligger langt fra de andre → tjek om den er fejlbehandlet

> [!question]- Hvad fortæller et PCA-plot?
> Et PCA-plot af 30 mus:
>
> ```
>      PC2 (15%)
>      |
>   Kontrol│    ••••••••
>      │  ••  │  ••••
>      │     │
>    ──┼─────┼───────── PC1 (40%)
>      │     │
>  Behandlet│    ••••••••
>      │  ••  │  ••••
>      │     │
> ```
>
> **Fortolkning:** Kontrol- og behandlede mus adskiller sig langs PC1 → behandlingen påvirker gene expression-profilen markant.
>
> Mus med samme behandling ligger tæt → reproducerbart. Hvis én behandlet mus lå hos kontrol → tjek prøveforbytning.

Se også: [[Numeriske Metoder og Egenværdier]] for egenværdier generelt, [[Statistik]] for statistisk test af forskelle.
