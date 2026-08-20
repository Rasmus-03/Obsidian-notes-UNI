*Introduktion til statistik — hypotesetest, chi²-test, ANOVA og konfidensintervaller til molekylærbiologi.*

> [!tip] For en 5-årig: Er det tilfældigt eller ej?
> Forestil dig at du kaster en mønt 10 gange og får 9 plat. Er mønten **tuklet**, eller var det bare held?
>
> Statistik er at sætte tal på: "Hvis mønten var fair, hvor sandsynligt er det så at få 9 ud af 10 plat?"
> - Hvis sandsynligheden er **lille** (< 5%), siger vi: "Mønten er nok tuklet" (signifikant)
> - Hvis sandsynligheden er **stor**, siger vi: "Det var bare held" (ikke signifikant)
>
> I biologi: "Virker denne behandling?" → Statistik siger ja/nej med en fejlmargin.

---

## 01 Beskrivende statistik

Før man tester hypoteser, skal man kende sine data.

### Middelværdi (gennemsnit)
$$
\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i
$$

### Varians
$$
s^2 = \frac{1}{n-1} \sum_{i=1}^{n} (x_i - \bar{x})^2
$$

### Standardafvigelse
$$
s = \sqrt{s^2}
$$

**Fortolkning:** $s$ er den gennemsnitlige afstand fra middelværdien. $68\%$ af data ligger inden for $\bar{x} \pm s$ (normalfordeling).

---

## 02 Normalfordeling

De fleste statistiske test antager at data er normalfordelt.

$$
f(x) = \frac{1}{\sigma \sqrt{2\pi}} e^{-\frac{1}{2}\left(\frac{x-\mu}{\sigma}\right)^2}
$$

- $68\%$ af data: $\mu \pm \sigma$
- $95\%$ af data: $\mu \pm 2\sigma$
- $99,7\%$ af data: $\mu \pm 3\sigma$

> [!question]- Hvor mange celler er i hver størrelseskategori?
> En cellepopulation har middelstørrelse $\mu = 10$ µm og $s = 2$ µm. Antag normalfordeling. Hvor stor en andel af cellerne er større end 14 µm?
>
> **Løsning:**
>
> **1. Beregn $z$-score:**
> $$ z = \frac{x - \mu}{\sigma} = \frac{14 - 10}{2} = 2 $$
>
> **2. Slå op i normalfordeling:** $z = 2$ svarer til $97,7\%$ af data **under** 14 µm.
>
> **3. Andel over 14 µm:**
> $$ 100\% - 97,7\% = 2,3\% $$
>
> Ca. $2,3\%$ af cellerne er større end 14 µm.

---

## 03 Konfidensinterval

Et konfidensinterval siger: "Den sande middelværdi ligger med $95\%$ sandsynlighed i dette interval."

$$
95\%\text{-KI}: \quad \bar{x} \pm t_{0,05,\; df} \cdot \frac{s}{\sqrt{n}}
$$

For store $n$ ($>30$) kan man bruge $z = 1,96$ i stedet for $t$.

**Fortolkning:** Hvis du gentager forsøget 100 gange, vil den sande værdi ligge i intervallet i 95 af dem.

> [!question]- Konfidensinterval for protein koncentration
> Du måler proteinkoncentration i 10 prøver: $\bar{x} = 45$ µg/mL, $s = 6$ µg/mL. Find $95\%$-konfidensintervallet.
>
> **Løsning:**
>
> **1. Find $t$-værdien:** $df = 9$, $t_{0,05} = 2,262$
>
> **2. Beregn margin:** $2,262 \cdot \frac{6}{\sqrt{10}} = 2,262 \cdot 1,897 = 4,29$
>
> **3. Interval:**
> $$ 45 \pm 4,29 = [40,71;\; 49,29] \text{ µg/mL} $$
>
> Vi er $95\%$ sikre på at den sande middelkoncentration ligger mellem $40,7$ og $49,3$ µg/mL.

---

## 04 Hypotesetest — grundidéen

