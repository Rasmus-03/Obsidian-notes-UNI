2026-06-01

*Anvendelser af integration i biologi og medicin: Hagen–Poiseuilles lov og Gompertz-vækst.*

> [!tip] For en 5-årig: Blod der løber gennem rør
> Forestil dig at du drikker vand med et sugerør. Hvis sugerøret er **bredt**, kan du drikke nemt. Hvis det er **smalt**, skal du suge meget hårdere.
>
> Hagen-Poiseuille siger: Hvis du gør røret **halvt så bredt**, kommer der **16 gange mindre** væske igennem! Det er derfor, at blodårer der snævrer ind er så farlige — hjertet skal arbejde meget hårdere.
>
> Gompertz handler om tumorer: de vokser hurtigt i starten (som en svamp på en tallerken), men langsommere efterhånden som pladsen og næringen bliver mindre.

---

## Hagen–Poiseuilles lov: Blodgennemstrømning i kar

Bruges til at beskrive væskestrøm gennem et rør (fx et blodkar).

### Udledning via integration

**1. Kraftbalance:** Trykforskellen $\Delta P$ over et rør med længde $L$ driver strømningen. Den viskøse modstand mod strømning i en cylindrisk skal med radius $r$:

$$ \Delta P \cdot \pi r^2 = -\eta \frac{dv}{dr} \cdot 2\pi r L $$

**2. Separér variable:**

$$ \frac{dv}{dr} = -\frac{\Delta P}{2\eta L} r $$

**3. Integrér:**

$$ v(r) = -\frac{\Delta P}{4\eta L} r^2 + C $$

**4. Randbetingelse:** $v(R) = 0$ (hastighed = 0 ved karvæggen):

$$ v(r) = \frac{\Delta P}{4\eta L} (R^2 - r^2) $$

Dette er et **parabolsk hastighedsprofil** — hastigheden er størst i centrum og falder til 0 ved væggen.

### Volumenstrøm (flux)

Integrér hastigheden over tværsnitsarealet:

$$ Q = \int_0^R v(r) \cdot 2\pi r \, dr = \frac{\pi R^4 \Delta P}{8\eta L} $$

> [!WARNING] Hagen–Poiseuilles lov
> $$ Q = \frac{\pi R^4 \Delta P}{8\eta L} $$
>
> Strømningen $Q$ er proportional med **$R^4$** — en fordobling af radius giver 16× mere flow!

### Biologiske implikationer

- Small changes in vessel radius strongly affect blood flow — forklarer hvorfor **vasokonstriktion** (indsnævring af blodkar) dramatisk reducerer blodgennemstrømning
- Forklarer hvorfor **hypertension** (forhøjet blodtryk) skader kar — væggen belastes mere
- Relevant for forståelse af **arteriel remodeling** ved essentiel hypertension

---

## Gompertz-funktionen: Tumorvækst

Bruges til at modellere tumorvækst — eksponentiel vækst i starten, der aftager over tid.

Gompertz-funktionen:

$$ N(t) = N_0 \cdot e^{\frac{\alpha}{\beta}(1 - e^{-\beta t})} $$

hvor:
- $N_0$ = startstørrelse
- $\alpha$ = initial vækstrate
- $\beta$ = væksthæmningshastighed (hvordan væksten aftager)

> [!INFO] Fortolkning
> - I starten vokser tumoren næsten eksponentielt
> - Efterhånden som tumoren vokser, hæmmes væksten (begrænset af ilt/næring)
> - $N(t)$ nærmer sig en asymptotisk maksimal størrelse $N_{\infty} = N_0 e^{\alpha/\beta}$

---

## Læringsmål (efter denne forelæsning)

- Forklar hvorfor calculus (integration + differentialligninger) er nyttigt til kvantitative modeller i biologi
- Brug integration til at udlede flow-hastighed i et blodkar fra et hastighedsprofil
- Fortolk matematikken biologisk (fx små ændringer i radius har stor betydning)
- Opsæt en model fra et biologisk spørgsmål (definér variable, antagelser, prediktion)
- Løs og fortolk en simpel Gompertz-vækstmodel

