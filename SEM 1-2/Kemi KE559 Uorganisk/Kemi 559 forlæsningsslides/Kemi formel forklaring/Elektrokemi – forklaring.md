# Elektrokemi – forklaring
*Redox-reaktioner, spændingsrækken og Nernst-ligningen.*

---

## 1. Begreber og enheder
I elektrokemi er det vigtigt at holde styr på, hvad der oxideres og reduceres.

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$E^\circ$** | Standardpotentiale | $\text{V}$ (Volt) | Spændingen ved standardbetingelser. |
| **$n$** | Antal elektroner | $\text{mol } e^-$ | Antal elektroner der overføres i reaktionen. |
| **$F$** | Faradays konstant | $96.485 \frac{\text{C}}{\text{mol } e^-}$ | Ladningen af 1 mol elektroner. |
| **$Q$** | Reaktionskvotient | (Enhedsløs) | Forhold mellem produkter og reaktanter. |

---

## 2. Redox-huskeregler
- **Oxidation:** Afgivelse af elektroner (stigning i oxidationstal).
- **Reduktion:** Optagelse af elektroner (fald i oxidationstal).
- **Anode:** Her sker oxidationen (negative pol i galvanisk celle).
- **Katode:** Her sker reduktionen (positive pol i galvanisk celle).

---

## 3. Cellens potentiale ($E_{\text{celle}}^\circ$)
$$ E_{\text{celle}}^\circ = E_{\text{katode}}^\circ - E_{\text{anode}}^\circ $$

---

## 4. Nernst-ligningen (Ikke-standard betingelser)
Hvis koncentrationerne ikke er 1 M, bruges denne formel:

$$ E = E^\circ - \frac{0,0592}{n} \cdot \log(Q) \quad (\text{ved } 25^\circ\text{C}) $$

---

## 5. Sammenhæng med Termodynamik
$$ \Delta G^\circ = -n \cdot F \cdot E^\circ $$
- Hvis **$E^\circ > 0$** → $\Delta G^\circ < 0$ → Reaktionen er **spontan** (galvanisk celle).
- Hvis **$E^\circ < 0$** → $\Delta G^\circ > 0$ → Reaktionen er **ikke-spontan** (elektrolysecelle).

---

## 6. Tips til eksamen
- **Vandrette linjer i WordMat:** Når du opsætter Nernst, så brug brøk-skabelonen ($\frac{a}{b}$) for at undgå fejl i logaritmen.
- **Oxidationstal:** Husk at summen af oxidationstallene skal være lig med molekylets samlede ladning.
---
## 7. Eksempler

> [!example] **Opgave: Beregn standardpotentialet ($E_{\text{celle}}^\circ$) for en galvanisk celle**
> En galvanisk celle består af en zink-elektrode ($Zn^{2+}/Zn$, $E^\circ = -0,76 \, V$) og en kobber-elektrode ($Cu^{2+}/Cu$, $E^\circ = +0,34 \, V$). Beregn cellens standardpotentiale.
> 
> **Løsning:**
> Da Kobber har det højeste potentiale, er det katoden. Zink er anoden.
> $$ E_{\text{celle}}^\circ = E_{\text{katode}}^\circ - E_{\text{anode}}^\circ $$
> $$ E_{\text{celle}}^\circ = 0,34 \, V - (-0,76 \, V) = 1,10 \, V $$

> [!example] **Opgave: Beregn potentialet ($E$) ved ikke-standard betingelser ved brug af Nernst-ligningen**
> Find potentialet $E$ (kaldet $x$) for en $Cu^{2+}/Cu$ elektrode ved $25^\circ C$, hvor $[Cu^{2+}] = 0,010 \, M$. Standardpotentialet $E^\circ$ er $+0,34 \, V$, og der overføres $2$ elektroner ($n=2$).

> 
> **Opstilling i WordMat:**
> $$ x = 0,34 \, V - \frac{0,0592}{2} \cdot \log\left(\frac{1}{0,010}\right) $$
> 
> **Beregning:**
> $$ x = 0,34 - 0,0296 \cdot \log(100) $$
> $$ x = 0,34 - 0,0296 \cdot 2 = 0,2808 \, V $$
> 
> Potentialet $E$ er dermed $0,28 \, V$ under disse betingelser.
---