1. **$H_0$ (nulhypotese):** "Der er ingen forskel / ingen effekt"
2. **$H_A$ (alternativ hypotese):** "Der er en forskel / en effekt"
3. **Teststørrelse:** Beregn et tal fra data (f.eks. $t$, $\chi^2$, $F$)
4. **$p$-værdi:** "Hvis $H_0$ er sand, hvor sandsynligt er det så at få dette resultat?"
5. **Konklusion:** $p < 0,05$ → forkast $H_0$ (signifikant). $p > 0,05$ → behold $H_0$

> [!WARNING] p-værdi fælder
> - $p > 0,05$ betyder **ikke** at $H_0$ er sand — kun at vi ikke kan afvise den
> - $p < 0,05$ betyder **ikke** at effekten er stor — kun at den er statistisk signifikant
> - $p = 0,04$ og $p = 0,06$ er ikke "totalt forskellige" — brug sund fornuft

---

## 05 t-test (sammenlign to grupper)

**Hvornår:** Sammenligne middelværdier af to grupper (f.eks. behandling vs. kontrol).

### To-sample t-test (uafhængige grupper)
$$
t = \frac{\bar{x}_1 - \bar{x}_2}{s_p \cdot \sqrt{\frac{1}{n_1} + \frac{1}{n_2}}}, \quad s_p = \sqrt{\frac{(n_1-1)s_1^2 + (n_2-1)s_2^2}{n_1 + n_2 - 2}}
$$

### Paired t-test (samme prøve målt to gange)
$$
t = \frac{\bar{d}}{s_d / \sqrt{n}}
$$
hvor $d_i = x_{i,\text{før}} - x_{i,\text{efter}}$.

> [!question]- Virker behandlingen?
> 8 mus får målt blodsukker før og efter behandling:
>
> | Mus | Før | Efter | Difference $d$ |
> |:---|:---|:---|:---|
> | 1 | 10 | 7 | 3 |
> | 2 | 12 | 9 | 3 |
> | 3 | 9 | 8 | 1 |
> | 4 | 11 | 8 | 3 |
> | 5 | 13 | 10 | 3 |
> | 6 | 8 | 7 | 1 |
> | 7 | 10 | 9 | 1 |
> | 8 | 11 | 8 | 3 |
>
> Er faldet signifikant ($\alpha = 0,05$)?
>
> **Løsning (paired t-test):**
>
> **1. Beregn differencer:** $\bar{d} = \frac{3+3+1+3+3+1+1+3}{8} = 2,25$
>
> **2. Beregn $s_d$:**
> $$ s_d = \sqrt{\frac{(3-2,25)^2 + \dots}{7}} = 1,035 $$
>
> **3. Beregn $t$:**
> $$ t = \frac{2,25}{1,035 / \sqrt{8}} = \frac{2,25}{0,366} = 6,15 $$
>
> **4. Sammenlign med kritisk værdi:** $df = 7$, $t_{0,05} = 2,365$
>
> $6,15 > 2,365$ → $p < 0,05$ → **Behandlingen virker signifikant.**

---

## 06 Chi²-test (χ²) — er der en sammenhæng?

**Hvornår:** Tælle-data (kategoriske variable). Er to variable uafhængige?

$$
\chi^2 = \sum \frac{(O - E)^2}{E}
$$

hvor $O$ = observeret antal, $E$ = forventet antal (hvis uafhængige).

