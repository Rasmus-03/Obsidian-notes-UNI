# Nernst-ligning

> [!tip] **For en 5-årig:**  
> Forestil dig en dør med en "kun ud"-skilt på den ene side og "kun ind" på den anden. Hvis der er mange flere mennesker på den ene side, vil de skubbe for at komme igennem. Nernst-ligningen fortæller præcis hvor meget "skub" (spænding) der skal til for at stoppe strømmen af en bestemt ion gennem en kanal.

## Definition
Nernst-ligningen beregner **ligevegtspotentialet** (E_ion) for en given ion – den membranpotentialeværdi hvor der netop er ligevægt mellem den kemiske gradient og den elektriske gradient for den pågældende ion.

## Formel
$$ E_X = \frac{RT}{zF} \ln\frac{[X]_{\text{ude}}}{[X]_{\text{inde}}} $$

Ved 37°C (kropstemperatur) for en én-værdig ion:
$$ E_X = \frac{61.5}{z} \log\frac{[X]_{\text{ude}}}{[X]_{\text{inde}}} \text{ (mV)} $$

Hvor:
- R = gaskonstanten
- T = temperatur (K)
- z = ionens ladning (+1 for Na⁺/K⁺, +2 for Ca²⁺)
- F = Faradays konstant
- 61.5 mV = 2.303 × RT/F ved 37°C

## Typiske ligevægtspotentialer (nervecelle)
| Ion | [inde] (mM) | [ude] (mM) | E_ion (mV) |
|-----|-------------|-------------|------------|
| K⁺ | 140 | 5 | -90 mV |
| Na⁺ | 15 | 150 | +65 mV |
| Ca²⁺ | 0.0001 | 2 | +123 mV |
| Cl⁻ | 10 | 110 | -65 mV |

## Eksamenstræning
- Spørgsmålstype: "Beregn ligevægtspotentialet for K⁺ ved 37°C" → brug Nernst: E_K = 61.5 × log(5/140) = -90 mV
- Spørgsmålstype: "Hvorfor er hvilemembranpotentialet tæt på E_K?" → membranen er mest permeabel for K⁺ i hvile
- Spørgsmålstype: "Hvad sker der med E_ion hvis den ekstracellulære koncentration ændres?" → log-forholdet ændres → E_ion ændres

## Relationer
[[Goldman-ligningen]] • [[Hvilemembranpotentiale]] • [[Aktionspotentiale]] • [[Spændingsstyrede ionkanaler]]