Se også: [[integration]] for grundlæggende integrationsteknikker, [[Ordinære differentialligninger]] for ODE-modeller.

---

> [!question]- Beregn tumorstørrelse med Gompertz
> En tumor starter på $N_0 = 10^6$ celler, med $\alpha = 0,3$ pr. dag og $\beta = 0,05$ pr. dag.
>
> (a) Hvad er den maksimale tumorstørrelse $N_\infty$?
> (b) Hvor stor er tumoren efter 10 dage?
> (c) Hvor lang tid tager det at nå $50\%$ af $N_\infty$?
>
> **Løsning (a) — Maksimal størrelse:**
>
> $N_\infty = N_0 \cdot e^{\alpha/\beta} = 10^6 \cdot e^{0,3/0,05} = 10^6 \cdot e^{6}$
>
> $$ N_\infty = 10^6 \cdot 403,4 \approx 4,03 \cdot 10^8 \text{ celler} $$
>
> Tumoren kan maksimalt vokse til omkring $400$ millioner celler.
>
> **Løsning (b) — Størrelse efter 10 dage:**
>
> $N(10) = N_0 \cdot e^{\frac{\alpha}{\beta}(1 - e^{-\beta \cdot 10})}$
>
> **1. Beregn $e^{-\beta t}$:**
> $$ e^{-0,05 \cdot 10} = e^{-0,5} \approx 0,6065 $$
>
> **2. Beregn $1 - e^{-\beta t}$:**
> $$ 1 - 0,6065 = 0,3935 $$
>
> **3. Beregn $\frac{\alpha}{\beta}(1 - e^{-\beta t})$:**
> $$ 6 \cdot 0,3935 = 2,361 $$
>
> **4. Beregn $e^{\ldots}$:**
> $$ e^{2,361} \approx 10,60 $$
>
> **5. Gang med $N_0$:**
> $$ N(10) = 10^6 \cdot 10,60 = 1,06 \cdot 10^7 \text{ celler} $$
>
> Efter 10 dage er tumoren ca. $10,6$ millioner celler — omtrent $2,6\%$ af den maksimale størrelse.
>
> **Løsning (c) — Tid til $50\%$ af $N_\infty$:**
>
> Vi skal finde $t$, så $N(t) = 0,5 \cdot N_\infty$:
>
> $$ N_0 \cdot e^{\frac{\alpha}{\beta}(1 - e^{-\beta t})} = 0,5 \cdot N_0 \cdot e^{\alpha/\beta} $$
>
> **1. Forkort $N_0$ på begge sider:**
> $$ e^{\frac{\alpha}{\beta}(1 - e^{-\beta t})} = 0,5 \cdot e^{\alpha/\beta} $$
>
> **2. Tag $\ln$ på begge sider:**
> $$ \frac{\alpha}{\beta}(1 - e^{-\beta t}) = \ln(0,5) + \frac{\alpha}{\beta} $$
>
> **3. Isolér $e^{-\beta t}$:**
> $$ 1 - e^{-\beta t} = \frac{\beta}{\alpha}\ln(0,5) + 1 $$
>
> Hmm — det giver $1 - e^{-\beta t} = \frac{1}{6} \cdot (-0,693) + 1 = -0,1155 + 1 = 0,8845$
>
> $$ e^{-\beta t} = 1 - 0,8845 = 0,1155 $$
>
> **4. Isolér $t$:**
> $$ -\beta t = \ln(0,1155) \implies t = -\frac{\ln(0,1155)}{\beta} $$
>
> $$ t = -\frac{-2,158}{0,05} = \frac{2,158}{0,05} = 43,2 \text{ dage} $$
>
> Det tager ca. $43$ dage at nå halvdelen af den maksimale tumorstørrelse.
