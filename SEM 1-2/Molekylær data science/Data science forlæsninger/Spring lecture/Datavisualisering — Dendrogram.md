2026-06-03

*Datavisualisering — Dendrogrammer til hierarkisk clustering og bestemmelse af klyngeantal ved cut-off.*

> [!tip] For en 5-årig: Familietræ for data
> Forestil dig at du skal organisere en skuffe med blandede sokker. Først deler du dem i "stribede" og "ensfarvede". Så deler du hver bunke efter farve. Til sidst efter størrelse. Resultatet er et træ der viser hvor ens sokkerne er — jo tættere de er i træet, jo mere ens.
>
> Et dendrogram gør det samme med datapunkter — det bygger et træ der viser ligheder, og du kan "klippe" træet i den højde der giver det bedste antal klynger.

> [!INFO] Course info
> BMB547, Datavisualisering & Clustering, 2026.

---

## Hvad er et dendrogram?

Et **træ-diagram** der viser hierarkisk clustering:
- **Blade:** Individuelle datapunkter (gener, samples, etc.)
- **Grene:** Hvor punkter/grupper forbindes baseret på lighed
- **Højde (Y-akse):** Distance/ulighed mellem klynger — jo højere forbindelse, jo mindre ens
- **Cut-off linje:** En vandret linje der bestemmer antallet af klynger

```
     ───────────────────────────────────────────
     │     ┌─────────────────┐
     │     │    ┌────────┐   │       ┌──────┐
     │     │    │   ┌─┐   │   │       │  ┌─┐ │
     │     │    │ ┌─┘ └─┐ │   │       │┌┘ └┐│
     │     │    │ │ A B │ │   │       ││ C D││
     Cut-off ──────────────────────────────────
     │     │    │ │     │ │   │       ││    ││
          Klynge 1      Klynge 2     Klynge 3
```

---

## Hierarkisk clustering algoritme (Agglomerativ)

1. Start med hvert punkt som sin egen klynge
2. Find de to **tætteste** klynger og flet dem
3. Gentag indtil alle punkter er i én klynge
4. Plot fletningerne som et dendrogram

### Linkage-metoder (hvordan måles afstand mellem klynger?)

| Metode | Distance mellem klynger | Egenskab |
| :--- | :--- | :--- |
| **Single** | Minimum distance mellem punkter | Kan danne lange "kæder" |
| **Complete** | Maksimum distance | Giver kompakte klynger |
| **Average** | Gennemsnit af alle par | Balanceret |
| **Ward** | Mindste stigning i varians | Giver runde, jævnstore klynger |

> [!WARNING] Single linkage
> Single linkage kan skabe "kæde-effekt" hvor to punkter forbindes gennem en lang række mellemliggende punkter, selvom de er meget forskellige. Ward's metode er ofte at foretrække i bioinformatik.

---

## Cut-off: Bestemmelse af antal klynger

Antallet af klynger bestemmes ved at tegne en **vandret linje** gennem dendrogrammet:

- Skær træet ved en given højde
- Antallet af vertikale linjer linjen krydser = antal klynger

### Strategier for valg af cut-off

| Metode | Beskrivelse |
| :--- | :--- |
| **Elbow (gap)** | Find det spring i højde hvor store hop i distance opstår |
| **Specificeret K** | Vælg et bestemt antal klynger baseret på faglig viden |
| **Silhouette** | Mål hvor godt punkter passer i deres klynge vs nærmeste nabo |
| **Cut at height** | Vælg en distance-tærskel (f.eks. 0.5 på skaleret skala) |

> [!NOTE] Eksempel: Cut-off
> ```
>              Høj
>               │
>   5 ──────┐   │
>           │   │
>   4 ──┐   │   │   ┌───
>       │   │   │   │
>   3 ──┤   ├───┤   ├───
>       │   │   │   │
>   2 ──┤   │   │   │   ┌───
>       │   │   │   │   │
>   1 ──┴───┴───┴───┴───┴───
>       A   B   C   D   E   F
> ```
> Cut-off ved højde 3 → 3 klynger: {A,B}, {C,D}, {E,F}
> Cut-off ved højde 2 → 4 klynger: {A}, {B}, {C,D}, {E,F}

---

## R-kode: Dendrogram med cut-off

```r
# 1. Beregn afstandsmatrix (euklidisk distance som standard)
# data skal være numerisk med samples i rækker og variable i kolonner
data <- iris[, 1:4]  # Eksempel: Iris-datasættet (4 målinger pr. blomst)
afstand <- dist(data, method = "euclidean")

# 2. Udfør hierarkisk clustering (Ward's metode)
hc <- hclust(afstand, method = "ward.D2")

# 3. Plot dendrogram
plot(hc,
     main = "Dendrogram — Hierarkisk clustering af Iris",
     xlab = "Observationer",
     ylab = "Højde (distance)",
     sub = "",
     cex = 0.6)

# 4. Tilføj cut-off linje ved 3 klynger
rect.hclust(hc, k = 3, border = c("red", "blue", "green"))

# 5. Udtræk klyngetilhørsforhold
klynger <- cutree(hc, k = 3)
print("Klyngetilhørsforhold (første 10 observationer):")
print(head(klynger, 10))

# 6. Tjek hvor mange observationer i hver klynge
print("Antal pr. klynge:")
print(table(klynger))
```

## R-kode: Find optimalt antal klynger (elbow-metode)

```r
# 1. Beregn total within-cluster sum of squares for forskellige K
wss <- numeric(10)
for (k in 1:10) {
  klynger <- cutree(hc, k = k)
  wss[k] <- sum(scale(data, center = TRUE, scale = FALSE)^2) -
    sum(aggregate(data, list(klynger), function(x) sum(scale(x, center = TRUE, scale = FALSE)^2))[, -1])
}
# Alternativ (hurtigere):
# wss[k] <- sum(sapply(1:k, function(i) {
#   if(sum(klynger == i) > 1) sum(scale(data[klynger == i, ], center = TRUE, scale = FALSE)^2)
#   else 0
# }))

# 2. Plot elbow-kurve
plot(1:10, wss, type = "b", pch = 19,
     xlab = "Antal klynger (K)",
     ylab = "Total within-cluster SS",
     main = "Elbow-metode — vælg K ved 'knæet'")
```

Se [[Datavisualisering — Heatmap]] for hvordan dendrogrammer integreres i heatmaps.

---

## Fortolkning

| Dendrogram-observation | Tolkning |
| :--- | :--- |
| Korte grene nederst | Punkter er meget ens |
| Lange vertikale linjer | Stor afstand mellem klynger — godt split |
| Flade top (lille højde) | Alle punkter er relativt ens |
| Ét punkt isoleret langt væk | Outlier — potentielt artefakt eller unik biologisk tilstand |

> [!question]- Hvordan vælger jeg linkage-metode?
> **Ward's metode** er ofte standard i bioinformatik — skaber kompakte, jævnstore klynger. Men den forudsætter kontinuerte variable og euklidisk distance.
>
> **Complete linkage:** Godt når du vil undgå kædeeffekten og have kompakte klynger. Fungerer med forskellige distance-mål.
>
> **Average linkage:** Kompromis — hverken for kompakte eller for kædede. Godt som robust standardvalg.

Se også: [[PCA (Principal Component Analysis)]] for dimensionalitetsreduktion, [[Markov State Models (MSM)]] for clustering af molekylære tilstande.
