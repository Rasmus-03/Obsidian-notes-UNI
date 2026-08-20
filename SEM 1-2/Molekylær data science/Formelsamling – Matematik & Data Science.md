*Formelsamling til matematik og data science i molekylær biomedicin. Formlerne er grupperet efter emne og linker til noterne for uddybning.*

> [!tip] Eksamensguide
> Se [[Eksamensguide – BMB547]] for "hvilken metode bruger jeg hvornår?" med genkendelsesmønstre og MCQ-tips.
>
> Se [[Tværgående emneoversigt]] for hvordan de samme begreber dukker op på tværs af alle emner.

#matematik #formler #data-science

---

## 01 Differentiering
[[differentiering]]

### Potensreglen
$$
\frac{d}{dx} x^n = n \cdot x^{n-1}
$$

### Eksponentialfunktion
$$
\frac{d}{dx} e^x = e^x, \qquad \frac{d}{dx} e^{ax} = a e^{ax}
$$

### Logaritme
$$
\frac{d}{dx} \ln x = \frac{1}{x}
$$

### Produktreglen
$$
(f \cdot g)' = f' \cdot g + f \cdot g'
$$

Se eksempel: [[differentiering]]

### Kædereglen
$$
(f(g(x)))' = f'(g(x)) \cdot g'(x)
$$

Se eksempel: [[kædereglen]]

---

## 02 Integration
[[integration]]

### Riemann-sum (venstre)
$$
\sum_{i=0}^{n-1} f(x_i) \cdot \Delta x
$$

### Riemann-sum (højre)
$$
\sum_{i=1}^{n} f(x_i) \cdot \Delta x
$$

### Trapezmetoden
$$
\sum_{i=0}^{n-1} \frac{f(x_i) + f(x_{i+1})}{2} \cdot \Delta x
$$

### Substitution
$$
\int f(g(x)) \cdot g'(x) \, dx = \int f(u) \, du \quad \text{(hvor } u = g(x)\text{)}
$$

Se eksempel: [[substitution]]

### Partiel integration
$$
\int u \cdot v' \, dx = u \cdot v - \int u' \cdot v \, dx
$$

Se eksempel: [[partiel_integration]]

---

## 03 Differentialligninger (ODE)
[[Ordinære differentialligninger]]

### Eksponentiel vækst/henfald
$$
\frac{dy}{dt} = k y \quad\Rightarrow\quad y(t) = y_0 e^{kt}
$$

Se eksempel: [[Ordinære differentialligninger]]

### Panserformel (integrerende faktor)
$$
y' + p(t)y = q(t) \quad\Rightarrow\quad \mu(t) = e^{\int p(t)\,dt}, \quad (\mu y)' = \mu q
$$

Se eksempel: [[Panserformel til 1. ordens lineære ODEer]]

### Michaelis-Menten-system
$$
\frac{d[S]}{dt} = -k_1[E][S] + k_{-1}[ES]
$$
$$
\frac{d[ES]}{dt} = k_1[E][S] - (k_{-1} + k_2)[ES]
$$
$$
\frac{d[P]}{dt} = k_2[ES]
$$

Se [[Ordinære differentialligninger]] for uddybning.

---

## 04 Steady State
[[Steady State Analyse]]

### Definition
$$
\frac{dS}{dt} = 0
$$

### Metabolitsystem
$$
\frac{dS_1}{dt} = v_0 - S_1(k_1 + k_2) + S_2 k_{-2}
$$
$$
S_1^* = \frac{v_0 + S_2^* \cdot k_{-2}}{k_1 + k_2}
$$

### mRNA steady state
$$
\frac{dM}{dt} = s - kM \quad\Rightarrow\quad M^* = \frac{s}{k}
$$

---

## 05 Numeriske Metoder
[[Numeriske Metoder og Egenværdier]]

### Eulers metode
$$
c_{i+1} = c_i + \tau \cdot f(t_i, c_i)
$$

### Heuns metode
$$
k_0 = f(t_i, c_i), \quad k_1 = f(t_{i+1}, c_i + \tau k_0)
$$
$$
c_{i+1} = c_i + \frac{\tau}{2}(k_0 + k_1)
$$

### Egenværdiløsning (ODE-system)
$$
c(t) = C_1 e^{\lambda_1 t} \vec{v}_1 + C_2 e^{\lambda_2 t} \vec{v}_2
$$

