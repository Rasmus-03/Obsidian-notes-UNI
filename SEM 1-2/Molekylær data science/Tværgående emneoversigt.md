*Tværgående emneoversigt — de samme matematiske begreber dukker op igen og igen på tværs af fagets emner. Brug denne note til at se sammenhænge og genkende mønstre til eksamen.*

#tværgående #sammenhænge #eksamen

---

## Sådan bruger du denne note

Når du ser et matematisk begreb i en MCQ-opgave, slå det op her for at se **alle de steder** det optræder i pensum. Ofte testes samme begreb i flere kontekster.

---

## Eksponentialfunktionen $e^x$

| Hvor?                  | Hvordan?                                                                | Note                                            |
| :--------------------- | :---------------------------------------------------------------------- | :---------------------------------------------- |
| **ODE: vækst/henfald** | $y(t) = y_0 e^{kt}$ — løsning af $y' = ky$                              | [[Ordinære differentialligninger]]              |
| **Panserformel**       | $\mu(t) = e^{\int p\,dt}$ — integrerende faktor                         | [[Panserformel til 1. ordens lineære ODEer]]    |
| **Sigmoid**            | $P = \frac{1}{1 + e^{-z}}$ — logistisk regression                       | [[Logistic Regression]]                         |
| **Gompertz**           | $N(t) = N_0 e^{\frac{\alpha}{\beta}(1 - e^{-\beta t})}$ — tumorvækst    | [[Applications of Integration in Life Science]] |
| **Egenværdier**        | $c(t) = C_1 e^{\lambda_1 t} + C_2 e^{\lambda_2 t}$ — ODE-systemer       | [[Numeriske Metoder og Egenværdier]]            |
| **Normalfordeling**    | $f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{1}{2}(x-\mu)^2/\sigma^2}$ | [[Statistik]]                                   |

**MCQ-mønster:** Hvis du ser $e$ i en formel, er det ofte fordi noget **vokser/falder proportionalt med sig selv** eller fordi noget **skalerer** (sigmoid, normalfordeling).

---

## Logaritmen $\ln$, $\log$

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **Differentiering** | $\frac{d}{dx} \ln x = \frac{1}{x}$ | [[differentiering]] |
| **Integration (substitution)** | $\int \frac{1}{x} dx = \ln\|x\| + C$ | [[integration]] |
| **ODE-løsning** | $\ln\|y\| = kt + C$ → $y = y_0 e^{kt}$ | [[Ordinære differentialligninger]] |
| **Log-odds** | $\ln\left(\frac{P}{1-P}\right) = \beta_0 + \beta_1 x$ | [[Logistic Regression]] |
| **Entropi** | $H = -\sum p_k \log_2(p_k)$ | [[Entropy og Information Gain]] |
| **pH** | $\text{pH} = -\log[H^+]$ | (Kemi-formelsamling) |
| **Arrhenius** | $\ln k = \ln A - \frac{E_a}{RT}$ | (Kemi-formelsamling) |
| **Halveringstid** | $t_{1/2} = \frac{\ln 2}{k}$ | [[Ordinære differentialligninger]] |
| **Frekvensopløsning** | $\Delta f = \frac{f_s}{N}$ (ikke log, men log bruges til dB) | [[Fourier-transformation]] |

**MCQ-mønster:** Logaritmen dukker op når noget skal **lineariseres** (ODE-løsning, log-odds) eller **skaleres** (entropi, pH).

---

## Differentiation $\frac{d}{dt}$

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **Hældning** | $f'(x)$ = tangentens hældning | [[differentiering]] |
| **ODE** | $\frac{dy}{dt}$ = ændring over tid | [[Ordinære differentialligninger]] |
| **Kædereglen** | $\frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx}$ | [[kædereglen]] |
| **Produktreglen** | $(fg)' = f'g + fg'$ | [[differentiering]] |
| **Panserformel** | $(\mu y)' = \mu' y + \mu y'$ | [[Panserformel til 1. ordens lineære ODEer]] |
| **Hagen-Poiseuille** | $v(r) = -\frac{\Delta P}{4\eta L} r^2 + C$ (via integration) | [[Applications of Integration in Life Science]] |
| **Øjeblikshastighed** | $v(t) = \frac{dx}{dt}$ | (Fysik-formelsamling) |

**MCQ-mønster:** Differentiation = **ændringshastighed**. Hvis en opgave spørger "hvor hurtigt ændrer Y sig?", led efter $\frac{dY}{dt}$.

