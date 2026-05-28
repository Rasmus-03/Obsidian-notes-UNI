# Osmotisk tryk – forklaring
*Van't Hoffs lov beskriver det tryk, der skal til for at stoppe osmose (vandets vandring gennem en membran).*

---

## 1. Begreber og enheder
Ved beregning af osmotisk tryk er det afgørende at bruge de rigtige enheder til gaskonstanten $R$.

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$\Pi$** | Osmotisk tryk | $\text{atm}$ (eller $\text{bar}$) | Det tryk der opstår pga. koncentrationsforskellen. |
| **$i$** | Van't Hoff faktor | (Enhedsløs) | Antal partikler stoffet deler sig i (f.eks. $NaCl = 2$). |
| **$M$** (eller $c$) | Molaritet | $\text{mol/L}$ | Koncentrationen af det opløste stof. |
| **$R$** | Gaskonstanten | $0,08206 \, \frac{\text{L} \cdot \text{atm}}{\text{mol} \cdot \text{K}}$ | Brug denne værdi, hvis du vil have svar i **atm**. |
| **$T$** | Temperatur | $\text{K}$ (Kelvin) | SKAL være i Kelvin ($^\circ\text{C} + 273,15$). |

---

## 2. Formlen
Formlen minder meget om idealgasligningen ($PV = nRT$):

$$ \Pi = i \cdot M \cdot R \cdot T $$

---

## 3. Eksempler

> [!example] **Spørgsmål: Beregn det osmotiske tryk ($\Pi$) af en saltvandsopløsning ($NaCl$)**
> Hvad er det osmotiske tryk af en $0,15 \text{ M } NaCl$ opløsning ved $37^\circ\text{C}$ (kropstemperatur)?
> 
> 1. **Find værdierne:**
>    - $i = 2$ (da $NaCl \rightarrow Na^+ + Cl^-$)
>    - $M = 0,15 \text{ mol/L}$
>    - $T = 37 + 273,15 = 310,15 \text{ K}$
>    - $R = 0,08206 \, \frac{\text{L} \cdot \text{atm}}{\text{mol} \cdot \text{K}}$
> 2. **Opsætning til WordMat:**
>    $$ \Pi = 2 \cdot 0,15 \cdot 0,08206 \cdot 310,15 $$
> 3. **Resultat:**
>    $$ \Pi = \mathbf{7,63 \text{ atm}} $$

> [!example] **Spørgsmål: Beregn det osmotiske tryk ($\Pi$) af en glucoseopløsning**
> En opløsning indeholder $5,0\text{ g}$ glucose ($C_6H_{12}O_6$) opløst i $250\text{ mL}$ vand ved $20^\circ\text{C}$. Hvad er det osmotiske tryk? ($M_{glucose} = 180,16\text{ g/mol}$).
> 
> 1. **Find værdierne:**
>    - $i = 1$ (da glucose er et molekylært stof, der ikke deler sig)
>    - $n = \frac{5,0\text{ g}}{180,16\text{ g/mol}} = 0,0277\text{ mol}$
>    - $M = \frac{0,0277\text{ mol}}{0,250\text{ L}} = 0,111\text{ M}$
>    - $T = 20 + 273,15 = 293,15\text{ K}$
> 2. **Beregning:**
>    $$\Pi = 1 \cdot 0,111 \cdot 0,08206 \cdot 293,15 = \mathbf{2,67\text{ atm}}$$

> [!example] **Opgave: Find molarmassen ($M$) af et protein ud fra det osmotiske tryk**
> $1,00 \text{ g}$ protein opløses i vand til et volumen på $100 \text{ mL}$. Det osmotiske tryk måles til $0,015 \text{ atm}$ ved $25^\circ\text{C}$. Hvad er proteinets molarmasse ($M$)?

> 
> 1. **Find Molariteten ($M_{konc}$) først (WordMat find $x$):**
>    $$ 0,015 = 1 \cdot x \cdot 0,08206 \cdot 298,15 $$
>    *(Find $x = 0,000613 \text{ mol/L}$)*
> 
> 2. **Find stofmængden ($n$):**
>    $$ n = c \cdot V = 0,000613 \text{ mol/L} \cdot 0,100 \text{ L} = 0,0000613 \text{ mol} $$
> 
> 3. **Find Molarmassen ($M$):**
>    $$ M = \frac{m}{n} = \frac{1,00 \text{ g}}{0,0000613 \text{ mol}} = \mathbf{16.313 \text{ g/mol}} $$

---

## 5. Tips til eksamen
- **Husk $i$:** Dette er den største fejlkilde. Hvis stoffet er et salt (elektrolyt), skal du tælle ionerne. Hvis det er sukker (glucose/sucrose), er $i = 1$.
- **Enheder:** Hvis du bruger $R = 8,314$, får du svaret i **Pascal (Pa)**, hvilket er et meget stort tal. Det er næsten altid nemmere at bruge $0,08206$ for at få **atm**.
- **Sammenhæng:** Osmotisk tryk er en "kolligativ egenskab" ligesom frysepunktsnedsættelse.
  Se: [[Molaritet og Molalitet – forklaring]]
