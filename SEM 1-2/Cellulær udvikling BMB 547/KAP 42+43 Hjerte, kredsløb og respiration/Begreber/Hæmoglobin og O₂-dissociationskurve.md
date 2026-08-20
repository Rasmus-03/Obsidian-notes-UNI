# Hæmoglobin og O₂-dissociationskurve

**Hæmoglobin (Hb)** er jernholdigt protein i røde blodlegemer der transporterer ~98% af O₂ i blodet (resten er opløst i plasma).

## Hæmoglobinets struktur

```
                  α₂β₂-tetramer
                  
          α₁ ──── β₁
          │        │
          │  Fe²⁺  │
          │        │
          β₂ ──── α₂
```

- **4 polypeptidkæder**: 2 α (141 aminosyrer) + 2 β (146 aminosyrer) hos voksent HbA
- **4 hæm-grupper**: Hver indeholder et Fe²⁺-ion der binder én O₂ → 4 O₂ per Hb
- **Hæm**: Protoporfyrin IX med Fe²⁺ i centrum

### Hæmoglobintyper

| Type | Sammensætning | Periode |
|------|:------------:|---------|
| **HbA** (voksen) | α₂β₂ | Fra ~6 mdr. |
| **HbA₂** | α₂δ₂ | ~2-3% af voksent Hb |
| **HbF** (føtalt) | α₂γ₂ | Foster → højere O₂-affinitet |
| **HbA₁c** | Glykosyleret HbA | Marker for blodsukker (diabetes) |

## O₂-binding til hæmoglobin

### Kooperativ binding

- Binding af første O₂ til Fe²⁺ → konformationsændring (T→R) → øger affinitet for næste O₂
- **Hill-koefficient (n)**: ~2.8 (indikerer positiv kooperativitet)
- **Sigmoid kurve** (S-formet O₂-dissociationskurve)

### O₂-dissociationskurven

```
     100 ┤        ┌───────────
      90 ┤       ╱
      80 ┤      ╱
      70 ┤    ╱          • P₅₀ = 26 mmHg
     % 60 ┤   ╱           (halvmætningspunkt)
     Hb 50 ┤ •╱
     mæt 40 ┤╱
     net 30 ┤
      20 ┤
      10 ┤
       0 ┤
         └──┬──┬──┬──┬──┬──┬──┬──┬──
            0 10 20 30 40 50 60 70 80
               PO₂ (mmHg)
```

| PO₂ (mmHg) | Hb-mætning (%) | Forklaring |
|:---------:|:-------------:|-----------|
| 100 | 97 | Arterie (lunge) |
| 80 | 95 | Normal arterie |
| 40 | 75 | Vener (væv) |
| 20 | 35 | Aktivt væv (muskel) |
| 10 | 10 | Ekstrem hypoksi |

### P₅₀ — halvmætningspunktet

- **P₅₀** = PO₂ hvor Hb er 50% mættet (normal: ~26 mmHg)
- **← Venstreforskydning** (↓ P₅₀ → ↑ affinitet): O₂ bindes stærkere → mindre O₂ afgives til væv
- **→ Højreforskydning** (↑ P₅₀ → ↓ affinitet): O₂ afgives lettere til væv

## Faktorer der påvirker O₂-affinitet (Bohr-effekt)

### 2,3-BPG (2,3-bisfosfoglycerat)

- Metabolit i røde blodlegemer (fra glycolysen)
- Binder til β-kæderne → stabiliserer T-form (deoxy) → ↓ affinitet
- **↑ ved**: Hypoksi (højde, anæmi), træning → mere O₂ til væv
- **↓ ved**: Opbevaret blod (→ 2,3-BPG falder → O₂ afgives dårligere)

### pH (Bohr-effekt)

\[
\uparrow \text{H}^+ \ (\downarrow \text{pH}) \rightarrow \downarrow \text{O}_2\text{-affinitet} \rightarrow \text{højreforskydning}
\]

- **Metabolsk aktivt væv** → producerer CO₂ + mælkesyre → ↓ pH → Hb afgiver mere O₂
- **Alkalose** (↑ pH → venstreforskydning) → Hb holder på O₂ (ses ved hyperventilation)

### Temperatur

- **↑ Temperatur** → ↓ affinitet → højreforskydning (arbejdende muskler er varmere)
- **↓ Temperatur** → ↑ affinitet → venstreforskydning (hypotermi → O₂ afgives dårligere)

### CO₂

- CO₂ binder til aminogrupper på Hb → **carbamino-Hb** → stabiliserer T-form
- ↑ CO₂ → ↓ affinitet (højreforskydning) → **Haldane-effekt** (se nedenfor)

## O₂-kapacitet og -indhold

- **O₂-kapacitet**: Max O₂ bundet til Hb (1 g Hb binder 1.34 mL O₂)
  - Normal: 15 g Hb/dL × 1.34 = **~20 mL O₂/dL blod**
- **O₂-indhold**: Faktisk O₂ i blodet
  - Arterie: 20 mL O₂/dL × 0.97 = ~19.4 mL O₂/dL
  - Vene: 20 × 0.75 = ~15 mL O₂/dL
- **O₂-ekstraktion**: ~5 mL O₂/dL (25% af leveret O₂)
- Under træning: ekstraktion kan stige til ~70%

## Hypoksi — årsager

| Type | Mekanisme | Eksempel |
|------|-----------|----------|
| **Hypoksisk** | ↓ PO₂ i arterier | Højdesyge, KOL, shunt |
| **Anæmisk** | ↓ Hb-koncentration | Blødning, jernmangel |
| **Stagnant** | ↓ perfusion | Hjertesvigt, shock |
| **Histotoksisk** | Celler kan ikke bruge O₂ | Cyankali (hæmmer COX) |

### Relationer
- [[Gasudveksling]]
- [[Bohr-effekt og Haldane-effekt]]
- [[Lungevolumener]]
- [[Respirationskontrol]]
