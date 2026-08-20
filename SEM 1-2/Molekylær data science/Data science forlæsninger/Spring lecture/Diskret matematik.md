*Diskret matematik — kombinatorik (hvor mange måder?) og grafteori (netværk af knuder og kanter). Anvendt til sekvensanalyse, netværksbiologi og kombinatorisk optimering.*

> [!tip] For en 5-årig: At tælle hvor mange måder
> **Kombinatorik:** Hvor mange forskellige sandwich kan du lave med 3 slags brød og 4 slags pålæg? $3 \times 4 = 12$!
>
> **Grafteori:** Forestil dig et kort over venner. Hver ven er en prik (knude), og hvis to venner kender hinanden, tegner du en streg (kant). Det er en **graf** — og den kan fortælle hvem der kender flest, og hvordan rygtet spreder sig.

---

## 01 Kombinatorik — tælling

### Tællereglen (produktreglen)
Hvis der er $m$ måder at vælge A og $n$ måder at vælge B, så er der $m \times n$ måder at vælge A og B:

$$
\text{Total} = m \cdot n
$$

### Fakultet
$$
n! = n \cdot (n-1) \cdot (n-2) \cdot \dots \cdot 2 \cdot 1
$$

$5! = 5 \cdot 4 \cdot 3 \cdot 2 \cdot 1 = 120$

### Permutationer (rækkefølge betyder noget)
$P(n, k)$ = hvor mange måder at vælge $k$ elementer ud af $n$ **i en bestemt rækkefølge**:

$$
P(n, k) = \frac{n!}{(n-k)!}
$$

### Kombinationer (rækkefølge betyder ikke noget)
$C(n, k)$ = hvor mange måder at vælge $k$ elementer ud af $n$ **uden hensyn til rækkefølge**:

$$
\binom{n}{k} = \frac{n!}{k!(n-k)!}
$$

> [!question]- Hvor mange DNA-sekvenser?
> Hvor mange forskellige 4-base DNA-sekvenser findes der? (A, T, G, C — 4 baser)
>
> (a) Hvis baserne kan gentages?
> (b) Hvis hver base må bruges præcis én gang?
>
> **Løsning:**
>
> (a) **Produktreglen:** $4 \cdot 4 \cdot 4 \cdot 4 = 4^4 = 256$
>
> (b) **Permutation:** $4! = 24$ — svarende til at arrangere de 4 baser i alle rækkefølger.

> [!question]- Hvor mange 3-aminosyre-peptider?
> Ud fra 20 aminosyrer. Hvor mange 3-aminosyre-peptider findes der?
>
> **Løsning:**
>
> **Produktreglen:** $20 \cdot 20 \cdot 20 = 20^3 = 8000$ mulige peptider.
>
> (Hvis hver aminosyre må bruges flere gange.)

---

## 02 Binomialfordeling

Sandsynligheden for præcis $k$ successer i $n$ uafhængige forsøg, hver med sandsynlighed $p$:

$$
P(X = k) = \binom{n}{k} p^k (1-p)^{n-k}
$$

> [!question]- Mutationer i et gen
> Et gen på 1000 baser har mutationsrate $p = 0,001$ pr. base. Hvad er sandsynligheden for præcis 2 mutationer?
>
> **Løsning:**
>
> $$ P(X = 2) = \binom{1000}{2} \cdot 0,001^2 \cdot 0,999^{998} $$
>
> $$ \binom{1000}{2} = \frac{1000 \cdot 999}{2} = 499.500 $$
>
> $$ P \approx 499.500 \cdot 10^{-6} \cdot 0,368 \approx 0,184 $$
>
> Ca. $18,4\%$ sandsynlighed for præcis 2 mutationer.

---

## 03 Grafteori

En **graf** $G = (V, E)$ består af:
- $V$ = knuder (vertices/noder)
- $E$ = kanter (edges) — forbindelser mellem knuder

### Typer af grafer

| Type | Kant-betydning | Eksempel |
|:---|:---|:---|
| **Urettet** | Venner (gensidig) | Facebook |
| **Rettet** | Følger (én vej) | Twitter |
| **Vægtet** | Kant har en styrke/afstand | Protein-protein interaktion |
| **Træ** | Sammenhængende, ingen cykler | Beslutningstræ, stamtræ |

### Grad (degree)
Antallet af kanter der rammer en knude.

I en urettet graf: $\sum \deg(v) = 2|E|$ (hver kant tæller 2 gange)

### Vej og sti
- **Vej:** En sekvens af knuder hvor hver naboknude er forbundet
- **Længde:** Antal kanter
- **Korteste vej:** Den vej med færrest kanter (BFS-algoritme)

> [!question]- Protein-interaktionsnetværk
> Et protein-interaktionsnetværk har 100 proteiner og 450 interaktioner.
>
> (a) Hvad er den gennemsnitlige grad?
> (b) Hvis et protein har grad 45, hvad betyder det så?
>
> **Løsning:**
>
> (a) $\bar{d} = \frac{2|E|}{|V|} = \frac{2 \cdot 450}{100} = 9$
>
> Gennemsnitligt interagerer hvert protein med 9 andre.
>
> (b) Grad 45 er langt over gennemsnittet — dette protein er et **hub** (centralt protein). Hvis det fjernes, falder netværket sandsynligvis fra hinanden.

---

## 04 Træer

Et **træ** er en sammenhængende graf **uden cykler**.

| Egenskab | Formel |
|:---|:---|
| Kanter i et træ med $n$ knuder | $|E| = |V| - 1$ |
| Blade i et binært træ | Ca. halvdelen af knuderne |

**Anvendelse:** Beslutningstræer, fylogenetiske træer, stamtræer.

---

## 05 Overfitting i grafteori?

Ikke direkte — men **netværksanalyse** kan overfitte på samme måde som beslutningstræer:

| Problem | Symptom | Løsning |
|:---|:---|:---|
| **For mange kanter** | Alle knuder er forbundet → ingen struktur | Sæt en interaktions-score-tærskel |
| **For få kanter** | Netværket falder fra hinanden i små komponenter | Brug svagere interaktioner |

Se også: [[Decision Trees & Random Forests]] for træer i ML, [[Markov State Models (MSM)]] for overgangsgrafer, [[Statistik]] for binomialfordeling.
