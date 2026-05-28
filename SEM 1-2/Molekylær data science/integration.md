2026-02-18

*En introduktion til simpel numerisk integration ved brug af Riemann-summer og trapezmetoden.*

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
