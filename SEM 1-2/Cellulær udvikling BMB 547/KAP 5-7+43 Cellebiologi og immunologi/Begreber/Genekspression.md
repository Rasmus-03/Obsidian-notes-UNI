# Genekspression

> **Genekspression** = processen hvor information fra et gen omdannes til et funktionelt produkt (RNA eller protein).
> DNA → RNA → Protein (det centrale dogme)

## Det centrale dogme

```
DNA ──(transkription)──→ mRNA ──(translation)──→ Protein
     (i kernen)              (i cytoplasmaet)
```

## 1. Transkription (DNA → mRNA)

### Initiering
- **RNA-polymerase** binder til **promotoren** (en DNA-sekvens foran genet)
- I eukaryoter kræves **transkriptionsfaktorer** (TFIID, TFIIB m.fl.) til at samles på promotoren
- **TATA-boks** (ca. -30 bp) – genkendes af TFIID (TATA-bindende protein, TBP)
- RNA-polymerase II åbner DNA-helixen og begynder mRNA-syntese

### Elongering
- RNA-polymerase læser **skabelonstrengen** (3'→5') og syntetiserer mRNA (5'→3')
- RNA-nukleotider tilføjes komplementært (A→U, T→A, C→G, G→C)
- Ca. 40 nukleotider pr. sekund

### Terminering
- I eukaryoter: **poly(A)-signal (AAUAAA)** → RNA spaltes 10-35 nukleotider efter
- Poly-A-polymerase tilføjer **poly-A-hale** (50-250 A'er)

## 2. mRNA-modifikation (eukaryoter)

```
┌──────────┐    ┌─────────────────────────────────┐    ┌──────────┐
│ 5'-cap   │    │        Eksoner                  │    │ Poly-A   │
│ (7-mG)   │    │  ┌──────┐   Intron   ┌──────┐   │    │  hale    │
│           │    │  │Exon1 │◄──────────►│Exon2 │   │    │          │
└──────────┘    └──┴──────┴─────────────┴──────┴───┘    └──────────┘
```

1. **5'-cap** (7-methylguanosin) – beskytter mRNA mod nedbrydning + hjælper ribosombinding
2. **Poly-A-hale** – beskytter mod nedbrydning + eksport fra kernen
3. **Splicing** – **spliceosomet** (små nukleære RNP'er) fjerner **introner** og sammensætter **eksoner**
   - Alternativ splicing: samme gen kan give flere forskellige proteiner (forskellige eksonkombinationer)

## 3. Translation (mRNA → Protein)

### Komponenter
| Komponent | Funktion |
|-----------|----------|
| **mRNA** | Bærer koden (kodon-tripletter) |
| **Ribosom** (rRNA + proteiner) | "Maskinen" der læser mRNA og syntetiserer protein |
| **tRNA** | Adaptermolekyle – bringer aminosyrer; har anticodon som matcher kodon |
| **Aminosyrer** | Byggestenene til proteinet |
| **Aminoacyl-tRNA-syntetase** | Enzym der kobler den rigtige aminosyre på tRNA |

### Den genetiske kode
- 4 nukleotider → 64 kodon-tripletter (3×3×3 = 64)
- 61 koder for aminosyrer, 3 er stopkodoner (UAA, UAG, UGA)
- **Startkodon**: AUG (koder for methionin)
- **Degenereret**: Flere kodoner kan kode for samme aminosyre (f.eks. 6 kodoner for leucin)

### Faser af translation

| Fase | Hvad sker der |
|------|---------------|
| **Initiering** | Lille ribosom-enhed binder mRNA ved 5'-cap. Initiator-tRNA (med Met) binder AUG. Stor enhed tilkobles. |
| **Elongering** | tRNA'er bringer aminosyrer til A-stedet → peptidbinding dannes → ribosomet translokerer (3 nt ad gangen) |
| **Terminering** | Stopkodon (UAA/UAG/UGA) → **frigørelsesfaktor** (release factor) binder → polypeptid frigives → ribosom skilles ad |

### Hastighed
- **Bakterier**: ~15 aminosyrer/sekund (transkription og translation kan ske samtidigt)
- **Eukaryoter**: ~2-6 aminosyrer/sekund (transkription i kernen, translation i cytoplasma)

## 4. Regulering af genekspression

> **Alle celler i en organisme har samme DNA** – forskelle opstår fordi forskellige gener er tændt/slukket.

### Niveauer af regulering (eukaryoter)

| Niveau | Hvordan |
|--------|---------|
| **1. Kromatin** | Heterokromatin vs eukromatin; histonmodifikation (acetylering → aktivering; methylering → hæmning) |
| **2. Transkription** | Transkriptionsfaktorer (TF'er) – proteiner der binder til **enhancers** (aktivator) eller **silencers** (repressor) |
| **3. RNA-processing** | Alternativ splicing, mRNA-nedbrydning |
| **4. Translation** | Initieringsfaktorer; miRNA (microRNA) – nedbryder mRNA eller blokerer translation |
| **5. Post-translation** | Proteinfoldning, phosphorylering, nedbrydning |

### Transkriptionsfaktorer og promoterstruktur

```
         Enhancer                     Promotor                Gen
    ┌─────────────┐             ┌────────────┐         ┌──────────┐
    │  Aktivator  │◄───────────►│   TFIID    │─RNA-pol─►   Gen    │
    │  proteiner  │             │ (TBP+TAF'er)│         │          │
    └─────────────┘             └────────────┘         └──────────┘
```

### Operon-systemet (prokaryoter)

- **Lac-operon**: inducerbart (laktose til stede → transkription slås til)
- **Trp-operon**: repressibelt (tryptofan til stede → transkription slås fra)

## 5. Nøgleforskelle: Prokaryot vs eukaryot genekspression

| Prokaryot | Eukaryot |
|-----------|----------|
| Intet intron-splicing | Splicing af introner |
| Transkription og translation i cytoplasma | Transkription i kernen, translation i cytoplasma |
| Ingen 5'-cap eller poly-A-hale | 5'-cap og poly-A-hale |
| Gener organiseret i operoner | Hvert gen har egen promoter |
| RNA-polymerase binder direkte til promotor | Kræver transkriptionsfaktorer for binding |

> **Kilde:** Campbell Biology (12. udgave) – Kapitel 17, 18