---

## 06 Markov State Models
[[Markov State Models (MSM)]]

### Overgangsmatrix (kolonne-stokastisk)
$$
\sum_{i} a_{ij} = 1, \quad A_{ij} = P(X_{t+1}=i \mid X_t=j)
$$

### Stationær fordeling
$$
A\pi = \pi, \quad \sum_i \pi_i = 1
$$

---

## 07 Anvendelser i Biologi
[[Applications of Integration in Life Science]]

### Hagen–Poiseuille (blodgennemstrømning)
$$
Q = \frac{\pi R^4 \Delta P}{8\eta L}
$$

### Gompertz (tumorvækst)
$$
N(t) = N_0 \cdot e^{\frac{\alpha}{\beta}(1 - e^{-\beta t})}
$$

### Maksimal tumorstørrelse
$$
N_\infty = N_0 \cdot e^{\alpha/\beta}
$$

---

## 08 Logistisk Regression
[[Logistic Regression]]

### Sigmoid-funktionen
$$
P(y=1|x) = \frac{1}{1 + e^{-(\beta_0 + \beta_1 x)}}
$$

### Log-odds
$$
\ln\left(\frac{P}{1-P}\right) = \beta_0 + \beta_1 x
$$

---

## 09 Beslutningstræer
[[Decision Trees & Random Forests]]

### Gini impurity
$$
G = 1 - \sum_{k=1}^{K} p_k^2
$$

### Weighted average Gini (split)
$$
G_{\text{split}} = \frac{n_{\text{venstre}}}{n_{\text{total}}} G_{\text{venstre}} + \frac{n_{\text{højre}}}{n_{\text{total}}} G_{\text{højre}}
$$

### Entropi
$$
H = -\sum_{k=1}^{K} p_k \log_2(p_k)
$$

### Information Gain
$$
IG = H_{\text{parent}} - \left( \frac{n_{\text{venstre}}}{n_{\text{total}}} H_{\text{venstre}} + \frac{n_{\text{højre}}}{n_{\text{total}}} H_{\text{højre}} \right)
$$

Se også: [[Gini Impurity]], [[Entropy og Information Gain]], [[Kontinuerte vs kategoriske variable i beslutningstræer]], [[OOB (Out-of-Bag) evaluering]]

---

## 10 Billedanalyse
[[Image Analysis BMB 547]]

### Lambert–Beer (absorbans)
$$
A = \varepsilon L c
$$

---

## 11 Statistik
[[Statistik]]

### Middelværdi
$$
\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i
$$

### Standardafvigelse
$$
s = \sqrt{\frac{1}{n-1} \sum (x_i - \bar{x})^2}
$$

### Konfidensinterval ($95\%$)
$$
\bar{x} \pm t_{0,05,\; df} \cdot \frac{s}{\sqrt{n}}
$$

### t-test (to uafhængige grupper)
$$
t = \frac{\bar{x}_1 - \bar{x}_2}{s_p \sqrt{1/n_1 + 1/n_2}}
$$

### Chi²-test
$$
\chi^2 = \sum \frac{(O - E)^2}{E}
$$

### ANOVA
$$
F = \frac{MS_{\text{mellem}}}{MS_{\text{indenfor}}}
$$

---

## 12 Lineær Regression
[[Lineær regression]]

### SLR
$$
y_i = \beta_0 + \beta_1 x_i + \varepsilon_i
$$

### OLS hældning
$$
\hat{\beta}_1 = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sum (x_i - \bar{x})^2}
$$

### $R^2$
$$
R^2 = 1 - \frac{SS_{\text{res}}}{SS_{\text{total}}}
$$

### Adjusted $R^2$
$$
R^2_{\text{adj}} = 1 - \frac{SS_{\text{res}}/(n-p-1)}{SS_{\text{total}}/(n-1)}
$$

---

## 13 PCA
[[PCA (Principal Component Analysis)]]

### Kovariansmatrix
$$
C = \frac{1}{n-1} X^T X
$$

### Egenværdidekomposition
$$
C v_i = \lambda_i v_i
$$

### Forklaret varians
$$
\text{Andel}_i = \frac{\lambda_i}{\sum \lambda_j}
$$

---

## 14 Fourier-transformation
[[Fourier-transformation]]

