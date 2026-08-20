2026-06-01

*Introduction til ordinære differentialligninger (ODEs) i molekylærbiologi — hvad de er, hvordan man læser dem, og hvad de kan bruges til.*

> [!tip] For en 5-årig: En opgaveligning om hvor hurtigt
> Forestil dig en skål med slik. Hvis du spiser slikket, forsvinder det. Jo mere slik der er, jo mere kan du spise på én gang — så det forsvinder hurtigere i starten og langsommere bagefter.
>
> En differentialligning er en **opgaveligning om hvor hurtigt** noget ændrer sig. Den siger: "Ændringen afhænger af, hvor meget der er lige nu."
>
> $\frac{dC}{dt} = -k \cdot C$ betyder: "Koncentrationen falder med en hastighed der er proportional med, hvor meget der er tilbage." Ligesom slikskålen!

---

## Hvad er en differentialligning?

En ODE kobler en variabel med dens **ændringshastighed** (afledte):

$$ \frac{dC}{dt} = -k \cdot C(t) $$

Læses: "koncentrationen falder med en hastighed, der er proportional med den aktuelle mængde."

Komponenter:
- **Variabel:** $C(t)$ — den størrelse du følger (fx koncentration)
- **Afledt:** $\frac{dC}{dt}$ — hvor hurtigt den ændrer sig
- **Mekanisme:** $-k \cdot C(t)$ — den biologiske regel (fx henfald)
- **Begyndelsesbetingelse:** $C(0) = C_0$ — startmængden

---

## Hvad fortæller den afledte?

| $dC/dt > 0$ | $dC/dt = 0$ | $dC/dt < 0$ |
| :--- | :--- | :--- |
| Størrelsen **stiger** | Størrelsen er **konstant** | Størrelsen **falder** |

En stejlere hældning = hurtigere ændring.

---

## Hvordan bygger man en simpel model?

1. **Vælg en variabel:** Lad $N(t)$ være antallet af celler
2. **Beskriv en mekanisme:** Flere celler betyder flere celledelinger
3. **Skriv hastighedsloven:** Væksthastighed er proportional med $N$
4. **Gør det til en ODE:** $\frac{dN}{dt} = kN$

> [!TIP] Det centrale modeltrin
> Oversæt en **biologisk sætning** til en **matematisk sætning**.

---

## Hvad kan en ODE bruges til?

| Formål | Beskrivelse | Eksempel |
| :--- | :--- | :--- |
| **Beskrive** | Skriv ned, hvordan noget ændrer sig over tid | Celletal stiger |
| **Forudsige** | Forudsig hvad der sker bagefter | Lægemiddelkoncentration falder |
| **Estimere** | Fit modellen til data og find parametre | Import/eksport-hastigheder fra mikroskopi |

---

## Eksempel 1: Enzymkinetik (Michaelis-Menten)

I enzymkinetik beskriver ODE'er, hvordan substrat- og produkt-koncentrationer ændrer sig over tid:

$$ E + S \underset{k_{-1}}{\overset{k_1}{\rightleftharpoons}} ES \xrightarrow{k_2} E + P $$

Dette giver et system af ODE'er:

$$ \frac{d[S]}{dt} = -k_1[E][S] + k_{-1}[ES] $$
$$ \frac{d[ES]}{dt} = k_1[E][S] - (k_{-1} + k_2)[ES] $$
$$ \frac{d[P]}{dt} = k_2[ES] $$

> [!INFO] Hovedidé
> Hastighedsloven kan afhænge af **koncentrationen**, ikke kun af tiden. Den samme idé optræder i vækstmodeller, diffusion og transportprocesser.

---

## Eksempel 2: Diffusion i væv

