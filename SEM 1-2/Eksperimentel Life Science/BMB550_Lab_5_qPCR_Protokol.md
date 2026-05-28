## Part I: Pipetteringsøvelse
**Formål:** Øvelse i at pipettere små volumener i en qPCR 384-well plate ved hjælp af SYBR GOLD.

### 1. Forberedelse af DNA-prøver
Fortynding af 100 ng/µl stokløsning til 12,5 ng/µl og 25 ng/µl. 
(Der forberedes volumen til replikater + 1 ekstra til tab).

| DNA-prøve | DNA-stok (100 ng/µl) | MilliQ-H2O | Total |
| :--- | :--- | :--- | :--- |
| **12,5 ng/µl** | 2,5 µl | 17,5 µl | 20 µl |
| **25 ng/µl** | 5,0 µl | 15,0 µl | 20 µl |

### 2. SYBR Gold 'working solution'
Blandes efter antallet af prøver (triplikater + 1 ekstra).

| Ingrediens (n=10) | Volumen per brønd | Volumen total |
| :--- | :--- | :--- |
| MilliQ-H2O | 2,5 µl | 25 µl |
| 10x SYBR Gold | 2,5 µl | 25 µl |
| **Total** | **5 µl/well** | **50 µl** |

### Procedure (Kort)
1. Mix 'working solution' ved op- og nedpipettering.
2. Fordel 5 µl i bunden af hver brønd (undgå bobler).
3. Tilsæt 2 µl DNA-prøve (eller vand for "0 ng DNA") til siden af hver brønd.
4. Kør pladen på CLARIOstar plate reader.

---

## Part II: qPCR - Genekspressionsanalyse
**Formål:** Analyse af genekspression i behandlede brystkræftceller (Target gener: *JUNB, AREG, BCL3, GREB1*).

### Generelle retningslinjer
- Brug altid handsker og arbejd i et rent område.
- **Vigtigt:** Mastermix må **IKKE** vortexes. Mix ved op- og nedpipettering.
- Tjek altid pipettespidsen for korrekt volumen.

### Mastermix Beregning (n=16)
Beregnet for 14 reaktioner + 2 ekstra til tab.

| Ingrediens | Per brønd (n=1) | For n=16 |
| :--- | :--- | :--- |
| MilliQ vand | 0,5 µl | 8 µl |
| F Primer | 0,5 µl | 8 µl |
| R Primer | 0,5 µl | 8 µl |
| RealQ Master Mix | 3,5 µl | 56 µl |
| **Total Mastermix** | **5,0 µl** | **80 µl** |

### Protokol Steps
1. Vælg to gener til analyse (f.eks. *JUNB* og *AREG*).
2. Forbered loading scheme (triplikater for prøver, monoplika for "No RT" og "NT" kontroller).
3. Bland mastermix (uden cDNA!).
4. Fordel 5 µl mastermix i bunden af brøndene.
5. Tilsæt 2 µl cDNA-prøve til siden af brøndene og mix grundigt ved vortexing af prøven inden brug.
6. Centrifuger pladen i 1 min ved 1100g.
7. Kør qPCR (BioRAD maskine): 95°C/15 min $\rightarrow$ 40 cyklusser (95°C/15 s, 60°C/20 s, 72°C/20 s) $\rightarrow$ Smeltekurveanalyse.
