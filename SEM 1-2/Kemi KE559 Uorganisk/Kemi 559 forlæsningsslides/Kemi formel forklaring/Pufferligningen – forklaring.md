# Pufferligningen (Henderson-Hasselbalch)
*Anvendes til at beregne pH-værdien i et puffersystem.*

---

## 1. Begreber og enheder
Når du bruger pufferligningen, skal du have styr på følgende:

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$pH$** | Surhedsgrad | (Enhedsløs) | Den ønskede eller målte pH i bufferen. |
| **$pK_a$** | Syrestyrkekonstant | (Enhedsløs) | $-\log(K_a)$ for den svage syre i bufferen. |
| **$[base]$** | Base-koncentration | $\text{mol/L}$ (M) | Koncentrationen af den korresponderende base. |
| **$[syre]$** | Syre-koncentration | $\text{mol/L}$ (M) | Koncentrationen af den svage syre. |
| **$n_{base}$** | Stofmængde base | $\text{mol}$ | Kan bruges i stedet for koncentration. |
| **$n_{syre}$** | Stofmængde syre | $\text{mol}$ | Kan bruges i stedet for koncentration. |

---

## 2. Formlen
$$
\text{pH} = pK_a + \log\left(\frac{[\text{base}]}{[\text{syre}]}\right)
$$
Alternativt kan stofmængder ($n$) benyttes, da volumenerne går ud med hinanden:
$$
\text{pH} = pK_a + \log\left(\frac{n_{\text{base}}}{n_{\text{syre}}}\right)
$$
---
## 3. Anvendelse
- Beregning af pH i en blanding af en svag syre og dens korresponderende base.
- Bestemmelse af det nødvendige forhold mellem base og syre for at opnå en ønsket pH.
- Ligningen er mest præcis, når forholdet mellem base og syre er mellem 0,1 og 10.
---
## 4. Eksempler

> [!example] Direkte pH-beregning
> **Spørgsmål: Beregn pH i en puffer**
> En pufferløsning består af $0,50 \, M$ eddikesyre ($CH_3COOH$) og $0,30 \, M$ natriumacetat ($CH_3COONa$). Eddikesyres $pK_a$ er $4,76$. Beregn pH.
> 
> **Løsning:**
> $$ pH = 4,76 + \log\left(\frac{0,30 \, M}{0,50 \, M}\right) $$
> $$ pH = 4,76 + (-0,22) = 4,54 $$

> [!example] Beregning af koncentrationsforhold (WordMat-stil)
> **Opgave: Find forholdet mellem base og syre i en puffer**
> Du ønsker at lave en puffer med $pH = 5,00$ ved hjælp af et syre-base par, hvor $pK_a = 4,76$. Hvad skal forholdet $\frac{[base]}{[syre]}$ (her kaldet $x$) være?
> 
> **Opstilling i WordMat:**
> $$ 5,00 = 4,76 + \log(x) $$
> 
> **Beregning:**
> $$ 5,00 - 4,76 = \log(x) $$
> $$ 0,24 = \log(x) $$
> $$ x = 10^{0,24} = 1,74 $$
> 
> Det betyder, at $[base]$ skal være $1,74$ gange så stor som $[syre]$.

---
[[1 Formelsamling KE559 – Grundlæggende Kemi]]
[[Puffersystem – forklaring]]
[[Henderson-Hasselbalch – forklaring]]