> [!question]- Er genvariant og sygdom forbundet?
> | | Syg | Rask | Total |
> |:---|:---|:---|:---|
> | Variant A | 40 | 60 | 100 |
> | Variant B | 20 | 80 | 100 |
> | Total | 60 | 140 | 200 |
>
> **Løsning:**
>
> **1. Forventede værdier (hvis uafhængige):**
> $E = \frac{\text{row total} \cdot \text{col total}}{\text{grand total}}$
>
> | | Syg | Rask |
> |:---|:---|:---|
> | Variant A | $\frac{100 \cdot 60}{200} = 30$ | $\frac{100 \cdot 140}{200} = 70$ |
> | Variant B | $\frac{100 \cdot 60}{200} = 30$ | $\frac{100 \cdot 140}{200} = 70$ |
>
> **2. Beregn $\chi^2$:**
> $$ \chi^2 = \frac{(40-30)^2}{30} + \frac{(60-70)^2}{70} + \frac{(20-30)^2}{30} + \frac{(80-70)^2}{70} $$
> $$ \chi^2 = \frac{100}{30} + \frac{100}{70} + \frac{100}{30} + \frac{100}{70} = 3,33 + 1,43 + 3,33 + 1,43 = 9,52 $$
>
> **3. Sammenlign:** $df = (2-1)(2-1) = 1$, kritisk $\chi^2_{0,05} = 3,84$
>
> $9,52 > 3,84$ → **Der er en signifikant sammenhæng mellem variant A/B og sygdom.**

---

## 07 ANOVA (sammenlign 3+ grupper)

**Hvornår:** Sammenligne middelværdier af **tre eller flere** grupper.

**Hvorfor ikke bare t-test:** Hvis du sammenligner 5 grupper med t-test, skal du lave 10 test — risikoen for tilfældigt signifikante resultater stiger eksplosivt.

ANOVA tester: "Er mindst én gruppe forskellig fra de andre?"

$$
F = \frac{\text{varians mellem grupper}}{\text{varians inden for grupper}}
$$

- $F \approx 1$ → grupperne er ens
- $F \gg 1$ → mindst én gruppe er anderledes
- Efter signifikant ANOVA: **post-hoc test** (Tukey, Bonferroni) for at finde hvilke grupper der er forskellige

> [!question]- Tre dyrkningsmedier — forskellig vækst?
> | Medium A | Medium B | Medium C |
> |:---|:---|:---|
> | 12 | 8 | 15 |
> | 14 | 9 | 13 |
> | 10 | 10 | 17 |
> | 12 | 7 | 15 |
>
> Er der forskel på cellevækst i de tre medier?
>
> **Løsning (one-way ANOVA):**
>
> **1. Beregn gruppemiddelværdier:**
> $$ \bar{x}_A = 12,\; \bar{x}_B = 8,5,\; \bar{x}_C = 15 $$
>
> **2. Beregn total-middelværdi:**
> $$ \bar{x}_{\text{total}} = \frac{12+14+10+12+8+9+10+7+15+13+17+15}{12} = 11,83 $$
>
> **3. Varians mellem grupper (SS_between):**
> $$ SS_b = 4[(12-11,83)^2 + (8,5-11,83)^2 + (15-11,83)^2] $$
> $$ SS_b = 4[0,03 + 11,09 + 10,05] = 4 \cdot 21,17 = 84,68 $$
>
> **4. Varians inden for grupper (SS_within):**
> $$ SS_w = \sum (x_i - \bar{x}_{\text{gruppe}})^2 $$
> $$ SS_w = (2+4+4+0) + (0,25+0,25+2,25+2,25) + (0+4+4+0) = 10 + 5 + 8 = 23 $$
>
> **5. Beregn $F$:**
> $$ MS_b = \frac{84,68}{2} = 42,34, \quad MS_w = \frac{23}{9} = 2,56 $$
> $$ F = \frac{42,34}{2,56} = 16,54 $$
>
> **6. Sammenlign:** $F_{0,05,\; df=2,9} = 4,26$
>
> $16,54 > 4,26$ → **Der er signifikant forskel mellem medierne.** (Post-hoc test ville vise at B < A < C.)

---

## 08 Sammenhæng — hvilken test?

| Situation | Data-type | Test |
|:---|:---|:---|
| To grupper, samme prøve målt to gange | Kontinuert, parret | Paired t-test |
| To grupper, uafhængige | Kontinuert | Two-sample t-test |
| Tre+ grupper | Kontinuert | ANOVA + post-hoc |
| Tælle-data, to kategorier | Kategorisk | Chi²-test |
| Sammenligning med en kendt værdi | Kontinuert | One-sample t-test |

Se også: [[Lineær regression]] for sammenhæng mellem kontinuerte variable.
