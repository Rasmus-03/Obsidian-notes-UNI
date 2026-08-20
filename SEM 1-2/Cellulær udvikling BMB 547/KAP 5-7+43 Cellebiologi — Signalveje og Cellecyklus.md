---
tags: [cellebiologi, signalering, cellecyklus, GPCR, RTK, apoptose]
aliases: [Cellesignalering, Cellecyklus-pathway, GPCR-pathway, RTK-pathway, Apoptose-pathway]
---

# Cellebiologi — Signalveje og Cellecyklus

> **Kerne-pathway:** Celler modtager ekstracellulære signaler → transduktion (via receptorer + second messengers) → response (gen-ekspression, metabolisme, celledeling, apoptosis).

---

## 📡 Cellesignalering — 4 grundlæggende steps

> [!INFO] **Eksamensspørgsmål: "Forklar de 4 trin i cellesignalering"**

```
1. Signal (ligand) → 2. Reception (receptor) → 3. Transduktion → 4. Response
                                                                   
Ekstracellulært molekyle   Membran/intracellulær   Second messengers   Ændret cellefunktion
```

---

## 🔗 GPCR-signalvej (G-proteinkoblede receptorer)

> [!INFO] **Eksamensspørgsmål: "Forklar GPCR-signalering med et eksempel"**

**7 transmembrane domæner → vigtigste receptor-familie (menneske: ~800 GPCR'er)**

```
Ligand → GPCR → αβγ-G-protein
    │       GDP → GTP (α-underenhed dissocierer)
    │
    ├── α → Adenylyl cyclase → cAMP → PKA → phosphorylerer target-proteiner
    ├── α → Phospholipase C → IP₃ + DAG → Ca²⁺-frigivelse + PKC
    └── βγ → Ionkanaler (f.eks. GIRK i hjerte → K⁺ ud → langsommere frekvens)
```

> [!example] **Eksempel — β-adrenerg receptor (adrenalin i hjerte):**
> ```
> Adrenalin → β₁-R → Gαₛ → AC ↑ → cAMP ↑ → PKA ↑ 
> → Ca²⁺-kanaler phosphoryleres → Ca²⁺ ind ↑ → hjerte-kontraktilitet ↑
> ```

**Amplifikation:** Én ligand-receptor-binding → flere G-proteiner → flere AC-enzymer → masser cAMP → masser PKA → masser target-protein-phosphorylering. **1 ligand → 10⁸ respons-molekyler!**

---

## 🧬 RTK-signalvej (Receptor Tyrosinkinase)

> [!INFO] **Eksempel — Insulin/GF:**

```
Insulin → RTK → Autophosphorylering → IRS → PI3K → Akt → mTOR → vækst + metabolisme
                                                      → GLUT4-translokation
                                                      → Anti-apoptotisk signal
```

**RTK- vs GPCR-signalering:**
| Egenskab | GPCR | RTK |
|:--------:|:----:|:---:|
| Struktur | 7TM | Enkelt transmembran |
| Effektor | G-protein | Tyrosinkinase-domæne |
| Second messenger | cAMP, IP₃, DAG, Ca²⁺ | Ras → MAPK, PI3K → Akt, JAK → STAT |
| Respons | Kortvarig, hurtig | Langvarig, vækst/differentiering |

---

## 🔄 Cellecyklusen

> [!INFO] **Eksamensspørgsmål: "Redegør for cellecyklusens faser og deres kontrol"**

| Fase | Hændelse | Kontrol |
|:----:|----------|:-------:|
| **G₁** | Celle-vækst, metabolit-akkumulering | Restriktionspunkt: stop hvis skade (p53) |
| **S** | DNA-syntese (→ sisterkromatider) | - |
| **G₂** | Forberedelse til mitose; DNA-repair | G₂/M-kontrol: tjek for ufuldstændig replikation |
| **M** | Mitose + cytokinese | Spindle checkpoint: alle kromosomer på plads? |

**Cyclin/CDK-kontrol:**
```
Cyclin D → CDK4/6 → G₁-progression
Cyclin E → CDK2 → G₁/S-overgang
Cyclin A → CDK2 → S-fasen
Cyclin B → CDK1 → G₂/M-overgang
```

**p53 — "genomets vogter":**
```
DNA-skade → p53 ↑ → p21 ↑ → CDK inhiberes → cellecyklus-stoppes
    → Repair (hvis muligt) → fortsæt
    → Apoptose (hvis uoprettelig skade)
```
Mutation i p53 → cancer (findes i >50% af alle tumorer!)

---

## 💀 Apoptose — programmeret celledød

> [!INFO] **Eksamensspørgsmål: "Forklar de to apoptose-pathways"**

### Intrinsic (mitokondriel) pathway:
```
DNA-skade / stress → Bax/Bak → mitochondriel permeabilitet → Cytochrom c frigives
    → Apaf-1 → Caspase-9 → Executioner-caspaser (3,6,7) → apoptose
```

### Extrinsic (death receptor) pathway:
```
FasL (ligand) → Fas-receptor → FADD → Caspase-8 → Executioner-caspaser → apoptose
```

**Karakteristika:** Celle-svind, DNA-fragmentering, apoptotic bodies → fagocytose (INGEN inflammation! Modsat nekrose).

> [!question] Eksamensspørgsmål
> **"Hvad er forskellen på apoptose og nekrose?"**
> *Svar: Apoptose = programmeret, cellen svinder, DNA fragmenteres, phagocytose → ingen inflammation. Nekrose = uplanlagt (skade), cellen svulmer, indhold lækker → inflammation.*

---

## 🧪 Vigtige cellebiologiske processer

| Proces | Lokation | Nøglemolekyler |
|:------:|:--------:|:--------------:|
| **Ca²⁺-signalering** | Cytoplasma | IP₃ → Ca²⁺-frigivelse → Calmodulin → CaMK |
| **Cellemembran** | Plasmamembran | Fosfolipid-dobbeltlag, flydende-mosaik-model |
| **Cytoskelet** | Hele cellen | Mikrotubuli, aktin-filamenter, intermediære filamenter |
| **ER** | Cytoplasma | Proteinsyntese (RER), lipid-syntese (SER), Ca²⁺-lager |

## Relationer
[[G-proteiner]] • [[G-proteinkoblede receptorer]] • [[Cellecyklus]] • [[Apoptose]] • [[Ca2+-signalering]] • [[Calmodulin]] • [[Gen]] • [[Genekspression]]
