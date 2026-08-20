*Lineær regression — Simple Linear Regression (SLR), Multiple Linear Regression (MLR), Ordinary Least Squares (OLS), $R^2$ og justeret $R^2$.*

> [!tip] For en 5-årig: Den bedste lige linje
> Forestil dig at du har tegnet en masse prikker på et papir — f.eks. højde og vægt for dine klassekammerater. Du vil tegne **den bedste lige linje** gennem prikkerne.
>
> "Bedst" betyder: linjen skal være så tæt på alle prikkerne som muligt. Hvis du måler afstanden fra hver prik til linjen, skal den **gennemsnitlige afstand** være så lille som muligt.
>
> Det er lineær regression — OLS (mindste kvadraters metode) gør det matematisk: den finder den linje der giver den mindste sum af kvadrerede afstande.

---

## 01 Simple Linear Regression (SLR)

### Modellen
$$
y_i = \beta_0 + \beta_1 x_i + \varepsilon_i
$$

- $y_i$ = respons (afhængig variabel, f.eks. vægt)
- $x_i$ = predictor (uafhængig variabel, f.eks. højde)
- $\beta_0$ = **intercept** (skæring med y-aksen)
- $\beta_1$ = **hældning** (ændring i $y$ pr. enhed ændring i $x$)
- $\varepsilon_i$ = **residual** (fejl — afstanden fra prik til linje)

### OLS — Ordinary Least Squares

Find $\beta_0$ og $\beta_1$ der **minimerer** summen af kvadrerede residualer:

$$
\text{minimer} \quad \sum_{i=1}^{n} (y_i - (\beta_0 + \beta_1 x_i))^2
$$

Løsningen:

$$
\hat{\beta}_1 = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sum (x_i - \bar{x})^2}
$$
$$
\hat{\beta}_0 = \bar{y} - \hat{\beta}_1 \bar{x}
$$

> [!question]- Sammenhæng mellem alder og lungekapacitet
> | Alder (år) | Lungekapacitet (L) |
> |:---|:---|
> | 20 | 4,5 |
> | 25 | 4,8 |
> | 30 | 4,4 |
> | 35 | 4,2 |
> | 40 | 3,9 |
> | 45 | 3,7 |
>
> Find regressionslinjen og forudsig lungekapacitet ved 50 år.
>
> **Løsning:**
>
> **1. Beregn $\bar{x}$ og $\bar{y}$:**
> $$ \bar{x} = \frac{20+25+30+35+40+45}{6} = 32,5 $$
> $$ \bar{y} = \frac{4,5+4,8+4,4+4,2+3,9+3,7}{6} = 4,25 $$
>
> **2. Beregn $\hat{\beta}_1$:**
> Tæller: $\sum (x_i - \bar{x})(y_i - \bar{y}) = (-12,5)(0,25) + (-7,5)(0,55) + (-2,5)(0,15) + (2,5)(-0,05) + (7,5)(-0,35) + (12,5)(-0,55)$
> $$ = -3,125 - 4,125 - 0,375 - 0,125 - 2,625 - 6,875 = -17,25 $$
>
> Nævner: $\sum (x_i - \bar{x})^2 = 156,25 + 56,25 + 6,25 + 6,25 + 56,25 + 156,25 = 437,5 $
>
> $$ \hat{\beta}_1 = \frac{-17,25}{437,5} = -0,0394 $$
>
> **3. Beregn $\hat{\beta}_0$:**
> $$ \hat{\beta}_0 = 4,25 - (-0,0394 \cdot 32,5) = 4,25 + 1,281 = 5,531 $$
>
> **4. Regressionslinje:**
> $$ \hat{y} = 5,53 - 0,0394 \cdot \text{alder} $$
>
> **5. Forudsig ved 50 år:**
> $$ \hat{y}(50) = 5,53 - 0,0394 \cdot 50 = 5,53 - 1,97 = 3,56 \text{ L} $$
>
> Lungekapaciteten falder med ca. $0,04$ L pr. år.

---

## 02 $R^2$ — forklaringsgrad

$R^2$ fortæller hvor stor en andel af variationen i $y$ der forklares af $x$.

$$
R^2 = 1 - \frac{SS_{\text{res}}}{SS_{\text{total}}}
$$

- $SS_{\text{total}} = \sum (y_i - \bar{y})^2$ (total variation)
- $SS_{\text{res}} = \sum (y_i - \hat{y}_i)^2$ (variation tilbage efter regression)

**Fortolkning:**
- $R^2 = 0,8$ → $80\%$ af variationen i $y$ forklares af $x$
- $R^2 = 0$ → ingen lineær sammenhæng
- $R^2 = 1$ → perfekt lineær sammenhæng (alle punkter ligger på linjen)

> [!WARNING] R² fælder
> - Høj $R^2$ betyder **ikke** kausalitet (is-salg og drukneulykker er korreleret)
> - $R^2$ **stiger altid** når du tilføjer flere variable — selv irrelevante!
> - Brug **justeret $R^2$** når du sammenligner modeller med forskelligt antal variable

---

## 03 Adjusted $R^2$

Straf for at tilføje unødige variable:

$$
R^2_{\text{adj}} = 1 - \frac{SS_{\text{res}} / (n-p-1)}{SS_{\text{total}} / (n-1)}
$$

hvor $p$ = antal predictors. Adjusted $R^2$ **falder** hvis du tilføjer en irrelevant variabel.

---

## 04 Multiple Linear Regression (MLR)

Flere predictors: $y = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \dots + \beta_p x_p + \varepsilon$

### Fortolkning af koefficienter

Hver $\beta_j$ fortæller: "Hvor meget ændrer $y$ sig når $x_j$ stiger med 1, **mens alle andre variable holdes konstante**."

> [!question]- Blodtryk som funktion af alder og BMI
> En MLR giver:
> $$ \text{BT} = 80 + 0,5 \cdot \text{alder} + 2,0 \cdot \text{BMI} $$
>
> (a) Hvad er det forventede blodtryk for en 50-årig med BMI = 25?
> (b) Hvor meget stiger blodtrykket pr. ekstra BMI-enhed?
>
> **Løsning:**
>
> (a) $\text{BT} = 80 + 0,5 \cdot 50 + 2,0 \cdot 25 = 80 + 25 + 50 = 155 \text{ mmHg}$
>
> (b) Blodtrykket stiger med $2,0$ mmHg pr. BMI-enhed **når alder holdes konstant**.

---

## 05 Residualanalyse

For at OLS skal være pålidelig, skal residualerne opfylde:

| Antagelse | Tjek | Problemer hvis brudt |
|:---|:---|:---|
| **Linearitet** | Residualer vs. fitted plot | Mønster → mangler ikke-lineær term |
| **Homoskedasticitet** | Spredning er konstant | Tragtform → log-transformér $y$ |
| **Normalitet** | QQ-plot, histogram | Skæv → bootstrap eller transformation |
| **Uafhængighed** | Tidsrækkefølge | Autokorrelation → tidsrækkemodel |

---

## 06 Overfitting i regression

Samme problem som beslutningstræer: For mange predictors giver høj $R^2$ men dårlig generalisering.

| Problem | Symptom | Løsning |
|:---|:---|:---|
| **Underfitting** | Lav $R^2$, mønster i residualer | Tilføj relevante variable |
| **Overfitting** | Høj $R^2$, lav $R^2_{\text{adj}}$, dårlig prediction | Fjern variable, brug $R^2_{\text{adj}}$ |

Se også: [[Statistik]] for hypotesetest, [[Decision Trees & Random Forests]] for ikke-lineære modeller.