---

## Integration $\int$

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **Areal under kurve** | Riemann-sum, trapezmetoden | [[integration]] |
| **AUC (lægemiddel)** | $\int_0^T C(t) dt$ | [[integration]] |
| **ODE-løsning** | $\int \frac{dy}{y} = \int k\,dt$ | [[Ordinære differentialligninger]] |
| **Hagen-Poiseuille** | $Q = \int_0^R v(r) \cdot 2\pi r \, dr$ | [[Applications of Integration in Life Science]] |
| **Substitution** | $\int f(g(x))g'(x)dx = \int f(u)du$ | [[substitution]] |
| **Partiel integration** | $\int u v' = uv - \int u' v$ | [[partiel_integration]] |
| **Fourier** | $\hat{f}(\omega) = \int f(t) e^{-i\omega t} dt$ | [[Fourier-transformation]] |
| **Normalfordeling** | $\int_{-\infty}^{\infty} f(x) dx = 1$ | [[Statistik]] |

**MCQ-mønster:** Integration = **akkumulation** / **areal**. "Cumulative effect", "total amount", "areal under kurven" → integration.

---

## Summation $\sum$

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **Riemann-sum** | $\sum f(x_i) \Delta x$ | [[integration]] |
| **Gini impurity** | $G = 1 - \sum p_k^2$ | [[Gini Impurity]] |
| **Entropi** | $H = -\sum p_k \log_2 p_k$ | [[Entropy og Information Gain]] |
| **Information Gain** | $IG = H_{\text{parent}} - \sum \frac{n_i}{n} H_i$ | [[Entropy og Information Gain]] |
| **Middelværdi** | $\bar{x} = \frac{1}{n} \sum x_i$ | [[Statistik]] |
| **Varians** | $s^2 = \frac{1}{n-1} \sum (x_i - \bar{x})^2$ | [[Statistik]] |
| **Chi²** | $\chi^2 = \sum (O-E)^2/E$ | [[Statistik]] |
| **Overgangsmatrix** | $\sum_i a_{ij} = 1$ | [[Markov State Models (MSM)]] |
| **DFT** | $\hat{f}_k = \sum f_n e^{-2\pi i k n / N}$ | [[Fourier-transformation]] |
| **OLS** | $\min \sum (y_i - \hat{y}_i)^2$ | [[Lineær regression]] |

**MCQ-mønster:** Summation = **samling af led**. Genkend mønsteret: $p_k^2$ → Gini, $p_k \log p_k$ → entropi, $(O-E)^2/E$ → chi².

---

## Egenværdier $\lambda$ og egenvektorer $v$

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **ODE-systemer** | $c(t) = C_1 e^{\lambda_1 t} v_1 + C_2 e^{\lambda_2 t} v_2$ | [[Numeriske Metoder og Egenværdier]] |
| **PCA** | $C v_i = \lambda_i v_i$, store $\lambda$ = vigtige komponenter | [[PCA (Principal Component Analysis)]] |
| **Markov-kæder** | $A\pi = \pi$, $\lambda = 1$ er stationær fordeling | [[Markov State Models (MSM)]] |
| **Stabilitet** | $\lambda < 0$ → systemet falder til ro | [[Steady State Analyse]] |

**MCQ-mønster:** Egenværdier = **systemets opførsel**. $\lambda < 0$ = stabilt/falder til ro. $\lambda > 0$ = vokser/ustabilt. Største $\lambda$ i PCA = vigtigste dimension.

---

## Proportionel vækst $y' = k \cdot y$

Dette mønster er **det vigtigste** i kurset —  det dukker op i utallige varianter:

| Variant | ODE | Løsning | Anvendelse |
|:---|:---|:---|:---|
| Ren vækst | $y' = ky$ | $y = y_0 e^{kt}$ | Bakterievækst, tumor (simpel) |
| Ren henfald | $y' = -ky$ | $y = y_0 e^{-kt}$ | Drug clearance, radioaktivt |
| Ind + ud | $y' = s - ky$ | $y = \frac{s}{k} + (y_0 - \frac{s}{k})e^{-kt}$ | Infusion, mRNA, protein |
| System | $y' = Ay$ (matrix) | $y = \sum C_i e^{\lambda_i t} v_i$ | Metabolitter, compartments |

**MCQ-mønster:** Genkend **strukturen** — er der et konstant input $s$? Er der proportionalt output $-k y$? Hvis ja → panserformel. Hvis kun proportionalt → simpel eksponentiel.

