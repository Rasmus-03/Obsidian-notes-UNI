2026-06-01

*Integrerende faktor-metoden til løsning af 1. ordens lineære differentialligninger.*

> [!tip] For en 5-årig: En pandekageopskrift
> Forestil dig at du vil bage pandekager, men opskriften er rodet og svær at følge. Hvis du **ganger alle ingredienserne med 2**, bliver opskriften pludselig pænere: 2 æg, 2 dl mel, 2 dl mælk — let!
>
> Panserformlen (integrerende faktor) gør det samme med differentialligninger. Du ganger hele ligningen med en særlig funktion $\mu(t)$, og så **pakker venstresiden sig sammen** til én pæn afledt, som er let at integrere.
>
> Det virker altid til 1. ordens lineære ODE'er — derfor hedder det en panserformel!

---

## Hvorfor?

Mange biologiske modeller har samme mønster:

$$ \text{ændring} = \text{input} - \text{proportionalt tab} $$

Eksempel: mRNA-nedbrydning. Transkription tilføjer molekyler med rate $s$, mens nedbrydning fjerner med rate $k \cdot M(t)$:

$$ \frac{dM}{dt} = s - k M(t) $$

> [!INFO] Samme struktur
> Samme matematik optræder i protein-turnover, signalering og drug clearance.

---

## Genkend: Hvornår virker separation — og hvornår svigter det?

**Separation** virker når ODE'en kan skrives som $\frac{dy}{dt} = A(t)B(y)$.

En **lineær ODE** har formen:

$$ y' + p(t)y = q(t) $$

Her er leddene typisk ikke et produkt $A(t)B(y)$, så separation er ikke systematisk anvendelig. **Panserformlen** er den pålidelige metode.

---

## Ideen bag panserformlen

Vælg en funktion $\mu(t)$, så venstresiden matcher **produktreglen**:

$$ (\mu y)' = \mu' y + \mu y' $$

1. Gang ODE'en med $\mu(t)$: $\mu y' + \mu p y = \mu q$
2. For at få $(\mu y)' = \mu' y + \mu y'$ til at matche, kræver vi $\mu' = \mu p$
3. Løs for $\mu$: $\mu(t) = e^{\int p(t) \, dt}$

> [!NOTE] Hele tricket
> At gange med $\mu(t)$ pakker to led sammen til én afledt, så ODE'en bliver nem at integrere.

---

## Fremgangsmåde (5 trin)

| Trin | Handling |
| :--- | :--- |
| **1** | Omskriv ODE'en til standardform $y' + p(t)y = q(t)$ |
| **2** | Find integrerende faktor $\mu(t) = e^{\int p(t) \, dt}$ |
| **3** | Gang hele ligningen med $\mu(t)$ |
| **4** | Omskriv venstresiden til $(\mu y)'$ |
| **5** | Integrér, løs for $y$, brug begyndelsesbetingelsen |

---

## Eksempel: mRNA-nedbrydning

Løs $M'(t) + M(t) = 2$ med $M(0) = 0$ (syntese = 2, nedbrydningsrate = 1).

> [!NOTE] Trin-for-trin
> **1. Standardform:** $M' + 1 \cdot M = 2$ → $p(t)=1$, $q(t)=2$
>
> **2. Integrerende faktor:** $\mu = e^{\int 1 \, dt} = e^t$
>
> **3. Gang med $\mu$:** $e^t M' + e^t M = 2e^t$
>
> **4. Produkt-derivative:** $(e^t M)' = 2e^t$
>
> **5. Integrér:** $e^t M = \int 2e^t \, dt = 2e^t + C$ → $M(t) = 2 + Ce^{-t}$
>
> **Begyndelsesbetingelse:** $M(0) = 0 \implies 0 = 2 + C \implies C = -2$
>
> **Resultat:** $M(t) = 2 - 2e^{-t}$

### Fortolkning

- $M(0) = 0$ — starter ved 0
- $M(t)$ stiger hurtigt og nærmer sig $M = 2$ (steady state)
- Biologisk: efterhånden som $M$ vokser, indhenter nedbrydningen syntesen, så nettoændringen bliver mindre og mindre

---

## Tjekliste til selvstudie

**Før du starter et nyt problem:**
- [ ] Kan jeg omskrive det til $y' + p(t)y = q(t)$?
- [ ] Hvad er $p(t)$ og $q(t)$?
- [ ] Hvad er $\mu(t) = e^{\int p(t) \, dt}$?
- [ ] Efter multiplikation: kan jeg se $(\mu y)'$?
- [ ] Brugte jeg begyndelsesbetingelsen og **tjekkede svaret**?

> [!WARNING] Typiske fejl
> - Glemmer at sætte ODE'en på standardform først
> - Forkert fortegn i $\mu(t)$ (det er $+\int p(t) \, dt$)
> - Ganger kun ét led med $\mu(t)$ i stedet for hele ligningen
> - Stopper før begyndelsesbetingelsen

---

> [!question]- Drug infusion med panserformlen
> Et lægemiddel infunderes med konstant hastighed $s = 6$ mg/L/time, samtidig med at leveren fjerner det med rate $k = 2$ pr. time. Startkoncentration $C(0) = 1$ mg/L. Løs ODE'en:
> $$ \frac{dC}{dt} = 6 - 2C, \qquad C(0) = 1 $$
>
> **Løsning — panserformlen:**
>
> **1. Standardform $C' + p(t)C = q(t)$:**
> $$ C' + 2C = 6 $$
> Her er $p(t) = 2$ og $q(t) = 6$.
>
> **2. Integrerende faktor $\mu(t) = e^{\int p(t) \, dt}$:**
> $$ \mu(t) = e^{\int 2 \, dt} = e^{2t} $$
>
> **3. Gang hele ligningen med $\mu(t)$:**
> $$ e^{2t}C' + 2e^{2t}C = 6e^{2t} $$
>
> **4. Genkend venstresiden som $(e^{2t}C)'$:**
> Vi tjekker: $(e^{2t}C)' = e^{2t}C' + 2e^{2t}C$ ✓
> $$ (e^{2t}C)' = 6e^{2t} $$
>
> **5. Integrér begge sider mht. $t$:**
> $$ e^{2t}C = \int 6e^{2t} \, dt $$
> $$ e^{2t}C = 6 \cdot \frac{1}{2}e^{2t} + K = 3e^{2t} + K $$
>
> **6. Isolér $C(t)$:**
> $$ C(t) = 3 + K e^{-2t} $$
>
> **7. Brug $C(0) = 1$:**
> $$ C(0) = 3 + K \cdot 1 = 1 \implies K = -2 $$
>
> **Resultat:**
> $$ C(t) = 3 - 2e^{-2t} $$
>
> **Fortolkning:**
>
> - $C(0) = 3 - 2 = 1$ ✓
> - Når $t \to \infty$: $C(t) \to 3$ mg/L (steady state)
> - Infusionen $s = 6$ balancerer med clearance $k \cdot C = 2 \cdot 3 = 6$ ved steady state
>
> > [!TIP] Tjek altid svaret
> > Indsæt $C(3 - 2e^{-2t})$ i ODE'en:
> > $$ C' = 4e^{-2t}, \quad 6 - 2C = 6 - 2(3 - 2e^{-2t}) = 6 - 6 + 4e^{-2t} = 4e^{-2t} $$ ✓

**Øv selv:** $y' + 2y = 6$, $y(0) = 1$ (samme struktur, bekræft at $y(t) = 3 - 2e^{-2t}$)

Se også: [[Ordinære differentialligninger]] for grundlæggende ODE-koncepter.
