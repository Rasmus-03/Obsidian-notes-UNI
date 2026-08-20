2026-02-18

*En introduktion til simpel numerisk integration ved brug af Riemann-summer og trapezmetoden.*

> [!tip] For en 5-årig: Integration er at tælle små firkanter
> Forestil dig at du har en buket kurve tegnet på et stykke papir. Du vil gerne vide, hvor meget plads der er under kurven.
>
> Du kan ikke bare måle med en lineal, for kurven er buet. Men du kan lægge **mange små firkanter** under kurven og tælle dem sammen. Jo flere og mindre firkanter du bruger, jo tættere kommer du på det rigtige svar.
>
> Integration er matematikkens måde at gøre det på — med uendeligt mange, uendeligt små firkanter.

---
opgaver løst i [[Opgavesæt f3]]
## Simple Integrationsmetoder

Når vi skal finde arealet under en kurve for en funktion $f(x)$ i intervallet $[a, b]$, kan vi opdele intervallet i $n$ lige store stykker med bredden:
$$
\Delta x = \frac{b - a}{n}
$$

### 1. Venstre sum (Left Riemann Sum)
Her bruges funktionsværdien i det venstre endepunkt af hvert delinterval som højden på rektanglet.
$$
\text{Sum}_L = \sum_{i=0}^{n-1} f(x_i) \cdot \Delta x
$$

### 2. Højre sum (Right Riemann Sum)
Her bruges funktionsværdien i det højre endepunkt af hvert delinterval som højden på rektanglet.
$$
\text{Sum}_R = \sum_{i=1}^{n} f(x_i) \cdot \Delta x
$$

### 3. Trapezmetoden / "Trekantsmetoden" (Trapezoidal Rule)
Denne metode forbinder de to endepunkter med en ret linje, hvilket danner en trapez. Det svarer til gennemsnittet af venstre og højre sum.
$$
\text{Sum}_T = \sum_{i=0}^{n-1} \frac{f(x_i) + f(x_{i+1})}{2} \cdot \Delta x
$$

---

## Eksempel på beregning

Vi ønsker at integrere $f(x) = x^2$ fra $x = 0$ til $x = 2$ med $n = 2$ intervaller.

**Givne værdier:**
- $a = 0, b = 2, n = 2$
- $\Delta x = \frac{2 - 0}{2} = 1$
- Delingspunkter: $x_0 = 0, x_1 = 1, x_2 = 2$
- Funktionsværdier: $f(0) = 0, f(1) = 1, f(2) = 4$

> [!NOTE] Beregninger
> 
> **Venstre sum:**
> $$ (f(0) \cdot 1) + (f(1) \cdot 1) = 0 + 1 = 1 $$
> 
> **Højre sum:**
> $$ (f(1) \cdot 1) + (f(2) \cdot 1) = 1 + 4 = 5 $$
> 
> **Trapezmetoden (Trekant/Gennemsnit):**
> $$ \frac{0 + 1}{2} \cdot 1 + \frac{1 + 4}{2} \cdot 1 = 0.5 + 2.5 = 3 $$

---

> [!INFO] Sammenligning
> Den eksakte værdi af integralet er:
> $$ \int_0^2 x^2 \, dx = \left[ \frac{1}{3}x^3 \right]_0^2 = \frac{8}{3} \approx 2.67 $$
> Som det ses, giver trapezmetoden her det tætteste estimat.

> [!INFO] Sammenhæng med [[differentiering]]
> Integration er den omvendte operation af [[differentiering]].
> 
> Vigtige teknikker:
> 1. **Substitution:** Kører [[kædereglen]] "baglæns" (se [[substitution]]).
> 2. **Partiel integration:** Kører produktreglen "baglæns" (se [[partiel_integration]]).

---
> [!TIP] Summary
> - **Venstre sum** er ofte et underestimat for voksende funktioner.
> - **Højre sum** er ofte et overestimat for voksende funktioner.
> - **Trapezmetoden** er generelt mere præcis.

---

## Stamfunktioner (Antiderivatives)

Hvis $F'(x) = f(x)$, kaldes $F$ en **stamfunktion** (antiderivative) for $f$.

> [!NOTE] Der er uendeligt mange stamfunktioner
> Hvis $F(x)$ er en stamfunktion for $f(x)$, så er $F(x) + c$ også en stamfunktion (konstanten forsvinder ved differentiation). Kaldes **familien af stamfunktioner**.

Det ubestemte integral skrives:

$$ \int f(x) \, dx = F(x) + c $$

### Stamfunktioner for elementære funktioner

| Funktion $f(x)$ | Stamfunktion $F(x)$ |
| :--- | :--- |
| $0$ | $c$ |
| $m$ (konstant) | $mx + c$ |
| $x^n$ | $\frac{1}{n+1}x^{n+1} + c,\ n \neq -1$ |
| $\frac{1}{x}$ | $\ln\|x\| + c,\ x \neq 0$ |
| $\sin x$ | $-\cos x + c$ |
| $\cos x$ | $\sin x + c$ |
| $e^{ax}$ | $\frac{1}{a}e^{ax} + c$ |

**Regneregler:**
$$ \int k f(x) \, dx = k \int f(x) \, dx $$
$$ \int (f(x) + g(x)) \, dx = \int f(x) \, dx + \int g(x) \, dx $$

---

## Fundamentalsætningen for Calculus (FTC)

Hvis $f$ er kontinuert på $[a, b]$, og $F$ er en stamfunktion for $f$, så:

