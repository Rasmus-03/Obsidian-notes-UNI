*Eksamensguide til BMB547 — genkend problemtypen og vælg den rigtige metode. 3 timers skriftlig MCQ, alle noter tilladt (downloadet dagen før).*

#eksamen #BMB547 #guide

---

## Sådan bruger du denne guide

1. Læs MCQ-opgaven — find nøgleordene i fed
2. Slå op i guiden efter mønsteret
3. Vælg formlen/metoden — alle formler står i [[Formelsamling – Matematik & Data Science]]

---

## 01 Eksponentiel vækst/henfald

**Nøgleord:** *vækst proportional med mængde* • *fordoblingstid* • *halveringstid* • *radioaktivt henfald* • *bakterievækst* • *drug clearance*

**Kendetegn:** Ændringshastigheden afhænger af **hvor meget der er lige nu**

| Scenario | ODE | Løsning |
|:---|:---|:---|
| Vækst ($+k$) | $\frac{dN}{dt} = kN$ | $N(t) = N_0 e^{kt}$ |
| Henfald ($-k$) | $\frac{dN}{dt} = -kN$ | $N(t) = N_0 e^{-kt}$ |
| Fordoblingstid | $t_2 = \frac{\ln 2}{k}$ | — |
| Halveringstid | $t_{1/2} = \frac{\ln 2}{k}$ | — |

**Fælde:** $t_{1/2}$ og $t_2$ har **samme formel** — forskellen er om $k$ er positiv (vækst) eller negativ (henfald).

Se: [[Ordinære differentialligninger]]

---

## 02 Indlæggelse + clearance (panserformel)

**Nøgleord:** *infusion* • *indlæggelse* • *syntese* • *turnover* • *produktion minus nedbrydning*

**Kendetegn:** Konstant input $s$, proportionalt output $-k \cdot y$

$$
\frac{dy}{dt} = s - k y \quad\Rightarrow\quad y(t) = \frac{s}{k} + \left(y_0 - \frac{s}{k}\right) e^{-kt}
$$

**Steady state:** $y^* = \frac{s}{k}$ (når $t \to \infty$)

**Anvendelser:** mRNA-nedbrydning, protein-turnover, drug infusion, metabolitsystemer

**Fælde:** Glemmer ikke at startkoncentrationen $y_0$ påvirker løsningen — steady state er den samme uanset $y_0$!

Se: [[Panserformel til 1. ordens lineære ODEer]]

---

## 03 System af ODE'er

**Nøgleord:** *compartments* • *flux* • *metabolit-netværk* • *to rum*

**Kendetegn:** Flere variable der påvirker hinanden (fx $S_1$ og $S_2$)

**Steady state:** Sæt ALLE afledte = 0, løs ligningssystemet

**Egenværdier:** $A\pi = \pi$ for Markov-kæder. Negative $\lambda$ = stabilt system.

Se: [[Steady State Analyse]], [[Markov State Models (MSM)]]

---

## 04 Numerisk løsning af ODE

**Nøgleord:** *numerisk* • *approksimation* • *Euler* • *Heun* • *tidsskridt $\tau$*

**Kendetegn:** Opgaven spørger "beregn $y(2)$ med $\tau = 1$" — **ikke** den analytiske løsning

| Metode | Formel | Præcision |
|:---|:---|:---|
| Euler | $y_{i+1} = y_i + \tau \cdot f(t_i, y_i)$ | Lav ($O(\tau)$) |
| Heun | $k_0 = f(t_i, y_i),\; k_1 = f(t_{i+1}, y_i + \tau k_0),\; y_{i+1} = y_i + \frac{\tau}{2}(k_0 + k_1)$ | Medium ($O(\tau^2)$) |

**Fælde:** Jo større $\tau$, jo større fejl. Tjek stabilitet: $\tau < 2/|k|$ for $y' = -ky$.

Se: [[Numeriske Metoder og Egenværdier]]

---

## 05 Integration (areal under kurve)

**Nøgleord:** *areal under kurven* • *AUC* • *Riemann-sum* • *trapezmetoden* • *cumulative effect*

**MCQ-fokus:** Genkend hvilken sum der er venstre/højre/trapez, og hvad der sker når $n$ øges

