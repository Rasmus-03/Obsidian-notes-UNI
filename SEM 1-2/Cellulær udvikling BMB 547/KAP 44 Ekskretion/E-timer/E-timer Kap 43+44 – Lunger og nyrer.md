---
tags: [e-timer, respiration, lunger, nyrer, ekskretion, gasudveksling]
---

# E-timer Kap 43+44 – Lunger og nyrer

## Opgave 1 – Oxygenoptag i vand vs. luft

### 1a. Plot data i R

```r
# Installer pakker
install.packages("grid")
library(grid)
install.packages("ggplot2")
library(ggplot2)
install.packages("gridExtra")
library(gridExtra)

# Dataframe
x <- data.frame(PP_mmHg = c(160, 160),
                Conc = c(210, 7),
                O2 = c("Luft", "Vand"))

# Partialtryk (samme for luft og vand)
PP <- ggplot(x, aes(x = O2, y = PP_mmHg, fill = O2)) +
  geom_bar(stat = "identity")

# Koncentration (meget forskellig)
conc <- ggplot(x, aes(x = O2, y = Conc, fill = O2)) +
  geom_bar(stat = "identity")

# Side om side
grid.arrange(PP, conc, ncol = 2)
# Eller over hinanden:
# grid.arrange(PP, conc, nrow = 2)
```

### 1b. Hvorfor skal gæller være mere effektive end lunger?

**Stikord:** Samme partialtryk (160 mmHg) i luft og vand, men koncentrationen er **210 mL/L** i luft vs. kun **7 mL/L** i vand.

**Uddybende:**
- Vand indeholder ~30× mindre O₂ end luft
- Fisk har **enkelt-cirkulation** (ét atrium + én ventrikel) med to kapillærnetværk efter hinanden
- Ved gællerne sker **countercurrent exchange** – blod og vand flyder i **modsat retning**, hvilket maksimerer diffusionen og sikrer effektiv iltoptag

> [!info] Countercurrent exchange
> Udveksling af ilt (eller varme) mellem to væsker, der strømmer i hver sin retning. Dette opretholder en koncentrationsgradient hele vejen igennem gællen.

---

## Opgave 2 – De humane lunger

### 2a. Opbygning

**Stikord:** Trachea → bronkier → bronkioler → [[Alveoler]] (gasudveksling)

**Uddybende:**
- Lungerne fylder størstedelen af thorax og er pattedyrs respirationsorgan
- Indesluttet mellem **ribben** og **diafragma**
- **Trachea** forgrener sig i to **bronkier** (én pr. lunge)
- Bronkierne forgrener sig videre til **bronkioler** → **alveoler** (gasudveksling med kapillærer)
- Lungerne ligger i **pleura** (beskyttende, smørende sæk)
- Omkringliggende muskulatur øger beskyttelse og funktion

### 2b. Lungesurfaktants rolle

| Bestanddel | Andel |
|------------|-------|
| Lipider | 90% |
| Protein | 10% |

- **Hydrofob del** vender mod alveolens lumen og trækker surfaktant væk fra vandmolekyler
- Dette **modvirker den indadrettede overfladespændingskraft**
- Forhindrer alveolerne i at **klappe sammen** (atelektase)
- Udskilles af **pneumocytter** (alveolære epithelceller)

---

## Opgave 3 – Respirationspigmenter

### 3a. Humant respirationspigment

| Pigment | Organisme | Co-faktor | Farve |
|---------|-----------|-----------|-------|
| **Hæmoglobin** | Mennesker (og de fleste hvirveldyr) | Jern (Fe²⁺) | Rød |
| **Hæmocyanin** | Bløddyr og leddyr | Kobber (Cu²⁺) | Blålig |
| **Myoglobin** | Muskler (især dykkerarter) | Jern | Mørkerød |

**Hæmoglobin:**
- 4 subunits (tetramer)
- Hvert subunit: polypeptid + **hæm-gruppe** (jern i midten)
- Bærer 1 O₂ per subunit → 4 O₂ i alt
- Transporterer både O₂ og CO₂ reversibelt
- Udtrykt i **erythrocytter** (røde blodlegemer)

**Myoglobin:**
- Høj koncentration i muskler hos dykkerarter (sæler, hvaler)
- Kan konservere op til **dobbelt så meget ilt per kilo** som andre arter
- Gør det muligt at holde vejret længere under vand

### 3b. Korporativ binding og Bohr shift

**Bohr shift:**
> CO₂ produceret under cellular respiration → sænker blodets pH → nedsætter hæmoglobins affinitet for O₂ → lettere O₂-frigivelse i aktive væv

**Mekanisme:**
1. CO₂ + H₂O → [[Carbonic acid]] (H₂CO₃) → H⁺ + HCO₃⁻
2. Fald i pH → konformationsændring i hæmoglobin → O₂ frigives lettere
3. CO₂ binder også **direkte** til hæmoglobin (1 molekyle per subunit = 4 i alt)
4. Dette giver yderligere konformationsændring med lavere O₂-affinitet