$$ \int_a^b f(x) \, dx = F(b) - F(a) $$

**Del 1:** Funktionen $F(x) = \int_a^x f(t) \, dt$ er differentiabel, og $F'(x) = f(x)$.

> [!INFO] Sammenligning
> Integration og differentiation er inverse operationer:
> $$ \frac{d}{dx} \int_0^x f(t) \, dt = f(x) $$

---

## Eksempel: AUC (Area Under the Curve) i farmakologi

**Bioavailability** (biotilgængelighed) beskriver, hvor meget af et lægemiddel der når det systemiske kredsløb. Måles som arealet under plasmakoncentrations-tidskurven (AUC).

Absolut bioavailability:
$$ F_{\text{abs}} = 100 \cdot \frac{\text{AUC}_{\text{po}} \cdot D_{\text{iv}}}{\text{AUC}_{\text{iv}} \cdot D_{\text{po}}} $$

hvor po = oral administration, iv = intravenøs.

> [!NOTE] Eksempel: Nalidixic Acid
> En 250 mg tablet Nalidixic Acid (antibiotikum) administreres, og koncentrationen måles over tid. AUC beregnes med tre metoder:
>
> | Metode | AUC (µg·h/ml) |
> | :--- | :--- |
> | Left Riemann | 11,6 |
> | Right Riemann | 10,6 |
> | Trapezoidal | 11,1 |
>
> Trapezmetoden svarer til gennemsnittet af venstre og højre Riemann-sum.

### Konvergensorden

| Paneler | Left Riemann (fejl) | Trapezoidal (fejl) |
| :--- | :--- | :--- |
| 40 | $3,6 \cdot 10^{-2}$ | $1,05 \cdot 10^{-2}$ |
| 80 | $2,45 \cdot 10^{-2}$ | $1,3 \cdot 10^{-3}$ |
| 160 | $1,21 \cdot 10^{-2}$ | $5,24 \cdot 10^{-4}$ |
| 320 | $5,8 \cdot 10^{-3}$ | $4,19 \cdot 10^{-5}$ |

Trapezmetoden konvergerer med **orden 2** ($\sim n^{-2}$), mens venstre Riemann kun har orden 1 ($\sim n^{-1}$).

### Kompakt formel (ens intervaller)

Når $\Delta t$ er konstant, kan trapezreglen skrives på kompakt form:

$$
\text{AUC} = \frac{\Delta t}{2} \cdot \left(y_0 + 2y_1 + 2y_2 + \cdots + 2y_{n-1} + y_n\right)
$$

> [!NOTE] Eksempel: AUC = 93,5
> Givet $\Delta t = 0{,}50$ h og koncentrationer:
> $y_0 = 8{,}00$, $y_1 = 10{,}75$, $y_2 = 14{,}00$, $y_3 = 17{,}75$,
> $y_4 = 22{,}00$, $y_5 = 26{,}75$, $y_6 = 32{,}00$, $y_7 = 37{,}75$, $y_8 = 44{,}00$
>
> $$
> \begin{aligned}
> \text{AUC} &= \frac{0{,}50}{2} \cdot \big(8{,}00 + 2(10{,}75) + 2(14{,}00) + 2(17{,}75) + 2(22{,}00) \\ &\qquad + 2(26{,}75) + 2(32{,}00) + 2(37{,}75) + 44{,}00 \big) \\[4pt]
> &= 0{,}25 \cdot (8{,}00 + 21{,}50 + 28{,}00 + 35{,}50 + 44{,}00 \\ &\qquad + 53{,}50 + 64{,}00 + 75{,}50 + 44{,}00) \\[4pt]
> &= 0{,}25 \cdot 374{,}00 \\[4pt]
> &= 93{,}5
> \end{aligned}
> $$

### R-kode til AUC-beregning

```r
# Generisk trapezregel (uens intervaller)
time = c(0.5, 1.0, 2.0, 3.0, 4.0, 5.0, 6.5, 8.0)
conc = c(0, 0.45, 0.5, 0.6, 3.3, 3.1, 1.4, 0.5)
n = length(time)
lRiemann = sum((time[2:n] - time[1:n-1]) * conc[1:n-1])
rRiemann = sum((time[2:n] - time[1:n-1]) * conc[2:n])
trapezoidal = sum((time[2:n] - time[1:n-1]) * (conc[1:n-1] + conc[2:n]) / 2)
```

```r
# Kompakt formel (ens intervaller, Δt = 0.50)
dt <- 0.50
konc <- c(8.00, 10.75, 14.00, 17.75, 22.00,
          26.75, 32.00, 37.75, 44.00)

AUC <- dt / 2 * (konc[1] + 2 * sum(konc[2:(length(konc) - 1)]) + konc[length(konc)])
cat("AUC =", AUC)  # 93.5
```

---

## Gennemsnitsværdi af en funktion

Den gennemsnitlige værdi af $f(x)$ over intervallet $[a, b]$:

$$ \bar{f} = \frac{1}{b-a} \int_a^b f(x) \, dx $$

> [!NOTE] Eksempel: Sener i læggen
> Kraften på gastrocnemius-senen (lægmuskel) ved strækning tilnærmes ved $f(x) = 71,3x - 4,15x^2 + 0,434x^3$ (N). Hvad er gennemsnitskraften ved forlængelse fra 2 mm til 11 mm?
>
> $$ \bar{f} = \frac{1}{11-2} \int_2^{11} (71,3x - 4,15x^2 + 0,434x^3) \, dx $$
