2026-02-18

*En introduktion til differentiering, regneregler og sammenhængen med integration.*

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





