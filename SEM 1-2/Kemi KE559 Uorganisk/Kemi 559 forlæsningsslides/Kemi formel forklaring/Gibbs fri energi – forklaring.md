
*Gibbs fri energi ($\Delta G$) viser om en kemisk reaktion kan forløbe spontant ved konstant temperatur og tryk.*

---

## 1. Begreber og enheder
**VIGTIGT:** Pas på enhederne! $\Delta H$ er ofte i $kJ$, mens $\Delta S$ er i $J$. Du SKAL omregne dem til det samme (typisk alt til $J$), før du regner.

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$\Delta G$** | Gibbs fri energi | $\text{kJ/mol}$ | Afgør spontanitet ($\Delta G < 0$ er spontan). |
| **$\Delta H$** | Entalpi-ændring | $\text{kJ/mol}$ | Varmeudveksling (exoterm/endoterm). |
| **$\Delta S$** | Entropi-ændring | $\text{J/(mol} \cdot \text{K)}$ | Ændring i uorden (systemets tilfældighed). |
| **$T$** | Temperatur | $\text{K}$ (Kelvin) | SKAL være i Kelvin ($^\circ\text{C} + 273,15$). |
| **$R$** | Gaskonstanten | $8,314 \, \text{J/(mol} \cdot \text{K)}$ | Bruges i sammenhæng med ligevægt ($K$). |
| **$K$** | Ligevægtskonstant | (Enhedsløs) | Forholdet mellem produkter og reaktanter. |

---

## 2. Grundlæggende definition
$$
\Delta G = \Delta H - T \Delta S
$$
---
## 3. Fortolkning
- **$\Delta G < 0$** → reaktionen er **spontan**  
- **$\Delta G = 0$** → systemet er i **ligevægt**  
- **$\Delta G > 0$** → reaktionen er **ikke spontan**
---
## 3. Sammenhæng med [[Ligevægtskonstant – forklaring]] ($K$)
Inden for [[thermodynamik]] er der en direkte matematisk sammenhæng mellem den standard Gibbs fri energiændring ($\Delta G^\circ$) og ligevægtskonstanten ($K$):
$$
\Delta G^\circ = -R T \ln K
$$
### Tolkning af sammenhængen:
- **Hvis $\Delta G^\circ < 0$**: $K > 1$, hvilket betyder at reaktionen er spontan under standardbetingelser og favoriserer produkterne ved ligevægt.
- **Hvis $\Delta G^\circ > 0$**: $K < 1$, hvilket betyder at reaktionen ikke er spontan under standardbetingelser og favoriserer reaktanterne ved ligevægt.
- **Hvis $\Delta G^\circ = 0$**: $K = 1$, og systemet er i ligevægt under standardbetingelser.
### Generel sammenhæng (ikke-standard):
For et system, der ikke er i ligevægt, gælder:
$$
\Delta G = \Delta G^\circ + R T \ln Q
$$
Hvor $Q$ er reaktionskvotienten. Ved ligevægt er $\Delta G = 0$ og $Q = K$.
---
## 4. Hierarki af vigtighed
1. **Spontanitet**: Negativ $\Delta G$ betyder, at processen kan forløbe uden ekstern energi.  
2. **Energi og uorden**: $\Delta H$ repræsenterer energiændringer, $\Delta S$ repræsenterer ændring i uorden.  
3. **Temperatureffekt**: Høj $T$ forstærker entropi-effekten; $\Delta G$ afhænger af både $\Delta H$ og $T\Delta S$.
---
## 5. Symbolforklaring
- **$\Delta G$** = Gibbs fri energi ($J$ eller $kJ$)  
- **$\Delta H$** = entalpiændring ($J$ eller $kJ$)  
- **$\Delta S$** = entropiændring ($J/K$)  
- **$T$** = temperatur ($K$)
- **$R$** = gaskonstanten ($8,314 \, J/(mol \cdot K)$)
- **$K$** = ligevægtskonstant
- **$Q$** = reaktionskvotient
---
## 6. Tips
- Hvis en reaktion er **exoterm ($\Delta H < 0$)** og $\Delta S > 0$ → altid spontan  
- Hvis en reaktion er **endoterm ($\Delta H > 0$)** og $\Delta S < 0$ → aldrig spontan  
- Ved temperaturafhængige reaktioner, kan $\Delta G$ ændre fortegn og derved ændre spontanitet.
- $0^\circ C = 273,15 \, K$
- Bemærk at enhedskontrol er vigtig ved brug af $R$ (brug typisk $J$ i stedet for $kJ$).
---
## 7. Eksempler

> [!example] **Opgave: Beregn Gibbs fri energi ($\Delta G$) og vurder spontanitet (WordMat-stil)**
> En reaktion har $\Delta H = -120 \, kJ/mol$ og $\Delta S = -300 \, J/(mol \cdot K)$ ved $25^\circ C$ ($298,15 \, K$). Find $\Delta G$ ($x$) og vurder om reaktionen is spontan.
> 
> **Omregning af enheder (VIGTIGT!):**
> $$ \Delta H = -120 \cdot 1000 = -120.000 \, J/mol $$
> 
> **Opstilling i WordMat:**
> $$ x = -120.000 \, J/mol - 298,15 \, K \cdot (-300 \, J/(mol \cdot K)) $$
> 
> **Beregning:**
> $$ x = -120.000 + 89.445 = -30.555 \, J/mol $$
> $$ x = -30,56 \, kJ/mol $$
> 
> **Vurdering:** Da $\Delta G < 0$, er reaktionen **spontan** ved $25^\circ C$.

> [!example] **Opgave: Find den temperatur ($T$), hvor reaktionen bliver spontan**
> Ved hvilken temperatur $T$ (her $x$) er en reaktion i ligevægt ($\Delta G = 0$), hvis $\Delta H = 150 \, kJ/mol$ og $\Delta S = 400 \, J/(mol \cdot K)$?

> 
> **Opstilling i WordMat:**
> $$ 0 = 150.000 - x \cdot 400 $$
> 
> **Beregning:**
> $$ x = \frac{150.000}{400} = 375 \, K $$
> 
> Reaktionen bliver spontan ved temperaturer over $375 \, K$ ($101,85^\circ C$).
---