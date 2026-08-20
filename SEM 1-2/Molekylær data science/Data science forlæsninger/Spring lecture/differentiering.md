2026-02-18

*En introduktion til differentiering, regneregler og sammenhængen med integration.*

> [!tip] For en 5-årig: Hvor stejl er bakken?
> Forestil dig at du kører på en skateboard på en vej, der går op og ned. Nogle steder er det **stejlt** (svært at cykle op ad), andre steder er det **fladt** (let at cykle).
>
> Differentiation er at finde ud af **præcis hvor stejl** vejen er i hvert eneste punkt. Hvis du tegner en linje der lige akkurat rører kurven (en tangent), fortæller dens hældning hvor stejl kurven er.
>
> Matematik: $f'(x)$ = "hvor stejl er kurven i punktet $x$?"

---

## Hvad er differentiering?

Differentiering handler om at finde den afledte funktion $f'(x)$, som beskriver hældningen af tangenten til grafen for $f(x)$ i et givet punkt. Det er et udtryk for den øjeblikkelige vækstrate.

### Grundlæggende regneregler

| Funktion $f(x)$ | Afledt funktion $f'(x)$ | Navn |
| :--- | :--- | :--- |
| $k$ (konstant) | $0$ | Konstantreglen |
| $x^n$ | $n \cdot x^{n-1}$ | Potensreglen |
| $e^x$ | $e^x$ | Eksponentialreglen |
| $\ln(x)$ | $\frac{1}{x}$ | Logaritmereglen |
| $k \cdot f(x)$ | $k \cdot f'(x)$ | Faktorreglen |
| $f(g(x))$ | $f'(g(x)) \cdot g'(x)$ | [[kædereglen]] |

---

## Eksempel på beregning

Lad os differentiere funktionen $f(x) = 3x^2 + 5x + 10$.

> [!NOTE] Trin-for-trin differentiering
> 
> 1. Det første led $3x^2$ differentieres ved brug af potensreglen:
>    $$ 3 \cdot (2x^{2-1}) = 6x $$
> 
> 2. Det andet led $5x$ differentieres:
>    $$ 5 \cdot 1 = 5 $$
> 
> 3. Det tredje led $10$ er en konstant og forsvinder:
>    $$ 0 $$
> 
> **Resultat:**
> $$ f'(x) = 6x + 5 $$

---

> [!INFO] Sammenhæng med [[integration]]
> Differentiering og [[integration]] er hinandens modsætninger. Ifølge Analysens Fundamentalsætning kan man se integration som "baglæns" differentiering. Hvis du integrerer en afledt funktion $f'(x)$, finder du (pånær en konstant) tilbage til den oprindelige funktion $f(x)$.

---

> [!TIP] Summary
> - Den afledte funktion $f'(x)$ angiver tangentens hældning.
> - Man bruger potensreglen $x^n 	o n \cdot x^{n-1}$ til de fleste simple funktioner.
> - Differentiering er den omvendte operation af [[integration]].

---

> [!question]- Produktreglen i biologi
> Antallet af bakterier $N(t)$ følger $N(t) = t^2 \cdot e^{0,5t}$. Find væksthastigheden $N'(t)$.
>
> **Løsning:**
>
> **1. Genkend produktet af to funktioner:**
> $$ N(t) = \underbrace{t^2}_{f(t)} \cdot \underbrace{e^{0,5t}}_{g(t)} $$
>
> **2. Brug produktreglen $(f \cdot g)' = f' \cdot g + f \cdot g'$:**
>
> $$ f'(t) = 2t $$
> $$ g'(t) = 0,5 \cdot e^{0,5t} \quad \text{(kædereglen — indre: $0,5t$, ydre: $e^u$)} $$
>
> **3. Sæt sammen:**
> $$ N'(t) = 2t \cdot e^{0,5t} + t^2 \cdot 0,5e^{0,5t} $$
>
> **4. Reducér:**
> $$ N'(t) = e^{0,5t} (2t + 0,5t^2) = e^{0,5t} \cdot t \cdot (2 + 0,5t) $$
>
> **Resultat:**
> $$ N'(t) = t e^{0,5t} (2 + 0,5t) $$

Se også: [[kædereglen]] for sammensatte funktioner.