| Metode | Formel | Forhold til sandt integral |
|:---|:---|:---|
| Venstre sum | $\sum f(x_i)\Delta x$ | Overestimerer hvis $f$ er aftagende |
| Højre sum | $\sum f(x_{i+1})\Delta x$ | Overestimerer hvis $f$ er voksende |
| Trapez | $\sum \frac{f(x_i)+f(x_{i+1})}{2}\Delta x$ | Tættest på (gennemsnit af V+H) |

Se: [[integration]]

---

## 06 Substitution

**Nøgleord:** *indre funktion* • *kædereglen baglæns* • *sammensat funktion*

**Genkend mønsteret:** $\int f(g(x)) \cdot g'(x) \, dx$

1. Sæt $u = g(x)$ (den indre funktion)
2. $du = g'(x) dx$
3. Integrér $\int f(u) du$
4. Sæt $u$ tilbage

**Tip:** Hvis integralet har en funktion **og** dens afledte (pånær en konstant), så brug substitution.

Se: [[substitution]]

---

## 07 Partiel integration

**Nøgleord:** *produkt af to funktioner* • $x \cdot e^x$ • $x \cdot \sin x$ • $\ln x$

**Strategi — vælg $u$ efter prioritet:**
1. $\ln x$ (bliver simplere ved differentiation)
2. $x^n$ (bliver til $n x^{n-1}$ → forsvinder efter nok skridt)
3. $e^x$, $\sin x$, $\cos x$ (går i ring — brug cirkulært integral)

$$
\int u \cdot v' = u \cdot v - \int u' \cdot v
$$

**Fælde:** Glemmer ikke at vælge $u$ rigtigt. $\int x \cdot e^x dx$: $u = x$, $v' = e^x$.

Se: [[partiel_integration]]

---

## 08 Logistisk regression

**Nøgleord:** *klassifikation* • *sandsynlighed* • *sigmoid* • *binær*

**Genkend:** Output skal være en sandsynlighed $P \in [0, 1]$

| Spørgsmål | Svar |
|:---|:---|
| Hvad er $P(y=1)$ givet $x$? | $P = \frac{1}{1 + e^{-(\beta_0 + \beta_1 x)}}$ |
| Hvad er log-odds? | $\ln\left(\frac{P}{1-P}\right) = \beta_0 + \beta_1 x$ |
| Hvad betyder $\beta_1$? | Én enheds ændring i $x$ ændrer log-odds med $\beta_1$ |
| Grænse for klassifikation? | $P > 0,5$ → klasse 1 |

**Fælde:** Logistisk regression giver **sandsynligheder**, ikke bare labels. Den kan kun lære **lineære** grænser.

Se: [[Logistic Regression]]

---

## 09 Beslutningstræer

**Nøgleord:** *split* • *Gini* • *entropi* • *Information Gain* • *overfitting* • *Random Forest*

| Begreb | Formel | Fortolkning |
|:---|:---|:---|
| Gini impurity | $G = 1 - \sum p_k^2$ | $0$ = ren, høj = rodet |
| Entropi | $H = -\sum p_k \log_2 p_k$ | $0$ = sikker, høj = usikker |
| Weighted Gini | $G_{\text{split}} = \frac{n_L}{n} G_L + \frac{n_R}{n} G_R$ | Lavest vinder |
| Information Gain | $IG = H_{\text{parent}} - G_{\text{split}}$ | Højest vinder |

**Overfitting:** Dybt træ → perfekt på træning, dårlig på test  
**Underfitting:** Lavt træ → dårlig på både træning og test  
**Løsning:** Pruning, Random Forest, `min_samples_leaf`

Se: [[Decision Trees & Random Forests]], [[Gini Impurity]], [[Entropy og Information Gain]]

---

## 10 Hagen–Poiseuille (væskestrøm)

**Nøgleord:** *blodgennemstrømning* • *flow* • *rør* • *viskositet* • *trykforskel*

$$
Q = \frac{\pi R^4 \Delta P}{8\eta L}
$$

**Husk:** $Q \propto R^4$ — fordobling af radius → $16\times$ mere flow!

Se: [[Applications of Integration in Life Science]]

---

## 11 Gompertz (tumorvækst)

**Nøgleord:** *tumor* • *vækst der aftager* • *asymptotisk*

$$
N(t) = N_0 \cdot e^{\frac{\alpha}{\beta}(1 - e^{-\beta t})}
$$

