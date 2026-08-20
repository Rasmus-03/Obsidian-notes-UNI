2026-03-05

*En introduktion til kædereglen for differentiering af sammensatte funktioner.*

> [!tip] For en 5-årig: Robotten der holder en bold
> Forestil dig en robotarm der holder en bold i hånden. Når robottens skulder bevæger sig, bevæger hånden sig — og bolden bevæger sig også.
>
> Kædereglen er matematikkens måde at regne ud: "Hvis robottens skulder bevæger sig med en vis hastighed, hvor hurtigt bevæger bolden sig så?"
>
> Det er en regel for **sammensatte funktioner** — en funktion inde i en anden funktion, ligesom bolden sidder i hånden som sidder på armen.

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

---

> [!question]- Sammensat funktion i farmakokinetik
> Koncentrationen af et lægemiddel i blodet følger $C(t) = 100 \cdot e^{-0,2t}$, og effekten $E(C)$ er givet ved $E(C) = \ln(C + 1)$. Find den samlede ændring af effekt over tid: $\frac{dE}{dt}$.
>
> **Løsning:**
>
> **1. Identificér funktionerne:**
> - Indre funktion: $C(t) = 100 e^{-0,2t}$
> - Ydre funktion: $E(C) = \ln(C + 1)$
>
> **2. Differentiér hver del:**
> - $\frac{dE}{dC} = \frac{1}{C + 1}$
> - $\frac{dC}{dt} = 100 \cdot (-0,2) \cdot e^{-0,2t} = -20 e^{-0,2t}$ (kædereglen igen: $e^{-0,2t}$ → $e^u \cdot (-0,2)$)
>
> **3. Kædereglen: $\frac{dE}{dt} = \frac{dE}{dC} \cdot \frac{dC}{dt}$:**
> $$ \frac{dE}{dt} = \frac{1}{100 e^{-0,2t} + 1} \cdot (-20 e^{-0,2t}) $$
>
> **4. Reducér:**
> $$ \frac{dE}{dt} = -\frac{20 e^{-0,2t}}{100 e^{-0,2t} + 1} $$
>
> For store $t$ → $e^{-0,2t} \to 0$, så $\frac{dE}{dt} \to 0$. Effekten ændrer sig langsommere, når stoffet er næsten ude af kroppen.

---

> [!TIP] Praktisk huskeregel
> Kædereglen er overalt i biologi: vækstmodeller, henfald, sigmoide kurver (Hill-ligningen), reaktionshastigheder. Hver gang du ser en funktion *inde i* en anden funktion, skal du bruge kædereglen.
