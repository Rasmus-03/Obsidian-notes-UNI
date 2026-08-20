# Hvilemembranpotentiale

> [!tip] **Hovedprincip:** Hvilemembranpotentialet (RMP, ≈ -70 mV) er den stabile elektriske spænding over membranen i en uexciteret celle. Det skyldes en uligevægt af ioner fordelt over membranen.

## Hvorfor -70 mV?

| Ion | [Inde] mM | [Ude] mM | Nernst-potentiale (37°C) | Strømretning ved RMP |
|-----|----------|----------|------------------------|---------------------|
| K⁺ | 140 | 5 | **-89 mV** | Udad (lækage) |
| Na⁺ | 15 | 150 | **+62 mV** | Indad (lille lækage) |
| Cl⁻ | 10 | 110 | **-65 mV** | Indad |
| Ca²⁺ | 0,0001 | 2 | **+129 mV** | Indad |

> [!example]- **Bidrag til RMP – Goldman-ligningen**
> Goldman-ligningen (GHK) tager højde for **permeabiliteten** af hver ion:
>
> $$V_m = rac{RT}{F} \lnrac{P_K[K^+]_o + P_{Na}[Na^+]_o + P_{Cl}[Cl^-]_i}{P_K[K^+]_i + P_{Na}[Na^+]_i + P_{Cl}[Cl^-]_o}$$
>
> Ved hvile: P_K : P_Na : P_Cl = 1 : 0,04 : 0,45
> → Membranen er mest permeabel for K⁺ → potentialet trækkes mod K⁺'s Nernst-potentiale (-89 mV)
> → Lille Na⁺-lækage trækker det op til ~-70 mV
>
> > [!fold]- **Trin-for-trin beregning**
> > Ved 37°C: RT/F ≈ 61,5 mV
> > 
> > $$V_m = 61,5 \cdot \log_{10}rac{1\cdot5 + 0,04\cdot150 + 0,45\cdot10}{1\cdot140 + 0,04\cdot15 + 0,45\cdot110}$$
> > $$V_m = 61,5 \cdot \log_{10}rac{5 + 6 + 4,5}{140 + 0,6 + 49,5}$$
> > $$V_m = 61,5 \cdot \log_{10}rac{15,5}{190,1} = 61,5 \cdot \log_{10}(0,0815)$$
> > $$V_m = 61,5 \cdot (-1,089) pprox -67,0 	ext{ mV}$$

## Nøglebidragydere til RMP
1. **Na⁺/K⁺-ATPase** – pumper 3 Na⁺ ud, 2 K⁺ ind (elektrogen → -4 mV bidrag)
2. **K⁺-lækagekanaler** – K⁺ diffunderer ud ad koncentrationsgradienten
3. **Store intracellulære anione** (proteiner, fosfatgrupper) – kan ikke passere membranen

> [!warning]- **Hvorfor kan RMP ikke være præcis Nernst for K⁺?**
> Hvis membranen kun var permeabel for K⁺:
> $$V_m = E_K = -89 	ext{ mV}$$
> Men der er altid **lidt lækage af Na⁺** (P_Na er lille men > 0)
> → RMP er **mindre negativ** end E_K
> → Derfor: $-70 	ext{ mV}$ (ikke $-89 	ext{ mV}$)

[[Nernst-ligning]] · [[Goldman-ligning]] · [[Aktionspotentiale]] · [[Membranpotentiale]] · [[Ionkanaler]]