- $N_0$ = startstørrelse
- $\alpha$ = initial vækstrate
- $\beta$ = væksthæmning
- $N_\infty = N_0 \cdot e^{\alpha/\beta}$ = maksimal størrelse

Se: [[Applications of Integration in Life Science]]

---

## 12 Markov-kæder

**Nøgleord:** *overgangsmatrix* • *stationær fordeling* • *kolonne-stokastisk* • *$\pi$*

**Kendetegn:** Fremtiden afhænger **kun** af nutiden

| Spørgsmål | Svar |
|:---|:---|
| Hvad betyder $A_{ij}$? | $P(\text{gå fra } j \text{ til } i)$ |
| Hvad betyder $\sum_i A_{ij} = 1$? | Kolonne-stokastisk — hver kolonne summer til 1 |
| Hvordan findes $\pi$? | Løs $(A - I)\pi = 0$ med $\sum \pi_i = 1$ |

Se: [[Markov State Models (MSM)]]

---

## 13 Billedanalyse

**Nøgleord:** *pixel* • *gråtone* • *segmentering* • *tærskel* • *filter*

**Pixel-værdi:** $0$ = sort, $255$ = hvid (8-bit)

**Lambert-Beer:** $A = \varepsilon L c$ (absorbans = koncentration × længde × ekstinktionskoefficient)

Se: [[Image Analysis BMB 547]]

---

## 14 Statistik — hypotesetest

**Nøgleord:** *t-test* • *chi²* • *ANOVA* • *p-værdi* • *signifikans* • *konfidensinterval*

**Kendetegn:** Skal du afgøre om to grupper er forskellige?

| Test | Hvornår? | Formel |
|:---|:---|:---|
| t-test (to grupper) | Sammenlign middelværdi af 2 grupper | $t = \frac{\bar{x}_1 - \bar{x}_2}{s_p \sqrt{1/n_1 + 1/n_2}}$ |
| Paired t-test | Før/efter måling på samme prøve | $t = \frac{\bar{d}}{s_d/\sqrt{n}}$ |
| Chi² | Tælle-data, kategoriske variable | $\chi^2 = \sum (O-E)^2/E$ |
| ANOVA | 3+ grupper | $F = MS_b/MS_w$ |

**Husk:** $p < 0,05$ → signifikant. $p > 0,05$ → ikke signifikant (ikke "bevist at H₀ er sand").

**Fælde:** Gentagne t-test på 3+ grupper → $p$ bliver upålidelig. Brug ANOVA + post-hoc.

Se: [[Statistik]]

---

## 15 Lineær regression

**Nøgleord:** *regression* • *SLR* • *MLR* • *$R^2$* • *mindste kvadrater* • *OLS*

**Kendetegn:** Forudsige en kontinuert værdi $y$ fra én eller flere $x$'er

| Begreb | Formel/forklaring |
|:---|:---|
| SLR | $y = \beta_0 + \beta_1 x$ |
| MLR | $y = \beta_0 + \beta_1 x_1 + \beta_2 x_2 + \dots$ |
| $R^2$ | Andel af variation forklaret af modellen |
| Adj. $R^2$ | $R^2$ straffet for antal predictors |

**Fortolkning $\beta_1$:** "Når $x$ stiger med 1, ændres $y$ med $\beta_1$ (mens andre variable holdes konstante)"

**Fælde:** Høj $R^2$ ≠ kausalitet. $R^2$ stiger altid med flere variable — brug adj. $R^2$!

Se: [[Lineær regression]]

---

## 16 PCA

**Nøgleord:** *dimensionsreduktion* • *PC1* • *PC2* • *egenværdi* • *loading* • *scree plot*

**Kendetegn:** Reducér mange variable til 2-3 nye komponenter

$C v_i = \lambda_i v_i$ — egenværdierne $\lambda_i$ fortæller hvor vigtig hver PC er.

**Scree plot:** Vælg PC'er før "knæet" hvor kurven flader ud.

**Fælde:** PCA kræver standardisering! Store tal dominerer ellers. PCA fanger kun lineære strukturer.

Se: [[PCA (Principal Component Analysis)]]

---

## 17 Fourier-transformation

**Nøgleord:** *frekvens* • *FFT* • *tidsdomæne* • *frekvensdomæne* • *Orbitrap*

**Kendetegn:** Signal over tid → hvilke frekvenser er der?