---

## Sigmoid / S-kurver

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **Logistisk regression** | $P = \frac{1}{1 + e^{-(\beta_0 + \beta_1 x)}}$ | [[Logistic Regression]] |
| **Gompertz** | $N(t) = N_0 e^{\frac{\alpha}{\beta}(1 - e^{-\beta t})}$ | [[Applications of Integration in Life Science]] |
| **Logistisk vækst** | $N' = rN(1 - N/K)$ (ikke i pensum, men beslægtet) | — |

**Fælles træk:** Starter lavt → vokser → flader ud mod en asymptote.

---

## Brøk/andel $p_k$

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **Gini** | $G = 1 - \sum p_k^2$ | [[Gini Impurity]] |
| **Entropi** | $H = -\sum p_k \log_2 p_k$ | [[Entropy og Information Gain]] |
| **Sandsynlighed** | $P(y=1\|x)$ i logistisk regression | [[Logistic Regression]] |
| **Stationær fordeling** | $\pi_i$ = andel af tid i tilstand $i$ | [[Markov State Models (MSM)]] |
| **Binomial** | $P(X=k) = \binom{n}{k} p^k (1-p)^{n-k}$ | [[Diskret matematik]] |

**MCQ-mønster:** $p_k^2$ → Gini. $p_k \log p_k$ → entropi. $\frac{1}{1+e^{-z}}$ → sigmoid.

---

## Graf / netværk

| Hvor? | Hvordan? | Note |
|:---|:---|:---|
| **Beslutningstræ** | Træstruktur med split-noder og blade | [[Decision Trees & Random Forests]], [[OOB (Out-of-Bag) evaluering]] |
| **Dendrogram** | Hierarkisk clustering — træ af ligheder | [[Datavisualisering — Dendrogram]] |
| **Markov-kæde** | Rettet graf med overgangssandsynligheder | [[Markov State Models (MSM)]] |
| **Grafteori** | $G = (V, E)$, knuder og kanter | [[Diskret matematik]] |
| **Fylogeni** | Træ der viser evolutionære relationer | (nævnt i Cellulær udvikling) |

---

## Datavisualisering

| Værktøj | Formål | Note |
|:---|:---|:---|
| **Venn-diagram** | Overlap mellem mængder — fælles/unikke elementer | [[Datavisualisering — Venn-diagram]] |
| **Heatmap** | Parvise korrelationer eller ekspression i matrixform med farver | [[Datavisualisering — Heatmap]] |
| **Dendrogram** | Hierarkisk clustering — trædiagram med cut-off til klyngebestemmelse | [[Datavisualisering — Dendrogram]] |
| **PCA-plot** | Dimensionalitetsreduktion — 2D/3D projektion af højdimensionelle data | [[PCA (Principal Component Analysis)]] |

**MCQ-mønster:** Venn = mængdeoverlap. Heatmap = korrelation/ekspression. Dendrogram = clustering-afstande. PCA = variansforklaring.

---

## OOB (Out-of-Bag) evaluering

OOB bruges i Random Forest til at estimere generaliseringsfejl **uden et separat valideringssæt**:
- Hvert træ trænes på ~2/3 af data (bootstrap)
- De resterende ~1/3 (OOB) bruges til test af det pågældende træ
- OOB-fejl = gennemsnit på tværs af alle træer

Se [[OOB (Out-of-Bag) evaluering]] for detaljer og implementering.

---

## Overfitting/underfitting — på tværs af emner

| Emne | Hvordan overfitting opstår | Løsning |
|:---|:---|:---|
| **Beslutningstræer** | For dybt træ → memorerer data | Pruning, [[OOB (Out-of-Bag) evaluering\|OOB]], `min_samples_leaf` |
| **Lineær regression** | For mange predictors → $R^2$ høj, men dårlig prediktion | Brug adjusted $R^2$, fjern variable |
| **Logistisk regression** | Modsatte problem → **underfitting** (lineær grænse på ikke-lineære data) | Tilføj ikke-lineære features |
| **Generelt** | Kompleks model på lidt data | Enkel model → færre parametre |

---

## R-kode til eksamen

Alle R-kodeblokke samlet i én note — søg med Cmd+F:

[[R-kode til eksamen]] — Euler, Heun, panserformel, AUC, Markov, logistisk regression, decision tree, Random Forest/OOB, t-test, chi², ANOVA, lineær regression, PCA, FFT, kombinatorik, dplyr, Venn, heatmap, dendrogram.

---


