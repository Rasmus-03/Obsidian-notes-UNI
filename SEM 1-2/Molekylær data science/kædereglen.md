2026-03-05

*En introduktion til kædereglen for differentiering af sammensatte funktioner.*

---

## Hvad er kædereglen?

Kædereglen bruges til at differentiere sammensatte funktioner, det vil sige funktioner af formen $f(g(x))$. Her kaldes $f$ for den ydre funktion og $g$ for den indre funktion.

### Formlen
Den afledte af en sammensat funktion findes ved at differentiere den ydre funktion med hensyn til den indre funktion og derefter gange med den afledte af den indre funktion:
$$ (f(g(x)))' = f'(g(x)) \cdot g'(x) $$

I Leibniz-notation skrives det ofte som:
$$ \frac{dy}{dx} = \frac{dy}{du} \cdot \frac{du}{dx} $$
hvor $u = g(x)$.

---

## Eksempel på beregning

Lad os differentiere funktionen $h(x) = (3x + 2)^5$.

> [!NOTE] Trin-for-trin differentiering
> 
> **1. Identificer den ydre og indre funktion:**
> - Indre funktion: $g(x) = 3x + 2$
> - Ydre funktion: $f(u) = u^5$ (hvor $u$ er den indre funktion)
> 
> **2. Differentier hver del for sig:**
> - Den indre afledte: $g'(x) = 3$
> - Den ydre afledte: $f'(u) = 5u^4$
> 
> **3. Sæt det sammen med kædereglen ($f'(g(x)) \cdot g'(x)$):**
> - Først indsættes den indre funktion $g(x)$ på $u$'s plads i den ydre afledte:
>   $$ f'(g(x)) = 5 \cdot (3x + 2)^4 $$
> - Derefter ganges med den indre afledte $g'(x) = 3$:
>   $$ h'(x) = 5 \cdot (3x + 2)^4 \cdot 3 $$
> 
> **Resultat:**
> $$ h'(x) = 15(3x + 2)^4 $$

---

> [!INFO] Sammenhæng med [[differentiering]] og [[integration]]
> Kædereglen er en af de vigtigste regneregler inden for [[differentiering]]. Den er også fundamentet for [[substitution]], som er den omvendte operation af kædereglen i [[integration]].

---

> [!TIP] Summary
> - Kædereglen bruges til sammensatte funktioner: $f(g(x))$.
> - Differentier "ydre gange indre": $f'(g(x)) \cdot g'(x)$.
> - Det er den direkte modpart til substitution i [[integration]].
