# Apoptose

> **Apoptose** = programmeret celledød – en kontrolleret, genetisk styret proces hvor celler gennemgår fragmentering og fjernes uden at frigive skadeligt indhold.
> Vigtig for: udvikling, homøostase, immunforsvar og kræftforebyggelse.

## Apoptose vs Nekrose

| Træk | Apoptose (programmeret) | Nekrose (skade) |
|------|------------------------|-----------------|
| Årsag | Fysiologisk eller patologisk signal | Akut skade (traume, toksin, iskæmi) |
| Cellemorfologi | Cellen krymper, membranen bliver ujævn | Cellen svulmer, membranen sprænger |
| DNA-nedbrydning | Systematisk fragmentering (DNA-ladder) | Tilfældig nedbrydning |
| Inflammation | Ingen (indhold frigives i membranbundne vesikler) | Ja (indhold lækker ud og aktiverer immunceller) |
| Energiafhængighed | Ja (kræver ATP) | Nej (passiv proces) |

## To signalveje

### 1. Den ekstrinsiske (ydre) vej – dødsreceptor-vejen
- **Dødsligander** (f.eks. FasL, TNF-α) binder til **dødsreceptorer** på celleoverfladen (f.eks. Fas, TNF-receptor)
- Receptorerne aktiverer **caspase-8** (initiatorcaspase)
- Caspase-8 aktiverer **executioner-caspaser** (caspase-3, -6, -7)
- → Nedbrydning af cytoskelet, DNA-fragmentering → cellen dør

### 2. Den intrinsiske (indre) vej – mitokondrie-vejen
- Udløses af: DNA-skade, iltmangel, vækstfaktormangel, kemoterapi
- **Mitokondriens ydre membran bliver permeabel** → frigivelse af **cytochrom c**
- Cytochrom c + Apaf-1 + dATP → **apoptosomet** (et kompleks)
- Apoptosomet aktiverer **caspase-9** (initiatorcaspase)
- Caspase-9 → executioner-caspaser → celledød

### Regulering af den intrinsiske vej: Bcl-2 familien

| Type | Medlemmer | Funktion |
|------|-----------|----------|
| **Anti-apoptotiske** | Bcl-2, Bcl-XL | Blokerer frigivelse af cytochrom c |
| **Pro-apoptotiske (BH3-only)** | Bid, Bad, Bim, Puma, Noxa | Aktiverer Bax/Bak |
| **Pro-apoptotiske (effektor)** | Bax, Bak | Danner porer i mitokondriemembranen |

> **Balancen mellem pro- og anti-apoptotiske proteiner** afgør om cellen lever eller dør.

## Caspase-kaskaden

```
                          Ekstrinsisk vej           Intrinsisk vej
                              FasL/TNF-α          DNA-skade/stråling
                                   │                     │
                                   ▼                     ▼
                            Caspase-8 (initiator)   Cytochrom c frigives
                                   │                     │
                                   │              Apoptosom dannes
                                   │                     │
                                   │              Caspase-9 (initiator)
                                   │                     │
                                   └──────────┬──────────┘
                                              ▼
                                     Executioner-caspaser
                                    (caspase-3, -6, -7)
                                              │
                                              ▼
                               Nedbrydning af cellen:
                               • DNA-fragmentering (via CAD)
                               • Cytoskelet-nedbrydning
                               • Membran-blebbing
                               • Dannelse af apoptotiske legemer
```

## Apoptosens rolle i udvikling

| Eksempel | Hvad sker der | Hvorfor |
|----------|---------------|---------|
| **Halen hos haletudser** | Haleceller gennemgår apoptose under metamorfose | Frigør benene til spring |
| **Fjernelse af svømmehud** | Celler mellem fingre/tæer dør | Giver separate fingre (menneskeuge 6-8) |
| **Nervesystemet** | >50% af neuroner dør under udvikling | Kun de neuroner der danner korrekte synapser overlever |
| **Immunsystemet** | Selvreaktive T-celler fjernes | Forhindrer autoimmunitet |

## Klinisk relevans

| Sygdom | Mekanisme |
|--------|-----------|
| **Kræft** | For lidt apoptose – celler overlever trods DNA-skade (p53-mutation) |
| **Neurodegenerative sygdomme** (Alzheimer, Parkinson) | For meget apoptose – neuroner dør |
| **Autoimmunitet** | Selvreaktive celler overlever (for lidt apoptose) |
| **HIV** | T-celler dør via apoptose (ekstrinsisk vej aktiveres) |

> **p53** – tumor-suppressor: aktiveres ved DNA-skade → transkriberer p21 (stop i cellecyklus) og Puma/Noxa (apoptose). Uden p53 kan celler med skader overleve og udvikle mutationer → kræft.

> **Kilde:** Campbell Biology (12. udgave) – Kapitel 11, 18, 47
