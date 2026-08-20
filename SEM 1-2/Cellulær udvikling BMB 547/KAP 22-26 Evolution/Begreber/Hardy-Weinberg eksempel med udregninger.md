# Hardy-Weinberg: Eksempel med fulde udregninger

## Eksempel 1: Sicklecell-anæmi (HbS)

### Givet
I en vestafrikansk population har **1,8% af nyfødte** sicklecell-anæmi (genotype **HbS/HbS**). Sygdommen er recessiv.

- Normalallel: **HbA** (dominant)
- Sygdomsallel: **HbS** (recessiv)
- Andel syge: **1,8%** = 0,018

### Trin 1: Find q²
\[ q^2 = \text{frekvens af homozygote recessive (syge)} = 0,018 \]

### Trin 2: Find q (frekvens af HbS-allelen)
\[ q = \sqrt{q^2} = \sqrt{0,018} \]

**Udførlig udregning:**
\[
\begin{aligned}
\sqrt{0,018} &= \sqrt{18 \times 10^{-3}} \\
&= \sqrt{18} \times \sqrt{10^{-3}} \\
&\approx 4,243 \times 0,03162 \\
&\approx 0,134
\end{aligned}
\]

> **Kontrol:** 0,134² = 0,0180 ✅

\[ \boxed{q = 0,134} \]

### Trin 3: Find p (frekvens af HbA-allelen)
\[ p + q = 1 \]
\[ p = 1 - q = 1 - 0,134 = 0,866 \]

> **Kontrol:** p + q = 0,866 + 0,134 = 1,000 ✅

### Trin 4: Forventede genotypefrekvenser

**Homozygote normale (HbA/HbA):**
\[ p^2 = 0,866^2 \]

**Udførlig udregning:**
\[
\begin{aligned}
0,866^2 &= 0,866 \times 0,866 \\
&= (0,87 - 0,004)^2 \\
&= 0,87^2 - 2 \times 0,87 \times 0,004 + 0,004^2 \\
&= 0,7569 - 0,00696 + 0,000016 \\
&\approx 0,750
\end{aligned}
\]

\[ \boxed{p^2 = 0,750} \]

**Heterozygote bærere (HbA/HbS):**
\[ 2pq = 2 \times 0,866 \times 0,134 \]

**Udførlig udregning:**
\[
\begin{aligned}
2pq &= 2 \times 0,866 \times 0,134 \\
&= 2 \times (0,866 \times 0,134) \\
0,866 \times 0,134 &= 0,866 \times (0,1 + 0,034) \\
&= 0,0866 + 0,02944 \\
&= 0,1160 \\
2pq &= 2 \times 0,1160 = 0,232
\end{aligned}
\]

\[ \boxed{2pq = 0,232} \]

**Homozygote syge (HbS/HbS):**
\[ q^2 = 0,018 \]

### Trin 5: Tjek at sum = 1
\[ p^2 + 2pq + q^2 = 0,750 + 0,232 + 0,018 = 1,000 \] ✅

### Trin 6: Oversæt til faktiske antal (hvis population = 10.000)

| Genotype | Andel | Antal ud af 10.000 |
|----------|-------|--------------------|
| HbA/HbA (raske) | 75,0% | 7.500 |
| HbA/HbS (bærere) | 23,2% | 2.320 |
| HbS/HbS (syge) | 1,8% | 180 |
| **Total** | **100%** | **10.000** |

**Hvad kan vi konkludere?**
- **23,2%** af populationen er **bærere** (heterozygote) – de har malariaresistens!
- Dette er langt højere end sygdomsfrekvensen (1,8%)
- → **Balanceret selektion** holder HbS-allelen oppe, fordi heterozygote har højere fitness i malariaområder

---

## Eksempel 2: Cystisk fibrose (CF) i Danmark

### Givet
I den danske population er **1 ud af 4.700** nyfødte ramt af cystisk fibrose (recessiv sygdom).

\[ q^2 = \frac{1}{4700} \]

### Trin 1: q² som decimal
\[ q^2 = \frac{1}{4700} \approx 0,0002128 \]

### Trin 2: Find q
\[ q = \sqrt{0,0002128} \]

**Udførlig udregning:**
\[
\begin{aligned}
\sqrt{0,0002128} &= \sqrt{2,128 \times 10^{-4}} \\
&= \sqrt{2,128} \times \sqrt{10^{-4}} \\
&\approx 1,459 \times 0,01 \\
&\approx 0,0146
\end{aligned}
\]