### Fourier-transform (kontinuert)
$$
\hat{f}(\omega) = \int_{-\infty}^{\infty} f(t) e^{-i\omega t} \, dt
$$

### DFT (diskret)
$$
\hat{f}_k = \sum_{n=0}^{N-1} f_n e^{-2\pi i k n / N}
$$

### Orbitrap-frekvens
$$
f_{OT} = \frac{1}{2\pi} \sqrt{\frac{q}{m} k_{OT}}
$$

---

## 15 Diskret Matematik
[[Diskret matematik]]

### Fakultet
$$
n! = n \cdot (n-1) \cdot \dots \cdot 1
$$

### Permutation
$$
P(n,k) = \frac{n!}{(n-k)!}
$$

### Kombination
$$
\binom{n}{k} = \frac{n!}{k!(n-k)!}
$$

### Binomialfordeling
$$
P(X=k) = \binom{n}{k} p^k (1-p)^{n-k}
$$

---

## 16 R-programmering
[[R-programmering]]

### dplyr-pipe
```r
data %>%
  filter(betingelse) %>%
  group_by(variabel) %>%
  summarise(gennemsnit = mean(værdi))
```

---

## 17 Datavisualisering
[[Datavisualisering — Venn-diagram]] • [[Datavisualisering — Heatmap]] • [[Datavisualisering — Dendrogram]]

### Venn-diagram (mængdeoverlap)
| Operation | Symbol | Formel |
|:---|:---|:---|
| Forening | $A \cup B$ | $|A| + |B| - |A \cap B|$ |
| Fællesmængde | $A \cap B$ | Elementer i både A og B |
| Disjunkt | $A \cap B = \emptyset$ | Ingen overlap |

### Heatmap (korrelationsmatrix)
$$
\text{cor}(X,Y) = \frac{\sum (x_i - \bar{x})(y_i - \bar{y})}{\sqrt{\sum (x_i - \bar{x})^2 \sum (y_i - \bar{y})^2}}
$$

Se [[Lineær regression]] for Pearson-korrelation.

### Dendrogram (hierarkisk clustering)

**Euklidisk distance:**
$$
d(x,y) = \sqrt{\sum_{i=1}^{n} (x_i - y_i)^2}
$$

**Ward's linkage (minimal variansstigning):**
$$
\Delta(A,B) = \frac{|A| \cdot |B|}{|A| + |B|} \cdot \|\mu_A - \mu_B\|^2
$$

---

## 18 OOB (Out-of-Bag)
[[OOB (Out-of-Bag) evaluering]]

### OOB error
$$
\text{OOB-error} = \frac{1}{n} \sum_{i=1}^{n} \mathbb{1}(y_i \neq \hat{y}_i^{\text{OOB}})
$$

Hvor $\hat{y}_i^{\text{OOB}}$ er flertalsstemmen fra træer hvor sample $i$ var OOB.

### Variable importance (permutation)
$$
\text{VI}_j = \frac{1}{T} \sum_{t=1}^{T} \left( \text{OOB-error}_t^{\text{shuffled } j} - \text{OOB-error}_t^{\text{original}} \right)
$$

Jo større stigning i OOB-error efter permutation af variabel $j$, jo vigtigere er den.

---

> [!tip] Links til alle noter
> [[integration]] • [[differentiering]] • [[kædereglen]] • [[substitution]] • [[partiel_integration]]
> [[Ordinære differentialligninger]] • [[Panserformel til 1. ordens lineære ODEer]] • [[Steady State Analyse]]
> [[Numeriske Metoder og Egenværdier]] • [[Markov State Models (MSM)]]
> [[Applications of Integration in Life Science]]
> [[Logistic Regression]] • [[Decision Trees & Random Forests]]
> [[Gini Impurity]] • [[Entropy og Information Gain]] • [[Kontinuerte vs kategoriske variable i beslutningstræer]]
> [[Image Analysis BMB 547]]
> [[Statistik]] • [[Lineær regression]] • [[PCA (Principal Component Analysis)]]
> [[Fourier-transformation]] • [[Diskret matematik]] • [[R-programmering]]
> [[Datavisualisering — Venn-diagram]] • [[Datavisualisering — Heatmap]] • [[Datavisualisering — Dendrogram]]
> [[OOB (Out-of-Bag) evaluering]]
> [[R-kode til eksamen]]
