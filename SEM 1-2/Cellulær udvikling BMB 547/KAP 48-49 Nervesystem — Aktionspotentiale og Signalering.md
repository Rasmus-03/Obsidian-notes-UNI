---
tags: [nervesystem, aktionspotentiale, synaptisk transmission, ionkanaler]
aliases: [AP-pathway, Synaptic transmission, Neuronal signalering]
---

# Nervesystemet — Aktionspotentiale og Synaptisk Transmission

> **Kerne-pathway:** Neuroner kommunikerer via **aktionspotentialer** (elektriske signaler langs axonet) og **synaptisk transmission** (kemiske signaler mellem neuroner).

---

## ⚡ Aktionspotentialet — mekanisme

> [!INFO] **Eksamensspørgsmål: "Redegør for aktionspotentialets faser og ionbevægelser"**

```
Membranpotentiale (mV)
    +40 ──────── 3 ──────────
      │         │
      0 ────────┤ Spændingsstyrede K⁺-kanaler åbner (langsomt)
      │   2     │
    -55 ────┤ ├── Tærskelpotentiale
      │ 1  │ │
    -70 ──└─┘ └────────────────────
         Tid →
```

| Fase | Navn | Hvad sker der? | Ionbevægelse |
|:----:|------|---------------|:------------:|
| **1** | **Hvilepotentiale** | Na⁺/K⁺-ATPase opretholder gradient. K⁺-lækkanaler → K⁺ ud → -70 mV | K⁺ out |
| **2** | **Depolarisering** | Stimulus → Na⁺-kanaler åbner → Na⁺ strømmer ind → op mod +40 mV | Na⁺ **in** |
| **3** | **Repolarisering** | Na⁺-kanaler inaktiveres → K⁺-kanaler åbner → K⁺ strømmer ud → tilbage mod -70 mV | K⁺ **out** |
| **4** | **Hyperpolarisering** | K⁺-kanaler lukker langsomt → lidt for meget K⁺ ude → -80 mV | K⁺ out |
| **5** | **Refraktærperiode** | Na⁺-kanaler inaktiveret → nyt AP kan ikke starte her | - |

**Refraktærperiodens betydning:**
- **Absolut:** Intet nyt AP kan starte (Na⁺-kanaler inaktiveret) → sikrer envejs-signalering
- **Relativ:** Stærk stimulus kan starte nyt AP (nogle Na⁺-kanaler er klar)

---

## 🔄 Saltatorisk ledning — myelins betydning

> [!INFO] **Hvorfor er myelin vigtigt? — Et klassisk eksamensspørgsmål**

```
Umyelineret axon: AP langs hele membranen → langsom (0,5-2 m/s)
Myeliniseret axon: AP kun ved Ranviers indsnøringer → hurtig (5-120 m/s)
    → "Springende" ledning — saltatorisk ledning!
```

**Fordele ved myelin:**
1. Hurtigere ledning (mindre kapacitans → hurtigere depolarisering)
2. Energibesparende (Na⁺/K⁺-ATPase kun ved indsnøringer)
3. _Multiple sclerose_ → myelin-nedbrydning → langsom/ingen ledning → neurologiske symptomer

---

## 🧪 Synaptisk transmission — kemisk signalering

> [!INFO] **Eksamensspørgsmål: "Forklar synaptisk transmission inklusiv neurotransmitter-pathways"**

### Processen:

```
1. AP ankommer til præsynaptisk terminal
2. Spændingsstyrede Ca²⁺-kanaler åbner → Ca²⁺ ind
3. Vesikler fusionerer med membranen → neurotransmitter frigives (exocytose)
4. NT binder til receptorer på postsynaptisk membran
5. Ionkanaler åbner/lukker → EPSP eller IPSP
6. NT fjernes (enzymatisk nedbrydning / reuptake / diffusion)
```

### EPSP vs. IPSP:

| Type | Ionkanal | Ionbevægelse | Effekt på membranpotentiale |
|:----:|:--------:|:------------:|:---------------------------:|
| **EPSP** | Na⁺-kanal / kation-kanal | Na⁺ ind → depolarisering | Tættere på tærskel |
| **IPSP** | Cl⁻-kanal / K⁺-kanal | Cl⁻ ind / K⁺ ud → hyperpolarisering | Længere fra tærskel |

**Summation:** Ét EPSP er for lille → mange EPSPer summeres (temporal + spatial) → når tærskel → AP!

---

## 🧬 Vigtige neurotransmittere

| Neurotransmitter | Funktion | Receptor-type | Sygdom ved dysregulering |
|:----------------:|----------|:------------:|:------------------------:|
| **Acetylcholin** | NMJ, ANS, kognition | Nikotinisk (ionotrop), muskarinisk (GPCR) | Myasthenia gravis, Alzheimers |
| **Dopamin** | Belønning, motorik, motivation | GPCR (D₁-D₅) | Parkinson, skizofreni, afhængighed |
| **Serotonin (5-HT)** | Humør, søvn, appetit | GPCR (7 typer) | Depression, angst |
| **Glutamat** | Eksitatorisk (CNS) | AMPA, NMDA, Kainat | Eksitotoksicitet (stroke) |
| **GABA** | Inhibitorisk (CNS) | GABAₐ (Cl⁻-kanal), GABA_B (GPCR) | Epilepsi, angst |
| **Noradrenalin** | Fight-or-flight | GPCR (α₁, α₂, β₁, β₂) | Depression, ADHD |

> [!question] Eksamensspørgsmål
> **"Forkar hvordan acetylcholin overfører signal fra motorneuron til muskel (NMJ)"**
> *Svar: AP i motorneuron → Ca²⁺ ind → ACh frigives → ACh binder til nikotinisk ACh-receptor på muskel → Na⁺ ind → depolarisering (EPP = end-plate potential) → muskelfiber-AP → excitation-kontraktions-kobling. ACh fjernes af AChE (acetylcholinesterase).*

---

## 🧠 CNS og PNS — overblik

| System | Underinddeling | Funktion |
|--------|---------------|----------|
| **CNS** | Hjerne (cortex, cerebellum, basal ganglia, etc.) + Rygmarv | Integration, styring |
| **PNS** | **Sensorisk (afferent):** info til CNS | Følesans |
| | **Motorisk (efferent):** kommandoer fra CNS | Bevægelse |
| | **Autonome:** Sympatikus (fight-or-flight) + Parasympatikus (rest-and-digest) | Indre organer |
| | **Enteriske:** Tarmens eget nervesystem | Fordøjelse |

## Relationer
[[Aktionspotentiale]] • [[Depolarisering]] • [[EPSP og IPSP]] • [[Acetylcholin]] • [[Dopamin]] • [[Myelin]] • [[Synapse]] • [[CNS]] • [[ANS]]