Mål signal som funktion af dybde og tid — beskrives ved diffusionsligningen (en PDE, men ofte tilnærmet med ODE'er under steady-state).

---

## Løsning af simple ODE'er

Den simpleste ODE: $\frac{dy}{dt} = ky$

Løsning: $y(t) = y_0 e^{kt}$ (eksponentiel vækst hvis $k > 0$, henfald hvis $k < 0$)

> [!question]- Tumorvækst (eksponentiel vækst)
> En tumor vokser således at dens vækst er proportional med antallet af celler $N$ i tumoren. Hvilken ligning beskriver denne sammenhæng bedst, hvor $t$ og $k$ er passende konstanter eller variable? (Vi antager at alle celler er af samme størrelse.)
>
> **Løsning:**
>
> **1. Oversæt "vækst proportional med antal celler" til matematik:**
>
> "Vækst" = ændring over tid = $\frac{dN}{dt}$  
> "Proportional med antal celler" = $k \cdot N$  
>
> $$ \frac{dN}{dt} = k \cdot N $$
>
> $k$ er væksthastighedskonstanten (f.eks. pr. time), $t$ er tid.
>
> **2. Løs ODE'en (separér variable):**
>
> $$ \frac{dN}{N} = k \, dt $$
>
> Integrér begge sider:
> $$ \int \frac{1}{N} \, dN = \int k \, dt $$
> $$ \ln|N| = kt + C $$
>
> **3. Isolér $N$:**
> $$ N(t) = e^{kt + C} = e^{C} \cdot e^{kt} = N_0 \cdot e^{kt} $$
>
> hvor $N_0 = e^{C}$ er startantallet af celler ved $t = 0$.
>
> **4. Tolkning:**
>
> - $N_0$ = antal celler ved start (f.eks. $10^6$ celler)
> - $k$ = vækstrate (f.eks. $0,3$ pr. dag — hver dag vokser tumoren med $35\%$)
> - Jo større $k$, jo hurtigere vokser tumoren
> - $N(t) = N_0 e^{kt}$ betyder at tumoren **fordobles** med jævne mellemrum
>
> **Svar:**
> $$ \boxed{\frac{dN}{dt} = k \cdot N, \qquad N(t) = N_0 \cdot e^{kt}} $$

For mere komplekse ODE'er, se [[Panserformel til 1. ordens lineære ODEer]] for den generelle løsningsmetode.

Se også: [[integration]] for grundlæggende integration, [[differentiering]] for at forstå den afledte, og [[Steady State Analyse]] for at finde ligevægt i ODE-systemer.

---

> [!question]- Opstil en ODE for drug clearance
> Et lægemiddel indsprøjtes intravenøst, så startkoncentrationen i blodet er $C(0) = 50$ µg/mL. Leveren fjerner lægemidlet med en hastighed, der er proportional med den aktuelle koncentration: $7\%$ pr. time.
>
> (a) Opstil ODE'en
> (b) Løs ODE'en
> (c) Hvornår er koncentrationen under $5$ µg/mL?
>
> **Løsning (a) — Opstil ODE:**
>
> **1. Oversæt "7% pr. time" til matematik:**
> $C(t)$ falder med $7\%$ pr. time → $C'(t) = -0,07 \cdot C(t)$
>
> **2. Resultat:**
> $$ \frac{dC}{dt} = -0,07\,C, \qquad C(0) = 50 $$
>
> **Løsning (b) — Løs ODE:**
>
> **1. Separér variable:**
> $$ \frac{dC}{C} = -0,07 \, dt $$
>
> **2. Integrér begge sider:**
> $$ \int \frac{1}{C} \, dC = \int -0,07 \, dt $$
> $$ \ln|C| = -0,07t + K $$
>
> **3. Isolér $C$:**
> $$ C(t) = e^{-0,07t + K} = e^{K} \cdot e^{-0,07t} $$
>
> Lad $A = e^{K}$:
> $$ C(t) = A \cdot e^{-0,07t} $$
>
> **4. Brug $C(0) = 50$:**
> $$ C(0) = A \cdot e^{0} = A = 50 $$
>
> **Resultat:**
> $$ C(t) = 50 \, e^{-0,07t} $$
>
> **Løsning (c) — Tid til $C(t) < 5$:**
>
> **1. Sæt $C(t) = 5$:**
> $$ 50 \, e^{-0,07t} = 5 $$
>
> **2. Divider med 50:**
> $$ e^{-0,07t} = 0,1 $$
>
> **3. Tag $\ln$ på begge sider:**
> $$ -0,07t = \ln(0,1) = -2,3026 $$
>
> **4. Isolér $t$:**
> $$ t = \frac{2,3026}{0,07} \approx 32,9 \text{ timer} $$
>
> Efter ca. **33 timer** er koncentrationen faldet til under $5$ µg/mL.