$\hat{f}(\omega) = \int f(t) e^{-i\omega t} dt$ — oversætter tid → frekvens.

**Anvendelse i BMB547:** Orbitrap massespektrometri — ioner svinger med frekvens $\propto 1/\sqrt{m/q}$, FFT giver massespektret.

**Fælde:** Aliasing hvis samplerate < $2 f_{\text{max}}$ (Nyquist). For lidt data → dårlig frekvensopløsning.

Se: [[Fourier-transformation]]

---

## 18 Diskret matematik

**Nøgleord:** *kombinatorik* • *fakultet* • *binomial* • *graf* • *træ*

**Kendetegn:** Tælle hvor mange måder, eller netværk af knuder/kanter

| Begreb | Formel |
|:---|:---|
| Fakultet | $n! = n \cdot (n-1) \cdot \dots \cdot 1$ |
| Kombination | $\binom{n}{k} = \frac{n!}{k!(n-k)!}$ |
| Binomialsandsynlighed | $P(X=k) = \binom{n}{k} p^k (1-p)^{n-k}$ |

**Graf:** $G = (V, E)$. Træ: $|E| = |V| - 1$.

Se: [[Diskret matematik]]

---

## 19 R-programmering

**Nøgleord:** *data.frame* • *dplyr* • *filter* • *mutate* • *ggplot* • *mean*

**Kendetegn:** Opgave med R-kode — hvad gør den? Eller: skriv R-kode til at...

**Husk dplyr-pipe:**
```r
data %>%
  filter(betingelse) %>%
  group_by(variabel) %>%
  summarise(gennemsnit = mean(værdi))
```

**Plot:** `plot(x, y)` (base) eller `ggplot(data, aes(x, y)) + geom_point()` (ggplot2)

**Læs data:** `read.csv("fil.csv")`

Se: [[R-programmering]]

---

## Hurtig reference: Hvilken metode?

| Hvis opgaven siger... | Så brug... |
|:---|:---|
| "vækst proportional med antal" | $dN/dt = kN$ → $N = N_0 e^{kt}$ |
| "indlæggelse med konstant rate + clearance" | $dy/dt = s - ky$ → panserformel |
| "areal under kurven" | Riemann-sum eller trapez |
| "beregn $y(2)$ med $\tau$" | Euler eller Heun |
| "klassifikation, sandsynlighed" | Logistisk regression (sigmoid) |
| "beslutningstræ, split-kvalitet" | Gini eller Information Gain |
| "flow i rør" | Hagen-Poiseuille $Q \propto R^4$ |
| "tumorvækst der aftager" | Gompertz |
| "overgangssandsynlighed, steady state" | Markov-kæde $A\pi = \pi$ |
| "sort/hvid billede, pixel" | 0-255 gråtoner |
| "celle i billede, find kanter" | Segmentering, filtrering |
| "sammenlign to grupper" | t-test |
| "sammenlign 3+ grupper" | ANOVA |
| "tælle-data, sygdom × genotype" | Chi²-test |
| "forudsig kontinuert værdi fra en variabel" | SLR ($y = \beta_0 + \beta_1 x$) |
| "forudsig fra flere variable" | MLR |
| "reducér 100 variable til 2" | PCA |
| "signal i tidsdomæne → frekvenser" | Fourier-transformation (FFT) |
| "hvor mange måder at vælge $k$ ud af $n$?" | Kombinatorik $\binom{n}{k}$ |
| "R-kode: data %>% filter()" | dplyr-pipe |

---

> [!tip] Eksamenstips
> - **3 timer, MCQ — brug tiden fornuftigt.** Svære spørgsmål kan springes over og tages til sidst
> - **Alle noter tilladt** — sørg for at have formelsamling + denne guide åben på computeren
> - **Ingen internet** — download dine noter dagen før
> - **Ingen AI** — men du må bruge dine egne noter frit
> - **MCQ-fælder:** Læs alle svarmuligheder. Ofte er 2-3 næsten rigtige — den **mest** præcise vinder
> - **Enheder tjek:** Passer enhederne? ($[Q] = \text{m}^3/\text{s}$, $[k] = \text{s}^{-1}$, etc.)
> - **Grænsetilfælde:** Hvad sker når $t \to \infty$? Når $k = 0$? Når $R \to 0$? Disse er klassiske MCQ-tricks