
*Beskriver hvordan frysepunktsnedsættelse og pH hænger sammen via det samlede antal partikler.*

---

## Det teoretiske princip
Frysepunktet bestemmes af det **totale antal partikler** ($b_{total}$), mens pH bestemmes af **forholdet** mellem syre og base. I en puffer skal man huske at tælle alle dele: syre-molekyler, base-ioner og mod-ioner (f.eks. $Na^+$).

### Formlen for frysepunktsnedsættelse
$$ \Delta T_f = K_f \cdot b_{total} $$
- $\Delta T_f$: Ændring i frysepunkt $(K$ eller $^\circ C$).
- $K_f$: Kryoskopisk konstant (for vand: $1,86 \, \frac{K \cdot kg}{mol}$).
- $b_{total}$: Samlet molalitet af alle partikler (mol/kg).

---

## Eksempel: Eddikesyre-puffer (fra opgave)
**Kontekst:** En puffer af $0,10 \, M$ eddikesyre ($CH_3COOH$) og $0,15 \, M$ natriumacetat ($CH_3COONa$).

### Trin 1: Optælling af partikler $(b_{total})$
Vi ser på hvordan stofferne findes i opløsningen:
1. **Eddikesyre ($CH_3COOH$):** Svag syre, dissocierer næsten ikke. Tæller som **1 partikel**.
   - Bidrag: $0,10 \, M \cdot 1 = 0,10 \, mol/L$
2. **Natriumacetat ($CH_3COONa$):** Salt, deler sig fuldstændigt i $CH_3COO^-$ og $Na^+$. Tæller som **2 partikler**.
   - Bidrag: $0,15 \, M \cdot 2 = 0,30 \, mol/L$

$$ b_{total} = 0,10 \, mol/L + 0,30 \, mol/L = 0,40 \, mol/L $$
*(Vi antager $1 \, L \approx 1 \, kg$, så $b_{total} = 0,40 \, mol/kg$)*.

### Trin 2: Beregning med enheder
Vi indsætter i formlen og ser hvordan enhederne annullerer hinanden:
$$ \Delta T_f = (1,86 \, \frac{K \cdot \cancel{kg}}{\cancel{mol}}) \cdot (0,40 \, \frac{\cancel{mol}}{\cancel{kg}}) $$
$$ \Delta T_f = 1,86 \cdot 0,40 \, K = \mathbf{0,744 \, K} $$

### Trin 3: Endeligt frysepunkt
Da vand fryser ved $0 \, ^\circ C$, trækker vi nedsættelsen fra:
$$ \text{Frysepunkt} = 0 \, ^\circ C - 0,744 \, ^\circ C = \mathbf{-0,744 \, ^\circ C} $$

---
[[1 Formelsamling KE559 – Grundlæggende Kemi]]
[[Pufferligningen – forklaring]]
[[pH og pOH – forklaring]]
