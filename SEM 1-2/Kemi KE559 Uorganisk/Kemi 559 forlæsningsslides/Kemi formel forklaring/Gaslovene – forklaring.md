# Gaslovene – forklaring
*Beregning af tryk, volumen og stofmængde for gasser.*

---

## 1. Begreber og enheder
Ved gasberegninger er det **altid** enhederne, der driller.

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$P$** | Tryk | $\text{atm}$ eller $\text{bar}$ | Husk: $1 \text{ atm} \approx 1,013 \text{ bar}$. |
| **$V$** | Volumen | $\text{L}$ | Beholderens størrelse. |
| **$n$** | Stofmængde | $\text{mol}$ | Antal gas-molekyler. |
| **$T$** | Temperatur | $\text{K}$ (Kelvin) | SKAL være i Kelvin ($^\circ\text{C} + 273,15$). |
| **$R$** | Gaskonstanten | $0,08206 \frac{\text{L} \cdot \text{atm}}{\text{mol} \cdot \text{K}}$ | Brug denne hvis $P$ er i **atm**. |

---

## 2. Idealgasloven
$$ P \cdot V = n \cdot R \cdot T $$

**WordMat genvej:**
Hvis du skal finde en ukendt (f.eks. trykket), så skriv ligningen ind med tallene og et 'x' for den ukendte, og tryk **alt+b**.

---

## 3. Partialtryk (Daltons Lov)
Det samlede tryk i en blanding af gasser er summen af de enkelte gassers tryk:
$$ P_{\text{total}} = P_A + P_B + P_C \dots $$

**Partialtryk ud fra molbrøk ($X$):**
$$ P_A = X_A \cdot P_{\text{total}} $$
Hvor molbrøken $X_A = \frac{n_A}{n_{\text{total}}}$.

---

## 4. Tips til eksamen
- **Standardbetingelser (STP):** Ved $0^\circ\text{C}$ ($273,15\text{ K}$) og $1\text{ atm}$ fylder $1\text{ mol}$ idealgas altid **$22,41\text{ L}$**.
- **Molar masse fra gas:** Du kan finde $M$ ved at kombinere $n = m/M$ med idealgasloven:
  $$ M = \frac{m \cdot R \cdot T}{P \cdot V} $$

---

## 5. Eksempler

> [!example] Idealgasloven (Find tryk $P$)
> **Opgave: Beregn trykket ved brug af idealgasloven**
> En beholder på $5,0 \text{ L}$ indeholder $0,25 \text{ mol}$ $O_2$ ved en temperatur på $25^\circ\text{C}$. Hvad er trykket?
> 
> 1. **Omregn temperatur til Kelvin:** $T = 25 + 273,15 = 298,15 \text{ K}$
> 2. **Opstil idealgasloven:** $P \cdot V = n \cdot R \cdot T \implies P = \frac{n \cdot R \cdot T}{V}$
> 3. **Indsæt værdier** ($R = 0,08206 \frac{\text{L} \cdot \text{atm}}{\text{mol} \cdot \text{K}}$):
> $$ P = \frac{0,25 \text{ mol} \cdot 0,08206 \frac{\text{L} \cdot \text{atm}}{\text{mol} \cdot \text{K}} \cdot 298,15 \text{ K}}{5,0 \text{ L}} \approx 1,22 \text{ atm} $$

> [!example] Partialtryk (Daltons lov)
> **Opgave: Beregn partialtrykket for en gas i en blanding**
> En gasblanding består af $0,40 \text{ mol}$ $N_2$ og $0,10 \text{ mol}$ $Ar$. Det samlede tryk i beholderen er $2,00 \text{ atm}$. Find partialtrykket for $N_2$.
> 
> 1. **Find total stofmængde:** $n_{\text{total}} = 0,40 + 0,10 = 0,50 \text{ mol}$
> 2. **Beregn molbrøk for $N_2$:** $X_{N_2} = \frac{0,40 \text{ mol}}{0,50 \text{ mol}} = 0,80$
> 3. **Beregn partialtryk:**
> $$ P_{N_2} = X_{N_2} \cdot P_{\text{total}} = 0,80 \cdot 2,00 \text{ atm} = 1,60 \text{ atm} $$