\[ \boxed{q = 0,0146} \]

### Trin 3: Find p
\[ p = 1 - q = 1 - 0,0146 = 0,9854 \]

### Trin 4: Forventede genotypefrekvenser

**Homozygote normale (CF/CF⁺):**
\[ p^2 = 0,9854^2 \]

**Udførlig udregning:**
\[
\begin{aligned}
0,9854^2 &= (1 - 0,0146)^2 \\
&= 1^2 - 2 \times 1 \times 0,0146 + 0,0146^2 \\
&= 1 - 0,0292 + 0,000213 \\
&\approx 0,9710
\end{aligned}
\]

\[ \boxed{p^2 = 0,9710} \]

**Heterozygote bærere (CF/CF⁻):**
\[ 2pq = 2 \times 0,9854 \times 0,0146 \]

**Udførlig udregning:**
\[
\begin{aligned}
2pq &= 2 \times (0,9854 \times 0,0146) \\
0,9854 \times 0,0146 &= 0,9854 \times (0,015 - 0,0004) \\
&= 0,01478 - 0,000394 \\
&= 0,01439 \\
2pq &= 2 \times 0,01439 = 0,02878
\end{aligned}
\]

\[ \boxed{2pq = 0,0288} \]

### Trin 5: Oversæt til bærerfrekvens

\[
\text{Bærerfrekvens} = 2pq = 0,0288 \approx \frac{1}{34,7}
\]

**Det betyder:** Ca. **1 ud af 35 danskere** er bærere af cystisk fibrose – uden selv at vide det!

### Trin 6: Tjek om populationen er i HW-ligevægt

Hvis vi **observerer** at bærerfrekvensen i Danmark faktisk er ~1/25 (højere end forventet), tyder det på at **CFTR-genet ikke er i HW-ligevægt**.

**Mulige årsager:**
- **Selektiv fordel for heterozygote** (beskyttelse mod kolera/tuberkulose?) – omdiskuteret
- **Genetisk drift** i små isolerede populationer
- **Mutation rate** (CFTR har høj mutationsrate)

---

## Eksempel 3: Omvendt regning – find sygdomsfrekvens fra bærerfrekvens

### Givet
I en population er **1 ud af 30** bærere af en recessiv sygdom.

\[ 2pq = \frac{1}{30} \approx 0,0333 \]

### Trin 1: Antag p ≈ 1 (når q er lille)
Hvis sygdommen er sjælden, er q meget lille, så p ≈ 1.

\[
2pq \approx 2q \quad (\text{når } p \approx 1)
\]

### Trin 2: Find q
\[
2q \approx 0,0333 \implies q \approx \frac{0,0333}{2} = 0,0167
\]

### Trin 3: Find q² (sygdomsfrekvens)
\[
q^2 = (0,0167)^2 = 0,000279
\]

\[
q^2 = 0,000279 \implies \frac{1}{0,000279} \approx \frac{1}{3584}
\]

**Svar:** Ca. **1 ud af 3.600** nyfødte vil have sygdommen.

---

## Eksempel 4: Chi-i-anden test for HW-ligevægt

### Givet
Du undersøger 200 personer for et gen med to alleler (A, a). Du **observerer**:

| Genotype | Observeret (O) |
|----------|---------------|
| AA | 105 |
| Aa | 80 |
| aa | 15 |
| **Total** | **200** |

### Trin 1: Beregn observerede allelfrekvenser

\[
\begin{aligned}
\text{Antal A-alleler} &= 2 \times 105 + 80 = 210 + 80 = 290 \\
\text{Antal a-alleler} &= 2 \times 15 + 80 = 30 + 80 = 110 \\
\text{Total alleler} &= 200 \times 2 = 400
\end{aligned}
\]

\[
p = \frac{290}{400} = 0,725 \quad\quad q = \frac{110}{400} = 0,275
\]

### Trin 2: Beregn forventede genotyper under HW

\[
\begin{aligned}
E(AA) &= p^2 \times 200 = 0,725^2 \times 200 = 0,5256 \times 200 = 105,1 \\
E(Aa) &= 2pq \times 200 = 2 \times 0,725 \times 0,275 \times 200 = 0,3988 \times 200 = 79,8 \\
E(aa) &= q^2 \times 200 = 0,275^2 \times 200 = 0,0756 \times 200 = 15,1
\end{aligned}
\]