**Aflæsning af O₂-kurver:** Se figur 43.31 i Campbell (12. udgave)
- Højere O₂-tryk → mere bundet O₂
- Lavere O₂-tryk → mere frigivelse

---

## Opgave 4 – Nyrerne

### 4a. Nyrernes opbygning og funktion

**Overordnet funktion:**
- Regulering af væske- og elektrolyt-homeostase
- Udskillelse af affaldsstoffer

**Struktur:**

| Term | Beskrivelse |
|------|-------------|
| [[Nyrebark]] (cortex) | Ydre lag |
| [[Nyremarv]] (medulla) | Indre lag |
| [[Nefron]] | Nyrens funktionelle enhed (millioner pr. nyre) |
| [[Glomerulus]] | Kapillærnetværk, hvor filtratet dannes |
| [[Bowmans kapsel]] | Omslutter glomerulus |
| [[Proximal tubule]] | Første del af rørsystemet |
| [[Henles slynge]] | Vand- og saltopsamling |
| [[Distal tubule]] | Sidste del før samlerør |
| [[Samlerør]] | Opsamler urin fra flere nefroner |

**Blodforsyning:**
- [[Renal-arterie]] → fører iltet blod til nyren
- [[Renal-vene]] → fører blod væk fra nyren

**Urinveje:** Nyrerne → ureter (urinleder) → blære → urethra

### 4b. Nyrer som indikator for dyrets miljø

> **Princip:** Jo længere ned i marven (medulla), desto større osmotisk gradient → mere vand kan reabsorberes

| Dyr | Adgang til vand | Nefrontype | Urin |
|-----|----------------|------------|------|
| Ørkendyr | Begrænset | Flere **juxtamedullære nefroner** (lange Henle-slynger) | **Lille volumen, høj koncentration** |
| Dyr med fri vandadgang | Rigelig | Flere **kortikale nefroner** (korte Henle-slynger) | **Stort volumen, fortyndet** |

- **Juxtamedullære nefroner** har lange Henle-slynger, der når dybt ned i marven → skaber stor osmolaritetsgradient → vandbesparelse
- **Kortikale nefroner** har korte Henle-slynger, der kun ligger i barken → mindre vandbesparelse

### 4c. Filtratets bestanddele og transport

| Stof | Transporttype | Sted |
|------|--------------|------|
| [[HCO₃⁻]] | Aktiv transport | Proximal tubule |
| [[NaCl]] | Aktiv transport | Proximal tubule + opadgående Henle |
| Næringsstoffer (glukose, aminosyrer) | Aktiv transport | Proximal tubule |
| [[H₂O]] | Passiv (via aquaporiner) | Nedadgående Henle + samlerør |
| [[K⁺]] | Aktiv (sekretion) | Distal tubule + samlerør |
| [[H⁺]] | Aktiv (sekretion) | Proximal tubule + samlerør |
| [[NH₃]] | Diffusion | Proximal tubule |
| [[Urea]] | Passiv (+ recirkulation) | Marvsamlerør |

---

## Eksempel på eksamensopgave

### a) Funktionel enhed i nyrerne

**Nefronet** – består af:
- [[Glomerulus]] → omgivet af [[Bowmans kapsel]]
- [[Proximal tubule]]
- [[Henles slynge]] (nedadgående + opadgående)
- [[Distal tubule]]
- [[Samlerør]] (opsamler fra flere nefroner)

### b) Hvor er ionbalance vigtig?

- [[Neuronsignalering]] (aktionspotentialer afhænger af Na⁺/K⁺-gradienter)
- [[Muskelkontraktion]] (Ca²⁺-signaler)

### c) Vasopressin-antagonist mod overhydrering

**Mekanisme:**
1. [[Vasopressin]] (ADH) udskilles fra hypofysen
2. Øger [[Aquaporiner]] i samlerørets membran
3. → Mere vand reabsorberes → mindre urin
4. **Antagonist** blokerer vasopressin-receptoren
5. → Færre aquaporiner → mindre vand reabsorberes
6. → Mere vand udskilles → genopretter ionbalance

> [!summary] Nøglepointer
> - **Gæller** bruger countercurrent exchange til effektiv O₂-optag i vand (30× lavere O₂-konc.)
> - **Surfaktant** forhindrer alveolar kollaps
> - **Hæmoglobin** (Fe²⁺) vs. **hæmocyanin** (Cu²⁺)
> - **Bohr shift**: Lav pH → lavere Hb-O₂-affinitet → O₂ frigives i aktive væv
> - **Nyrer**: Kortikale vs. juxtamedullære nefroner afhænger af vandtilgængelighed
> - **Vasopressin** → aquaporiner → vandreabsorption
