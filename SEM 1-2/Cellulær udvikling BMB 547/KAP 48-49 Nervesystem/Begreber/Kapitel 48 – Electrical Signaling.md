---
book: Biology A Global Approach (Campbell)
chapter: 48
pages: 1127-1155
---

# Kapitel 48 – Electrical Signaling in the Nervous System

> [!tip] For en 5-årig:
> Forestil dig at dine nerver er som ledninger, der sender lynhurtige beskeder til hjernen. Hver besked er en bølge af elektricitet – et aktionspotentiale – der suser fra den ene ende af nerven til den anden. For at sende beskeden videre til næste nerve, bliver den til en lille kemisk pakke (en neurotransmitter), der hopper over mellemrummet mellem nerverne. Det er sådan du mærker at noget er varmt, koldt eller gør ondt!

📘 **Kilde:** [[Biology A Global Approach, Global Edition (2020,12th Edition).pdf#page=1127]]

---

## Concept 48.1 – Neuron organization and structure determine how information is transmitted

### Neuronets opbygning
| Del | Funktion |
|-----|----------|
| **Dendritter** | Modtager signaler (indgang) |
| **Cellelegeme (soma)** | Integrerer signaler, indeholder kernen |
| **Axon** | Sender signaler (udgang) – kan være op til 1 m lang |
| **Axonterminal** | Frigiver neurotransmitter til næste neuron |
| **Myelinskede** | Isolering (øger ledningshastigheden) |
| **Ranviers knuder** | Mellem myelinskeder – saltatorisk ledning |

### Myelinisering
- **PNS**: Schwann-celler (1 Schwann-celle myelinerer 1 segment)
- **CNS**: Oligodendrocytter (1 oligodendrocyt myelinerer flere segmenter på forskellige axoner)
- **Sygdom**: Multipel sklerose (autoimmun → demyelinisering → langsommere/nedsat ledning)

### Neuron-typer
| Type | Funktion |
|------|----------|
| **Sensorisk neuron** | Fører signal fra sanser → CNS |
| **Interneuron** | Behandler signal inde i CNS (99% af alle neuroner) |
| **Motorisk neuron** | Fører signal fra CNS → muskler/kirtler |

---

## Concept 48.2 – Ion pumps and ion channels maintain the resting potential

### Membranpotentialet
- **Hvilemembranpotentiale**: -70 mV (negativ indeni i forhold til ydersiden)
- Opretholdes af:
  1. **Na⁺/K⁺-ATPase-pumpe** – pumper 3 Na⁺ ud, 2 K⁺ ind (modvirker udligning)
  2. **Lækagekanaler** – K⁺ lækker lettere ud end Na⁺ lækker ind
  3. **Store negative anioner (proteiner, fosfater)** kan ikke passere membranen

### Nernst-ligningen (ligevægtspotentiale for ét ion)

E_ion = (RT/zF) × ln([ion]_udenfor / [ion]_indenfor)

Ved 37°C: E_ion = (61/z) × log([ion]_udenfor / [ion]_indenfor)   [mV]

E_K  = 61 × log(5/150) = -90 mV (tæt på hvilemembranpotentialet!)
E_Na = 61 × log(150/15) = +60 mV
```

- R = gaskonstanten, T = temp, z = ladning, F = Faradays konstant
- **Hvilemembranpotentialet bestemmes primært af K⁺** fordi K⁺-lækagekanaler er mest talrige
- **Goldman-ligning** (alle relevante ioner):
```
V = (RT/F) × ln((P_K[K⁺]_ude + P_Na[Na⁺]_ude + P_Cl[Cl⁻]_inde) / (P_K[K⁺]_inde + P_Na[Na⁺]_inde + P_Cl[Cl⁻]_ude))

> [!warning] Eksamen
> Hvorfor er hvilemembranpotentialet -70 mV og ikke -90 mV (E_K)?
> Svar: Fordi der er en lille Na⁺-ledningsevne (lækage af Na⁺ ind) der trækker potentialet lidt op fra E_K!

---

## Concept 48.3 – Action potentials are the signals conducted by axons

### Aktionspotentialets faser
| Fase | Spænding | Ion-bevægelse | Varighed |
|------|----------|---------------|----------|
| **1. Hvile** | -70 mV | K⁺ ude > inde, Na⁺ inde < ude | - |
| **2. Depolarisering** | -70 → +30 mV | **Na⁺-kanaler åbner** (Na⁺ strømmer ind) | <1 ms |
| **3. Repolarisering** | +30 → -70 mV | Na⁺-kanaler inaktiveres → **K⁺-kanaler åbner** (K⁺ strømmer ud) | 1-2 ms |
| **4. Hyperpolarisering** | -70 → -80 mV | K⁺-kanaler lukker langsomt | 1-2 ms |
| **5. Hvile** | -70 mV | Na⁺/K⁺-pumpe genopretter gradienten | - |

### Tærskelpotentiale og "all-or-none"
- **Tærskel**: ~-55 mV (ca. 15 mV depolarisering)
- Når tærsklen nås → **spændingsstyrede Na⁺-kanaler åbner** → positiv feedback (mere depolarisering → flere kanaler åbner)
- **All-or-none**: Når tærsklen nås, affyres et fuldt aktionspotentiale (størrelsen er ALTID den samme for givet axon)
- Signalstyrke = **frekvens** af aktionspotentialer (code for amplitude)

### Refraktærperioder
| Type | Hvad sker | Betydning |
|------|-----------|-----------|
| **Absolut refraktær** | Na⁺-kanaler inaktiverede (kan ikke åbnes igen før repolarisering) | Intet AP muligt → sikrer énvejsledning |
| **Relativ refraktær** | K⁺-kanaler åbne, Na⁺-kanaler lukkede men inaktiveringen ophævet | Stærkere stimulus kræves |

### Saltatorisk ledning
- **Myelinskede** isolerer axonet → Na⁺-kanaler KUN ved Ranviers knuder
- AP "hopper" fra knude til knude → **hurtigere** (op til 120 m/s vs 2 m/s i umyeliniseret)
- **Mere energieffektivt** (færre Na⁺/K⁺-pumper skal arbejde)

> [!info] Axon diameter vs hastighed
> Større diameter → mindre modstand → hurtigere ledning (derfor har kæmpeblækspruttens kæmpeaxon (1 mm diameter) ekstrem hurtig ledning – flugtreaktion)

---

## Concept 48.4 – Neurons communicate at synapses

### Synapsetyper
| Type | Transmission | Hastighed | Styrke |
|------|-------------|-----------|--------|
| **Elektrisk synapse** | Direkte ionstrøm gennem gap junctions | Lynhurtig | Svagere (signal aftager) |
| **Kemisk synapse** | Neurotransmitter frigives, diffunderer over synaptisk kløft | Langsommere (ca. 1 ms forsinkelse) | Kan forstærkes |

### Kemisk synaptisk transmission – 6 trin
1. Aktionspotentiale ankommer til **axonterminal**
2. **Spændingsstyrede Ca²⁺-kanaler** åbner (Ca²⁺ strømmer ind)
3. Ca²⁺ får **synaptiske vesikler** til at fusionere med membranen
4. **Neurotransmitter** frigives til **synaptisk kløft** (ca. 20 nm bred)
5. Neurotransmitter binder til **receptorer** på **postsynaptiske membran**
6. **Ionkanaler åbner/lukker** → postsynaptisk potentiale (EPSP/IPSP)

### Neurotransmittertyper
| Type | Eksempler | Funktion |
|------|-----------|----------|
| **Acetylcholin (ACh)** | NMJ, CNS | Eksitatorisk (NMJ), muskelkontraktion |
| **Biogene aminer** | Dopamin, serotonin, noradrenalin | Humør, belønning, opmærksomhed |
| **Aminosyrer** | Glutamat, GABA, glycin | Glutamat = vigtigste eksitatoriske; GABA = vigtigste inhibitoriske |
| **Neuropeptider** | Substans P, endorfiner, enkefaliner | Smerte-modulation |
| **Gasser** | NO, CO | Retrograd signalering |

### EPSP vs IPSP
| Potentiale | Neurotransmitter | Ion-kanal | Effekt |
|------------|-----------------|-----------|--------|
| **EPSP** (Excitatory) | Glutamat | Na⁺-kanaler åbner | Depolarisering → tættere på tærskel |
| **IPSP** (Inhibitory) | GABA, Glycin | Cl⁻-kanaler åbner / K⁺-kanaler åbner | Hyperpolarisering → længere fra tærskel |

### Summation
| Type | Beskrivelse |
|------|-------------|
| **Temporal summation** | Flere AP'er i samme neuron hurtigt efter hinanden → lægges sammen |
| **Spatial summation** | Flere forskellige neuroner aktiveres samtidig → lægges sammen |
| **Netto = EPSP + IPSP** | Hvis sum > tærskel → postsynaptisk AP |

> [!warning] Eksamen
> "En neuron modtager 10 EPSP'er og 8 IPSP'er på samme tid. Hvert EPSP = 2 mV, hvert IPSP = -1 mV. Hvilepotentiale = -70 mV, tærskel = -55 mV. Affyres der et AP?"
> Svar: Netto = 10×2 + 8×(-1) = 20 - 8 = 12 mV → -70 + 12 = -58 mV. Tærskel er -55 mV, så -58 < -55 → **INTET AP**!

---

## Concept 48.5 – Synaptic transmission is regulated

### Neurotransmitter-fjernelse
Efter frigivelse skal neurotransmittere fjernes fra synaptisk kløft:
1. **Enzymatisk nedbrydning** – acetylcholinesterase (AChE) nedbryder ACh
2. **Genoptagelse (reuptake)** – transportere på præsynaptisk neuron (fx serotonin, dopamin, GABA)
3. **Diffusion** – molekyler diffunderer væk

### Synaptisk plastiitet
- **Langtidspotentiering (LTP)** – øget synaptisk styrke efter højfrekvent stimulation (Hippocampus, NMDA-receptorer)
  - Involverer Ca²⁺-tilstrømning → aktivering af CaMKII → flere AMPA-receptorer → stærkere respons
- **Langtidsdepression (LTD)** – nedsat synaptisk styrke
- LTP/LTD = cellulært grundlag for **læring og hukommelse**

### Farmakologi
| Stof | Virkningsmekanisme | Effekt |
|------|--------------------|--------|
| **Curare** | Blokerer ACh-receptorer (NMJ) | Paralysation |
| **Botulinumtoksin (Botox)** | Blokerer ACh-frigivelse (præsynaptisk) | Lammelse |
| **Organofosfater** | Hæmmer acetylcholinesterase → ACh ophobes | Kramper, død |
| **SSRI (fluoxetin/Prozac)** | Blokerer genoptagelse af serotonin | Antidepressiv |
| **Benzodiazepiner** | Øger GABA-receptor affinitet | Anxiolytisk |
| **Nikotin** | Agonist på nAChR | Stimulerende |

---

## Sammenfatning
| Concept | Tema |
|---------|------|
| 48.1 | Neuronstruktur |
| 48.2 | Hvilemembranpotentiale (Nernst, Goldman) |
| 48.3 | Aktionspotentiale (faser, refraktærperiode) |
| 48.4 | Synaptisk transmission (EPSP, IPSP, summation) |
| 48.5 | Synaptisk regulering (LTP, farmakologi) |

## Centrale begreber
- [[Hvilemembranpotentiale]]
- [[Aktionspotentiale]]
- [[Nernst-ligningen]]
- [[Goldman-ligningen]]
- [[Spændingsstyrede Na⁺-kanaler]]
- [[Saltatorisk ledning]]
- [[Synaptisk transmission]]
- [[EPSP og IPSP]]
- [[Summation]]
- [[Neurotransmittere]]
- [[Synaptisk plastiitet]]
- [[Refraktærperiode]]

## Underemner
- [[Myelinisering]]
- [[Neuromuskulær forbindelse]]
- [[LTP og hukommelse]]
- [[Nervesystemets farmakologi]]

> Development in Animals 1 0 7 5 47 Animal Defenses Against Infection 1 1 0 0 48 Electrical Signals in Animals 1 125 49 Neural Regulation in Animals 1 143 50 Sensation and Movement in Animals 1 165 Unit 8 THE ECOLOGY OF LIFE 1197 51 An Overview of Ecology 1 198 52 Behavioral Ecology 1225 53 Populations and Life History Traits 1248 54 Biodiversity and Communities 1272 55 Energy Flow and Chemical Cycling in Ecosystems 1296 56 Conservation and Global Ecology 1 3 1 8 A01_URRY1637_12_GE_FM_PRF.-e 
📊 **Præsentation:** [[Forelæsning_ElectricalSignaling_Kap48.pptx]]

