2026-06-03

*Machine Learning — Out-of-Bag (OOB) evaluering til estimering af Random Forest-modellers generaliseringsevne uden eksternt valideringssæt.*

> [!tip] For en 5-årig: Læreren der tester undervejs
> Forestil dig at du har 30 venner, og I skal gætte dyr. Hver ven får kun 20 billeder ud af 30 at øve sig på. Når I så gætter, bliver hvert dyr bedømt af de venner der IKKE havde det billede — så det er en fair test.
>
> Det er præcis hvad OOB gør: Hvert træ testes på de data det **ikke** blev trænet på, og resultatet midles over alle træer.

> [!INFO] Course info
> BMB547, Machine Learning — Ensemble Methods, 2026.

---

## Problemet: Validering uden ekstra data

Når du træner et [[Decision Trees & Random Forests]], vil du gerne vide om det generaliserer — men hvad gør du hvis du ikke har nok data til et separat valideringssæt?

**Løsning:** Random Forest har **indbygget krydsvalidering** via OOB.

---

## Hvordan virker OOB?

Når et Random Forest trænes, får hvert træ en **bootstrap-sample** (tilfældig stikprøve med tilbagelægning) af data.

- Ca. **2/3** af data vælges til træning af hvert træ (in-bag)
- Ca. **1/3** udelades fra hvert træ — det er **Out-of-Bag** samples

```
Hele datasættet (N=100)
    │
    ├── Træ 1: træning på 67 samples, OOB på 33 samples
    ├── Træ 2: træning på 65 samples, OOB på 35 samples
    ├── Træ 3: træning på 70 samples, OOB på 30 samples
    └── ...
```

For hver observation i datasættet:
1. Find alle træer hvor denne observation var **OOB** (ikke brugt til træning)
2. Lad disse træer forudsige observationens label
3. Sammenlign forudsigelse med sand label
4. OOB-fejl = andel af forkerte forudsigelser på tværs af alle observationer

> [!NOTE] Eksempel: OOB for én observation
> Observation #42 (sand klasse: "Syg")
> - OOB i træ 2, 5, 7, 9 (4 træer)
> - Træ 2: "Syg" ✓
> - Træ 5: "Rask" ✗
> - Træ 7: "Syg" ✓
> - Træ 9: "Syg" ✓
> - **OOB vote:** 3/4 = "Syg" → korrekt

---

## OOB vs Krydsvalidering

| Egenskab | OOB | K-fold CV |
| :--- | :--- | :--- |
| **Ekstra beregning** | Ingen (gratis under træning) | Kræver gen-træning K gange |
| **Dataeffektivitet** | Bruger hele datasættet | Bruger også hele datasættet |
| **Bias** | Let biased (mindre træningsdata pr. træ) | Stort set unbiased |
| **Varians** | Lav (mange træer) | Moderat |
| **Hastighed** | Hurtigere | Langsommere |

> [!TIP] OOB er gratis
> OOB estimeres **automatisk** under træning af Random Forest — det kræver ingen ekstra beregning. K-fold cross-validation kræver at modellen gen-trænes K gange.

---

## R-kode: Random Forest med OOB-evaluering

```r
# 1. Installer og indlæs pakke (kør kun første gang)
# install.packages("randomForest")
library(randomForest)

# 2. Indlæs eller opret dit datasæt
# Eksempel: kunstigt datasæt med 100 patienter
set.seed(42)
patient_data <- data.frame(
  Alder = rnorm(100, mean = 50, sd = 15),
  BMI = rnorm(100, mean = 28, sd = 5),
  Blodtryk = rnorm(100, mean = 130, sd = 20),
  Kolesterol = rnorm(100, mean = 5.5, sd = 1.2),
  Diagnosis = factor(sample(c("Syg", "Rask"), 100, replace = TRUE,
                            prob = c(0.4, 0.6)))
)

# 3. Træn Random Forest — OOB aktiveres AUTOMATISK
rf_model <- randomForest(
  Diagnosis ~ .,            # Formel: Diagnosis forklaret af alle andre variable
  data = patient_data,
  ntree = 500,              # Antal træer i skoven
  importance = TRUE,        # Beregn variable importance (OOB-baseret)
  mtry = 2                  # Antal variable pr. split (default: sqrt(p))
)

# 4. Se OOB fejlrate
print(rf_model)
# > OOB estimate of error rate: 4.67%

# 5. Plot OOB fejl som funktion af antal træer
plot(rf_model, main = "OOB Error vs. Antal Træer")
legend("topright", legend = colnames(rf_model$err.rate),
       col = 1:3, lty = 1, cex = 0.8)
# --> Hvis kurven stadig falder ved 500 træer, øg ntree

# 6. Udtræk OOB fejlrate pr. iteration
oob_error <- rf_model$err.rate[nrow(rf_model$err.rate), "OOB"]
cat("Endelig OOB fejlrate:", round(oob_error * 100, 2), "%\n")
```

## R-kode: Variable Importance via OOB-permutation

```r
# 1. Plot variable importance (sorteret)
varImpPlot(rf_model,
           main = "Variable Importance (OOB-baseret)",
           sort = TRUE,
           n.var = min(10, ncol(patient_data) - 1))

# 2. Numerisk importance — to mål:
#    - MeanDecreaseAccuracy: stigning i OOB-fejl når variablen permuteres
#    - MeanDecreaseGini: fald i Gini-renhed når variablen bruges til split
imp <- importance(rf_model)
print("Variable importance:")
print(imp)

# 3. Find de 3 vigtigste variable
top_vars <- names(sort(imp[, "MeanDecreaseAccuracy"], decreasing = TRUE)[1:3])
cat("Top 3 vigtigste variable:", paste(top_vars, collapse = ", "), "\n")
```

Se [[Decision Trees & Random Forests]] for grundlæggende Random Forest-koncepter.

---

## Fortolkning

| OOB observation | Tolkning |
| :--- | :--- |
| OOB error ≈ test error | Modellen generaliserer godt — OOB er et pålideligt estimat |
| OOB error ≪ test error | Mulig overfitting eller stort skift i data-distribution |
| OOB error falder stabilt | Flere træer vil forbedre modellen |
| OOB error flader ud | Modellen er mættet — flere træer hjælper ikke |
| Stor OOB stigning efter permutation | Variablen er vigtig for modellen |

> [!WARNING] OOB er ikke altid nok
> OOB giver et godt estimat af **generaliseringsfejl** men erstatter ikke et separat test-sæt hvis du har nok data. Brug både OOB (til modeludvikling) og test-sæt (til endelig evaluering) når muligt.

> [!question]- Hvorfor er OOB unbiased?
> Fordi hver observations forudsigelse kun kommer fra træer der **ikke** så observationen under træning. Det svarer til leave-one-out cross-validation, men meget mere beregningseffektivt. Gennemsnittet over alle træers OOB-forudsigelser giver en robust fejlestimat.

Se også: [[Logistic Regression]] for lineær klassifikation og [[Entropy og Information Gain]] for split-kriterier.
