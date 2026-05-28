# (Bufferberegning)

Andels-metoden er en praktisk måde at beregne, hvor meget base man skal bruge i en buffer ud fra det ønskede forhold mellem base og syre.

### 1. Forholdet ($r$)
Brug Henderson-Hasselbalch til at finde ud af, hvor mange gange mere base end syre du skal bruge:

$$
r = 10^{(\text{pH} - pK_a)}
$$

*(Eksempel: Ved $\text{pH} = 7,00$ og $pK_a = 7,21$ er $r = 10^{7,00 - 7,21} = 0,6166$)*

### 2. Mængden af base ($n_{\text{base}}$) og syre ($n_{\text{syre}}$)
Beregn hvor mange mol base og syre der skal være i din færdige buffer. Det er her, "andels-metoden" ($1 + r$) kommer ind:

- **Base-andelen:** 
  $$n_{\text{base}} = \left( \frac{r}{1 + r} \right) \cdot n_{\text{total}}$$

- **Syre-andelen:** 
  $$n_{\text{syre}} = \left( \frac{1}{1 + r} \right) \cdot n_{\text{total}}$$

**Husk:** $n_{\text{total}} = C_{\text{buffer}} \cdot V_{\text{buffer}}$

---

### 3. Opskriften (Hvor meget skal jeg tage?)
Når du står i laboratoriet, bruger du $n$-værdierne til at finde volumen:

- **Den totale syre ($n_{\text{total}}$):** Du starter ofte med at tage hele mængden af den svage syre fra din stamopløsning.
- **NaOH til basen ($V_{\text{NaOH}}$):** Du tilsætter stærk base (f.eks. NaOH) for at omdanne en del af syren til base ($n_{\text{base}}$).
  $$V_{\text{NaOH}} = \frac{n_{\text{base}}}{C_{\text{NaOH-flaske}}}$$
- **Vand:** Fyld op med demineraliseret vand til din slut-volumen ($V_{\text{buffer}}$).

---

### Hvorfor $1 + r$ er din ven:
Tænk på det som en kageopskrift. Hvis forholdet er 0,6 dele sukker til 1 del mel, så har du i alt 1,6 dele. For at vide hvor meget sukker du skal bruge, tager du $\frac{0,6}{1,6}$ af den samlede mængde. Det er præcis det samme med kemien her.
