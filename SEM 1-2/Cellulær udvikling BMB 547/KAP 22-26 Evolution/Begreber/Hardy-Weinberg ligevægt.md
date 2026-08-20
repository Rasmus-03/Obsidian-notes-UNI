---
aliases: [Hardy-Weinberg, HW-ligevægt]
---
# Hardy-Weinberg ligevægt

## Definition
Hardy-Weinberg ligevægt er en matematisk model, der beskriver, hvordan allel- og genotypefrekvenser forbliver konstante fra generation til generation i en population, hvis ingen evolutionære kræfter virker. Modellen fungerer som en **null-hypotese for evolution**.

## Antagelser (svarer til "Beskriv hvilke antagelser man må gøre")
For at en population er i Hardy-Weinberg ligevægt skal følgende antagelser være opfyldt:
1. **Ingen mutation** – ingen nye alleler dannes
2. **Tilfældig parring** – ingen seksuel selektion (panmixi)
3. **Ingen naturlig selektion** – alle alleler giver samme fitness
4. **Uendelig populationsstørrelse** – ingen genetisk drift
5. **Ingen genflow** – ingen ind- eller udvandring

## Hardy-Weinberg ligningen
- \(p\) = frekvens af dominant allel (A)
- \(q\) = frekvens af recessiv allel (a)
- \(p + q = 1\)
- \(p^2 + 2pq + q^2 = 1\)
  - \(p^2\) = frekvens af homozygote dominante (AA)
  - \(2pq\) = frekvens af heterozygote (Aa)
  - \(q^2\) = frekvens af homozygote recessive (aa)

## Vurdering af om et gen er i HW-ligevægt (svarer til "Redegør for hvorvidt")
1. Beregn \(q^2\) = antal syge / total population
2. \(q = \sqrt{q^2}\)
3. \(p = 1 - q\)
4. Forventet genotypefrekvens: \(p^2\) (AA), \(2pq\) (Aa), \(q^2\) (aa)
5. Sammenlign med observerede frekvenser via chi-i-anden-test
6. Hvis signifikant forskel → gen ER IKKE i HW-ligevægt → evolutionære kræfter virker

## Eksempel: Tay-Sachs
- Frekvens: 1/320.000 nyfødte → \(q^2 = 1/320.000\) → \(q \approx 1/566\)
- \(p \approx 565/566 \approx 0,9982\)
- Forventet heterozygotfrekvens: \(2pq \approx 2 \times 565/566 \times 1/566 \approx 0,0035\) (ca. 1 ud af 283)
- Observeret bærerfrekvens blandt Ashkenazi-jøder: ~1/27 (meget højere)
- → Balanceret selektion og founder effect → **IKKE i HW-ligevægt**

## Eksamenstræning
- **Spørgsmålstype**: "Beskriv hvilke antagelser man må gøre for at beregne HW ligevægt" → list de 5 antagelser
- **Spørgsmålstype**: "Redegør for, hvorvidt genet for Tay-Sachs er i HW ligevægt" → beregn \(q^2\) → \(q\) → \(p\) → \(2pq\) → sammenlign → balanceret selektion → ikke i ligevægt

## Relationer
[[Tay-Sachs]] • [[Heterozygot fordel]] • [[Balanceret selektion]] • [[Evolutionaere mekanismer]] • [[Genetisk drift]] • [[Genflow (genstrøm)]] • [[Founder effekt]]
