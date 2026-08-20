2026-06-01

*Introduction to Machine Learning — Logistic Regression for classification.*

> [!tip] For en 5-årig: Ja/nej gætteleg
> Forestil dig at du skal gætte om en bil er **europæisk** eller **amerikansk**. Du må kun kende to ting: hvor mange kilometer den kører på literen (mpg) og hvor stor motoren er (disp).
>
> Logistic regression er som at sætte point: store motorer + lav km/l → point i "amerikansk"-bøtten. Små motorer + høj km/l → point i "europæisk"-bøtten.
>
> Til sidst siger du: "Jeg er 73% sikker på at den er europæisk!" Det er logistic regression — den giver sandsynligheder, ikke bare et gæt.

> [!INFO] Course info
> BMB547, Richard Röttger, 2026. Slides based on https://evol.bio.lmu.de/_statgen/Rcourse/ws1617/

---

## Hvad er Machine Learning?

ML handler om at lære mønstre fra data uden at blive eksplicit programmeret.

### Typer af opgaver

| Opgave | Beskrivelse | Eksempel |
| :--- | :--- | :--- |
| **Classification** | Forudsige en kategori | Er dette billede en kat eller en hund? |
| **Regression** | Forudsige en kontinuert værdi | Hvad bliver husprisen? |
| **Transcription** | Konverter input til output | Tal-til-tekst |
| **Anomaly Detection** | Find afvigelser | Svindel i banktransaktioner |
| **Denoising** | Fjern støj | Rensning af billeder |
| **Imputation** | Udfyld manglende værdier | Gene expression data |

---

## Logistic Regression

Logistic regression bruges til **binær klassifikation** (ja/nej, A/B, syg/rask).

### Fra lineær regression til klassifikation

Lineær regression: $y = \beta_0 + \beta_1 x$ — forudsiger kontinuerte værdier.

Logistic regression: Forudsiger **sandsynligheder** i $[0, 1]$ ved at bruge sigmoid-funktionen:

$$ P(y=1|x) = \frac{1}{1 + e^{-(\beta_0 + \beta_1 x)}} $$

Sigmoid-funktionen:
- $z \to -\infty$: $P \to 0$
- $z = 0$: $P = 0,5$
- $z \to \infty$: $P \to 1$

### Fortolkning

Odds: $\frac{P}{1-P} = e^{\beta_0 + \beta_1 x}$

Log-odds: $\ln\left(\frac{P}{1-P}\right) = \beta_0 + \beta_1 x$

Hver enhed ændring i $x$ ændrer log-odds med $\beta_1$.

---

## Eksempel: Klassifikation af biler

> [!QUESTION] Logistisk regression med to features
> En logistisk regression til at forudsige om en bil er **Europæisk (1)** eller **Amerikansk (0)** har følgende koefficienter:
>
> | Feature | Koefficient |
> | :--- | :--- |
> | Intercept | $8$ |
> | `disp` (slagvolumen, in³) | $-0,05$ |
> | `mpg` (miles per gallon) | $-0,1$ |
>
> Hvad er den forventede klasse for en bil med `disp = 100` og `mpg = 20`?

> [!NOTE] Løsning
> **1. Beregn log-odds ($z$):**
> $$ z = \beta_0 + \beta_1 \cdot \text{disp} + \beta_2 \cdot \text{mpg} $$
> $$ z = 8 + (-0,05 \cdot 100) + (-0,1 \cdot 20) = 8 - 5 - 2 = 1 $$
>
> **2. Beregn sandsynlighed via sigmoid:**
> $$ P(\text{Europæisk}) = \frac{1}{1 + e^{-z}} = \frac{1}{1 + e^{-1}} \approx 0,731 $$
>
> **3. Fortolkning:**
> $P \approx 0,731 > 0,5$ → bilen klassificeres som **Europæisk (1)**.
>
> Log-odds $= 1$ betyder, at odds for Europæisk er $e^{1} \approx 2,72$ gange højere end Amerikansk.

---

Se også: [[Decision Trees \& Random Forests]] for ikke-lineære klassifikationsmodeller.

## Fordele og ulemper

**Fordele:**
- Let at fortolke
- Bygger på lineær regression (kendt grundlag)
- Giver sandsynligheder, ikke kun labels

**Ulemper:**
- Kan kun lære **lineære beslutningsgrænser**
- Fungerer dårligt på komplekse ikke-lineære sammenhænge
- Risiko for **underfitting** hvis data er ikke-lineært

> [!question]- Hvad er underfitting i logistisk regression?
> Underfitting opstår når modellen er **for simpel** til at fange datas struktur.
>
> **Eksempel:** Klassifikation af celletilstand baseret på gene expression:
> ```
> Sand beslutningsgrænse:     Logistisk regressions grænse:
>     x  x  o  o                  x  x  o  o
>     x  o  o  o                  x  o  o  o
>     o  o  x  x                  o  o  x  x   ← forkert!
>     o  x  x  x                  o  x  x  x
> ```
> Logistic regression tvinger en **lige linje** gennem data. Hvis den sande grænse er buet, vil modellen **underfitte** — den rammer konsekvent forkert i de buede områder.
>
> **Kendetegn:** Høj bias, lav varians. Modellen præsterer dårligt på **både** trænings- og testdata.
>
> **Løsning:** Tilføj ikke-lineære features (polynomier, interaktioner) eller skift til en ikke-lineær model som [[Decision Trees \& Random Forests]].

> [!TIP] Næste skridt
> Når logistisk regression er for simpel, prøv [[Decision Trees \& Random Forests]] som kan lære ikke-lineære beslutningsgrænser.

Se også: [[Ordinære differentialligninger]] for andre matematiske modeller i biologi.
