2026-06-01

*Steady state-analyse af dynamiske systemer — når $\frac{dy}{dt} = 0$.*

> [!tip] For en 5-årig: Vand i et glas med hul i
> Forestil dig et glas med et lille hul i bunden. Du hælder vand i toppen, og det løber ud i bunden.
>
> I starten stiger vandstanden, fordi der kommer mere ind end der løber ud. Men efterhånden som vandet bliver dybere, løber der mere ud. Til sidst er der **lige meget ind som ud** — vandstanden stopper med at ændre sig. Det er **steady state**!
>
> I biologi: en metabolits koncentration i en celle holder op med at ændre sig, fordi produktion og forbrug balancerer.

---

## Hvad er steady state?

Et system er i **steady state**, når koncentrationerne ikke længere ændrer sig over tid:

$$ \frac{dS}{dt} = 0 $$

> [!INFO] Steady state ≠ kemisk ligevægt
> - **Kemisk ligevægt:** Fremad- og bagudreaktion er i balance ($\Delta G = 0$), nettoændring = 0
> - **Steady state:** Der er konstant flux gennem systemet, men koncentrationerne er konstante fordi input = output

---

## Fremgangsmåde

1. Sæt alle afledte til 0: $\frac{dS_i}{dt} = 0$
2. Løs det resulterende ligningssystem for $S_i$
3. Tjek at løsningen er fysisk meningsfuld (positive koncentrationer)

---

## Eksempel: Metabolitsystem

Givet differentialligningen for metabolit $S_1$:

$$ \frac{dS_1}{dt} = v_0 - S_1 \cdot (k_1 + k_2) + S_2 \cdot k_{-2} $$

Ved steady state sættes $\frac{dS_1}{dt} = 0$:

$$ 0 = v_0 - S_1 \cdot (k_1 + k_2) + S_2 \cdot k_{-2} $$

$$ S_1 \cdot (k_1 + k_2) = v_0 + S_2 \cdot k_{-2} $$

$$ S_1^* = \frac{v_0 + S_2^* \cdot k_{-2}}{k_1 + k_2} $$

hvor $S_1^*$ og $S_2^*$ er steady state-koncentrationerne.

> [!NOTE] Bemærk
> Da $S_1^*$ afhænger af $S_2^*$, skal systemets øvrige ODE (for $S_2$) også løses samtidigt for at finde begge steady state-værdier.

---

## Eksempel: mRNA-nedbrydning (fra [[Panserformel til 1. ordens lineære ODEer]])

$$ \frac{dM}{dt} = s - k \cdot M $$

Sæt $\frac{dM}{dt} = 0$:

$$ 0 = s - k \cdot M^* \quad\Rightarrow\quad M^* = \frac{s}{k} $$

Den analytiske løsning $M(t) = \frac{s}{k}(1 - e^{-kt})$ nærmer sig $M^* = s/k$ når $t \to \infty$.

---

## Grafisk tolkning

For en 1-dimensional ODE $\frac{dy}{dt} = f(y)$:
- **Steady states:** Løs $f(y) = 0$
- **Stabile:** Hvis $f'(y^*) < 0$ — systemet vender tilbage ved små forstyrrelser
- **Instabile:** Hvis $f'(y^*) > 0$ — små forstyrrelser vokser

Se også: [[Ordinære differentialligninger]], [[Panserformel til 1. ordens lineære ODEer]], [[Markov State Models (MSM)]]

---

> [!question]- Bestem steady state-koncentrationen af S₁
> Givet følgende differentialligning, som beskriver ændringen af koncentrationen af metabolit $S_1$ over tid:
>
> $$ \frac{dS_1}{dt} = v_0 - S_1 \cdot (k_1 + k_2) + S_2 \cdot k_{-2} $$
>
> Find det rigtige udtryk for steady state-koncentrationen af $S_1$.
>
> **Løsning:**
>
> **Trin 1 — Forstå ligningen:**
>
> Ligningen har fire led:
> $$ \frac{dS_1}{dt} = \underbrace{v_0}_{\text{produktion}} - \underbrace{S_1 \cdot k_1}_{\text{forbrug via vej 1}} - \underbrace{S_1 \cdot k_2}_{\text{forbrug via vej 2}} + \underbrace{S_2 \cdot k_{-2}}_{\text{tilbagekonvertering fra }S_2} $$
>
> **Trin 2 — Sæt $\frac{dS_1}{dt} = 0$:**
>
> $$ 0 = v_0 - S_1 \cdot (k_1 + k_2) + S_2 \cdot k_{-2} $$
>
> **Trin 3 — Isolér $S_1$:**
>
> $$ S_1 \cdot (k_1 + k_2) = v_0 + S_2 \cdot k_{-2} $$
>
> **Trin 4 — Dividér med $(k_1 + k_2)$:**
>
> $$ S_1^* = \frac{v_0 + S_2^* \cdot k_{-2}}{k_1 + k_2} $$
>
> **Forklaring:**
>
> - $S_1^*$ er steady state-koncentrationen af $S_1$ (den søgte værdi)
> - $S_2^*$ er steady state-koncentrationen af $S_2$ — denne kendes ikke uden en ekstra ODE for $S_2$
> - Tælleren $v_0 + S_2^* \cdot k_{-2}$ er alt det, der **tilfører** $S_1$
> - Nævneren $k_1 + k_2$ er summen af de hastighedskonstanter, der **fjerner** $S_1$
> - Jo større $k_1 + k_2$, jo **lavere** $S_1^*$ (hurtigere forbrug → mindre ophobning)
> - Jo større $v_0$ eller $k_{-2}$, jo **højere** $S_1^*$ (mere produktion → mere ophobning)
>
> **Trin 5 — Tjek enheder:**
>
> Antag at $v_0$ har enhed koncentration/tid (f.eks. µM/s), $k$'erne har enhed 1/tid (f.eks. s⁻¹), og $S_2$ har enhed koncentration (f.eks. µM):
>
> $$ [S_1^*] = \frac{[\mu\text{M/s}] + [\mu\text{M}] \cdot [\text{s}^{-1}]}{[\text{s}^{-1}] + [\text{s}^{-1}]} = \frac{[\mu\text{M/s}]}{[\text{s}^{-1}]} = [\mu\text{M}] $$ ✓
>
> **Svar:**
>
> $$ \boxed{S_1^* = \frac{v_0 + S_2^* \cdot k_{-2}}{k_1 + k_2}} $$
>
> > [!WARNING] Bemærk
> > $S_1^*$ afhænger af $S_2^*$. For at finde den numeriske værdi af $S_1^*$ skal systemets øvrige ODE (for $S_2$) også løses samtidigt.
