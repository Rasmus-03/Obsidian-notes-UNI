2026-03-05

*En introduktion til integration ved substitution – den omvendte operation af kædereglen.*

> [!tip] For en 5-årig: Byttepenge
> Forestil dig at du skal betale 14 kr. for en is, men du har kun en 50'er. Du bytter 50'eren til 2×20 + 10 — samme værdi, men nemmere at betale med.
>
> Substitution er det samme i matematik: du bytter en svær funktion ud med en ny variabel, så integralet bliver nemmere at regne. Til sidst bytter du tilbage igen.
>
> Det er præcis kædereglen **baglæns** — hvis kæderegnen skiller noget ad, så samler substitution det sammen igen.

---

## Hvad er substitution?

Integration ved substitution er en teknik, man bruger, når man skal integrere en sammensat funktion. Det svarer præcis til at bruge [[kædereglen]] "baglæns". 

Målet er at erstatte en svær del af integralet med en ny variabel $u$, så integralet bliver simplere at løse.

### Formlen
Hvis vi har et integrale af formen $\int f(g(x)) \cdot g'(x) \, dx$, kan vi lade $u = g(x)$. Så bliver $du = g'(x) \, dx$, og integralet bliver:
$$ \int f(u) \, du $$

---

## Eksempel på beregning

Lad os integrere funktionen $\int (3x + 2)^4 \cdot 3 \, dx$.
*(Dette er det omvendte eksempel af det, vi så i [[kædereglen]])*

> [!NOTE] Trin-for-trin substitution
> 
> **1. Vælg en passende indre funktion som $u$:**
> Vi lader:
> $$ u = 3x + 2 $$
> 
> **2. Find $du$ ved at differentiere $u$:**
> $$ \frac{du}{dx} = 3 \implies du = 3 \, dx $$
> 
> **3. Erstat $x$-værdierne med $u$ og $du$ i integralet:**
> Nu kan vi se, at $(3x+2)^4$ bliver til $u^4$, og $3 \, dx$ bliver til $du$:
> $$ \int u^4 \, du $$
> 
> **4. Integrer i forhold til $u$:**
> $$ \frac{1}{5}u^5 + C $$
> 
> **5. Substituer tilbage (indsæt $3x+2$ på $u$'s plads):**
> $$ \frac{1}{5}(3x + 2)^5 + C $$
> 
> **Resultat:**
> $$ \int (3x + 2)^4 \cdot 3 \, dx = \frac{1}{5}(3x + 2)^5 + C $$

### Eksempel 2 (fra dit opgavesæt)

Her integrerer vi funktionen $f(x) = \frac{1}{4-x}$ som findes i dit [[Opgavesæt f3]].

> [!NOTE] Trin-for-trin substitution
> 
> **1. Vælg den indre funktion som $u$:**
> $$ u = 4 - x $$
> 
> **2. Find $du$:**
> Ved at differentiere $u$ får vi:
> $$ \frac{du}{dx} = -1 \implies dx = -du $$
> 
> **3. Erstat i integralet:**
> $$ \int \frac{1}{4-x} \, dx = \int \frac{1}{u} \cdot (-du) = -\int \frac{1}{u} \, du $$
> 
> **4. Integrer og substituer tilbage:**
> Da integralet af $\frac{1}{u}$ er $\ln|u|$, får vi:
> $$ -\ln|u| + C = -\ln|4-x| + C $$
> 
> **Resultat:**
> $$ \int \frac{1}{4-x} \, dx = -\ln|4-x| + C $$

### Eksempel 3 (fra dokumentet 2xx27)

Her løser vi integralet fra din PDF-fil ved hjælp af substitution.

Integral:
$$ \int 2x(x^2 + 7)^3 \, dx $$

> [!NOTE] Trin-for-trin substitution
> 
> **1. Vælg den indre funktion som $u$:**
> Vi vælger det, der står inde i parentesen:
> $$ u = x^2 + 7 $$
> 
> **2. Find $du$ ved at differentiere $u$:**
> $$ \frac{du}{dx} = 2x \implies du = 2x \, dx $$
> 
> **3. Erstat i integralet:**
> Vi kan se, at både $u$ og $du$ passer perfekt ind i integralet:
> $$ \int \underbrace{(x^2 + 7)^3}_{u^3} \cdot \underbrace{2x \, dx}_{du} = \int u^3 \, du $$
> 
> **4. Integrer i forhold til $u$:**
> $$ \frac{1}{4}u^4 + C $$
> 
> **5. Substituer tilbage (indsæt $x^2 + 7$ på $u$'s plads):**
> $$ \frac{1}{4}(x^2 + 7)^4 + C $$
> 
> **Resultat:**
> $$ \int 2x(x^2 + 7)^3 \, dx = \frac{1}{4}(x^2 + 7)^4 + C $$

---

> [!INFO] Sammenhæng med [[kædereglen]]
> Som du kan se, er resultatet præcis den funktion, vi startede med at differentiere i eksemplet under [[kædereglen]]. Substitution er værktøjet, der lader os "fortryde" en differentiering, hvor der er brugt en ydre og en indre funktion.

---

> [!TIP] Summary
> - Find en "indre" del af funktionen og kald den $u$.
> - Differentier $u$ for at finde $du$.
> - Sørg for at hele integralet bliver beskrevet med $u$ før du integrerer.
> - Husk altid at substituere tilbage til $x$ til sidst!

---

## Anvendelse: AUC for lægemiddelkoncentration

> [!NOTE] Eksempel: Drug concentration i blodbanen
> Koncentrationen af et lægemiddel i blodet følger $C(t) = e^{\beta(t-T)}$. For at finde den totale eksponering (AUC) skal vi integrere:
>
> $$ \int e^{\beta(t-T)} \, dt $$
>
> Vælg $u = \beta(t-T)$. Så $du = \beta \, dt$, og $dt = \frac{1}{\beta} du$:
>
> $$ \int e^u \cdot \frac{1}{\beta} \, du = \frac{1}{\beta} e^u + C = \frac{1}{\beta} e^{\beta(t-T)} + C $$
>
> Substitutionsmetoden er effektiv, når man kan spotte en funktion **og** et udtryk, der ligner dens afledte.

---

## Substitution kombineret med partiel integration

$$ \int e^{\sqrt{x}} \, dx $$

> [!NOTE] Løsning
> **1. Substitution først:** Lad $u = \sqrt{x}$, så $x = u^2$ og $dx = 2u \, du$:
> $$ \int e^u \cdot 2u \, du = 2 \int u e^u \, du $$
>
> **2. Partiel integration:** $\int u e^u \, du$ løses med $u$ (algebraisk) og $v' = e^u$:
> $$ = 2\left( u e^u - \int e^u \, du \right) = 2(u e^u - e^u) + C $$
>
> **3. Substituer tilbage:**
> $$ = 2(\sqrt{x} e^{\sqrt{x}} - e^{\sqrt{x}}) + C = 2e^{\sqrt{x}}(\sqrt{x} - 1) + C $$

Se også: [[partiel_integration]] for flere eksempler med kombination af metoder.