**Udførlig udregning for 2pq:**
\[
\begin{aligned}
2pq &= 2 \times 0,725 \times 0,275 \\
&= 2 \times 0,199375 \\
&= 0,39875 \\
E(Aa) &= 0,39875 \times 200 = 79,75 \approx 79,8
\end{aligned}
\]

### Trin 3: Sammenlign observeret vs forventet

| Genotype | O | E | O−E | (O−E)² | (O−E)²/E |
|----------|---|---|-----|--------|----------|
| AA | 105 | 105,1 | −0,1 | 0,01 | 0,0001 |
| Aa | 80 | 79,8 | +0,2 | 0,04 | 0,0005 |
| aa | 15 | 15,1 | −0,1 | 0,01 | 0,0007 |
| **Total** | **200** | **200** | **0** | | **χ² = 0,0013** |

### Trin 4: Sammenlign med kritisk værdi

- **Frihedsgrader:** 3 genotyper − 2 estimerede parametre (p, q) = 1
- **Kritisk værdi (α = 0,05, df = 1):** 3,841
- **Vores χ² = 0,0013 << 3,841**

**Konklusion:** Ingen signifikant forskel mellem observeret og forventet → **Populationen er i HW-ligevægt** for dette gen. Ingen evolutionære kræfter virker.

---

## Eksempel 5: X-bundet recessiv sygdom (mest hyppig til eksamen!)

### Givet
**Rød-grøn farveblindhed** er X-bundet recessiv. I en population er **8% af mænd** farveblinde.

**Husk:** Mænd har kun ét X-kromosom → deres frekvens = q direkte!

### Trin 1: Find q
\[
q = \text{frekvens blandt mænd} = 0,08
\]

### Trin 2: Find p
\[
p = 1 - q = 1 - 0,08 = 0,92
\]

### Trin 3: Forventede frekvenser hos kvinder

| Genotype | Formel | Udregning | Andel |
|----------|--------|-----------|-------|
| Normal (XX) | p² | 0,92² = 0,8464 | 84,6% |
| Bærer (Xx) | 2pq | 2 × 0,92 × 0,08 = 0,1472 | 14,7% |
| Farveblind (xx) | q² | 0,08² = 0,0064 | 0,64% |

**Udførlig udregning for 2pq:**
\[
\begin{aligned}
2pq &= 2 \times 0,92 \times 0,08 \\
&= 2 \times 0,0736 \\
&= 0,1472
\end{aligned}
\]

### Trin 4: Fortolkning
- **8% af mænd** er farveblinde
- **Kun 0,64% af kvinder** er farveblinde (sjældnere fordi de skal have to kopier)
- **14,7% af kvinder** er **bærere** – de ser normalt, men kan give allelen til deres sønner

### Trin 5: Hvor mange gange hyppigere hos mænd?
\[
\frac{q}{q^2} = \frac{0,08}{0,0064} = 12,5
\]

**Svar:** Farveblindhed er **12,5 gange hyppigere hos mænd** end hos kvinder.

---

## Oversigt: Formler der skal sidde på rygraden

| Hvad skal findes? | Formel | Bruges når… |
|-------------------|--------|-------------|
| q | \(\sqrt{q^2}\) | Du har sygdomsfrekvensen |
| p | \(1 - q\) | Du har q |
| Bærerfrekvens | \(2pq\) | Du har p og q |
| Sygdomsfrekvens | \(q^2\) | Du har q |
| Forventet antal | \(p^2 \times N\) | Du skal sammenligne O vs E |
| χ² | \(\sum \frac{(O-E)^2}{E}\) | Du tester HW-ligevægt |

## Eksamenstips
- **Start altid med at skriv p + q = 1 og p² + 2pq + q² = 1 op** – det giver point
- **Vis ALLE mellemregninger** – også selvom det er nemt
- **Brug videnskabelig notation** når tal er meget små (fx 1,8 × 10⁻²)
- **Kontrollér** at p² + 2pq + q² = 1 til sidst
- **Hvis q er meget lille** (< 0,05), kan du approksimere 2pq ≈ 2q
- **X-bundne gener:** Mænds frekvens = q, kvinders genotyper = HW som normalt

## Relationer
[[Hardy-Weinberg ligevægt]] • [[Sicklecelle-anæmi]] • [[Tay-Sachs]] • [[Heterozygot fordel]] • [[Balanceret selektion]] • [[Populationsgenetik]]
