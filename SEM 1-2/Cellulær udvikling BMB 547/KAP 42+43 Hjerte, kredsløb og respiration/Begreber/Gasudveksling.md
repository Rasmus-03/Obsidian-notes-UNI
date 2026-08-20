# Gasudveksling

Gasudveksling sker ved **simpel diffusion** over den alveolære-kapillære membran. O₂ diffunderer fra alveoleluften til blodet, CO₂ diffunderer modsat.

## Daltons lov (partialtryk)

Total tryk = sum af partialtryk for hver gas:

\[
P_{\text{total}} = P_{N_2} + P_{O_2} + P_{CO_2} + P_{H_2O}
\]

Ved havniveau (1 atm = 760 mmHg):

| Gas | Fraktion (%) | Partialtryk (mmHg) |
|-----|:-----------:|:-----------------:|
| N₂ | 78.08 | 597 |
| O₂ | 20.95 | 159 |
| CO₂ | 0.04 | 0.3 |
| H₂O | ~0.5 | 3.7 |

### Partialtryk i luftvejene

| Sted | PO₂ (mmHg) | PCO₂ (mmHg) |
|-----|:---------:|:----------:|
| Atmosfærisk luft | 160 | 0.3 |
| Trachea (befugtet) | 150 | 0.3 |
| Alveoler | **100** | **40** |
| Arterielt blod | 95-100 | 40 |
| Venerøst blod | 40 | 45 |
| Vener (celle) | <5-40 | 45-50 |

## Henrys lov (gasopløselighed)

Mængden af gas der opløses i væske ∝ partialtryk × opløselighed:

\[
C = \alpha \times P
\]

- O₂-opløselighed: ~0.003 mL O₂/mL blod/mmHg
- CO₂-opløselighed: ~0.07 mL CO₂/mL blod/mmHg (CO₂ er ~20× mere opløselig end O₂)
- Det meste O₂ transporteres bundet til **hæmoglobin** (ikke blot opløst)

## Diffusionsprincippet (Ficks lov)

\[
V_{\text{gas}} = \frac{A \times D \times (P_1 - P_2)}{T}
\]

Hvor:
- A = overfladeareal (~70 m²)
- D = diffusionskonstant (∝ opløselighed/√MW)
- (P₁ − P₂) = partialtrykgradient
- T = membranens tykkelse (~0.2-0.5 μm)

### O₂-diffusion over alveole-kapillærmembranen

```
Alveolær PO₂ = 100 mmHg          Kapillær PO₂ start = 40 mmHg
    ┌──────────────────────────────┐
    │    Alveole                   │
    │    PO₂ = 100                 │
    └──────────────┬───────────────┘
                   │ ↓ O₂ diffusion
    ┌──────────────▼───────────────┐
    │  Kapillær    PO₂ 40 → 100    │  (0.25 sek)
    └──────────────────────────────┘
```

- **O₂ når ligevægt** (~100 mmHg) inden for **0.25 sekunder**
- **Kapillærtransittid**: ~0.75 sekunder → masser af tidsreserve
- Under træning: transittid kan falde til ~0.3 sek → diffusion-limited hos nogle

### CO₂-diffusion (modsat vej)

- CO₂-diffunderer ~20× hurtigere end O₂ (pga. højere opløselighed)
- Gradient: væv PCO₂ (45-50) → kapillær PCO₂ (40) → alveole PCO₂ (40)
- CO₂ transporteres som: **HCO₃⁻ (70%)**, **bundet til hæmoglobin (20%)**, **opløst (7%)**

## Ventilation-Perfusion (V/Q) matching

- **Ideel V/Q = 1** (alveoler ventileres = perfunderes)
- **Apex (top)**: V/Q ≈ 3 (for meget ventilation for lidt perfusion → ↑ PO₂, ↓ PCO₂)
- **Base (bund)**: V/Q ≈ 0.6 (mere perfusion → ↓ PO₂, ↑ PCO₂)
- **Shunt** (V/Q = 0): Perfusion uden ventilation → blodet iltsættes ikke (f.eks. atelektase)
- **Dødrum** (V/Q = ∞): Ventilation uden perfusion → spildt ventilation (f.eks. lungeemboli)

### Alveolær gasligning

\[
P_AO_2 = P_IO_2 - \frac{P_aCO_2}{R}
\]

Hvor:
- P_AO₂ = alveolær O₂-partialtryk
- P_IO₂ = inspiratorisk O₂-partialtryk (~150 mmHg ved havniveau)
- P_aCO₂ = arterielt CO₂-partialtryk (~40 mmHg)
- R = respiratorisk kvotient (~0.8 på blandet kost)

> **Eksempel**: P_AO₂ = 150 − (40/0.8) = 150 − 50 = **100 mmHg** ✅

### A-a gradient

\[
\text{A-a gradient} = P_AO_2 - P_aO_2
\]

- **Normal**: <10-20 mmHg (stiger med alder)
- **↑ A-a gradient**: Shunt, V/Q-mismatch, diffusionsdefekt
- **Normal A-a gradient + ↓ PaO₂**: Hypoventilation (↑ PCO₂)

## Alveolære makrofager

- "Støvceller" der fagocyterer partikler, bakterier og overskydende surfactant
- Vigtig del af [[Immunforsvar|lungeimmunforsvaret]]
- Rygning → aktiverede makrofager → frigiver proteaser → kan føre til emfysem

### Relationer
- [[Lungeanatomi]]
- [[Hæmoglobin og O₂-dissociationskurve]]
- [[Bohr-effekt og Haldane-effekt]]
- [[Lungevolumener]]
- [[Respirationskontrol]]
