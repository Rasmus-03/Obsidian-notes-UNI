2026-06-01

*Grundlæggende billedanalyse til mikroskopi — ImageJ/FIJI, digitale billeder, segmentering, filtrering og kolokalisering.*

> [!tip] For en 5-årig: Prik-til-prik i computeren
> Forestil dig at du farvelægger efter tal — hver lille firkant har et tal, der siger hvilken farve den skal have.
>
> Digitale billeder er det samme: de er lavet af **millioner af små firkanter (pixel)**, hvor hver pixel har et tal for gråtonen (0 = sort, 255 = hvid).
>
> Billedanalyse er at få computeren til at **finde celler** i mikroskopi-billeder. Ligesom når du finder prikker i en prik-til-prik-tegning, men computeren gør det automatisk.
>
> Filtrering er som at lægge et glansbillede ovenpå — det gør billedet skarpere eller fjerner støj (ligesom at glatte et krøllet stykke papir).

> [!INFO] Ressourcer
> - ImageJ: https://imagej.net/downloads
> - Introduktion til ImageJ: https://petebankhead.gitbooks.io/imagej-intro/content/
> - Scientific Imaging Tutorials: https://imagej.net/imaging/

---

## Hvorfor billedanalyse?

Mikroskopi-billeder bruges til at indhente **data**, ikke kun pæne billeder. Målet er at kvantificere:

- Intensiteter
- Størrelser og arealer
- Former og antal af objekter
- Kolokalisering af signaler

> [!WARNING] Stol ikke på dine øjne!
> Menneskelige øjne kan ikke pålideligt fortolke intensiteter i gråtoner eller farveblandinger. Brug kvantitative metoder!

---

## Digitale billeders egenskaber

### Pixel-størrelse og opløsning

- **Pixel size:** Bestemmes af mikroskop-systemet (CCD pixel-størrelse × forstørrelse, eller scanner-zoom)
- **Nyquist–Shannon sampling:** Korrekt sampling kræver 2,3–3× mindre pixel end den optiske opløsning

> [!NOTE] Nyquist-kriteriet
> $$ \text{Pixel size} \times 2,3 = \text{optical resolution} $$
>
> Under-sampling → aliasing, over-sampling → unødig stor filstørrelse

### Bit-dybde

| Bit-dybde | Antal niveauer | Eksempel |
| :--- | :--- | :--- |
| 8-bit | 256 (0–255) | Almindelig grayscale |
| 12-bit | 4096 | De fleste mikroskop-kameraer |
| 16-bit | 65536 | Normalt output fra CCD/CMOS |

> [!DANGER] Overeksponering / mætning
> **Undgå at overeksponere!** Tabt information kan ikke genskabes. Brug LUT'er (Look Up Tables) til at tjekke mætning.

---

## Intensitetshistogrammer

Histogrammet viser fordelingen af pixel-intensiteter i billedet:

- **I orden:** Normalfordelt eller bimodal fordeling med separerbar baggrund/forgrund
- **Ikke OK:** Clipping ved 0 eller 255 → tabt information

Brug histogrammer til at opdage problemer med kvantificering.

---

## Billedforbedring

### Look Up Tables (LUT)

LUT'er ændrer hvordan talværdier vises — de ændrer **ikke** data:

| LUT | Anvendelse |
| :--- | :--- |
| Grayscale lineær | Standard visning |
| Rainbow / Fire | Fremhæver intensitetsforskelle |
| HiLo (rød/blå) | Viser over/undereksponerede pixels |

### Brightness/Contrast

Justér visning uden at ændre data — men **"Apply"** ændrer data permanent!

---

## Spatial filtre (masker)

### Mean filter (gennemsnitsfilter)

- Udskifter pixel med gennemsnittet af nabolaget
- **Lineært** filter (rækkefølgen af flere filtre er ligegyldig)
- + Fjerner Gaussiansk og Poisson-støj
- - Slører kanter og små detaljer
- - Virker **ikke** på salt-og-peber-støj

### Median filter

- Udskifter pixel med **medianen** af nabolaget
- **Ikke-lineært** filter
- + Fremragende til salt-og-peber-støj
- + Bevarer kanter (edge-preserving)
- - Langsommere (men moderne computere klarer det)

> [!NOTE] Sammenligning
> Mean-filter: udvisker, forudsætter normal-fordelt støj
> Median-filter: bevarer kanter, fjerner outliers

---

## Kolokalisering (Colocalization)

Analyse af om to signaler (fx grøn og rød) overlapper i rummet.

### Pearson's korrelationskoefficient ($r$)

$$ r = \frac{\sum_i (R_i - \bar{R})(G_i - \bar{G})}{\sqrt{\sum_i (R_i - \bar{R})^2 \sum_i (G_i - \bar{G})^2}} $$

| $r$ | Betydning |
| :--- | :--- |
| $+1$ | Fuld korrelation (identiske billeder) |
| $0$ | Ingen korrelation (tilfældig) |
| $-1$ | Fuld anti-korrelation (grøn der hvor rød ikke er) |

> [!INFO] Pearson's r er robust
> Pearson's $r$ er **ufølsom** over for forskelle i intensitet mellem de to kanaler — hvis rød er halvt så lys som grøn, kan $r$ stadig være 1.

### Scatterplot / 2D-histogram

Plot rød intensitet mod grøn intensitet for hver pixel. Korrelationen ses som en diagonal linje.

---

## Billedsegmentering (Thresholding)

Segmentering = omdannelse af gråtonebillede til **binært billede** (forgrund/baggrund).

### Tærskelværdi (threshold)

Vælg en gråværdi, der adskiller forgrund fra baggrund:

- **Global threshold:** Én værdi for hele billedet (Otsu's metode)
- **Lokal threshold:** Forskellige værdier i forskellige regioner

Anvendelser:
- Tælle celler
- Mål areal af objekter
- Identificer subcellulære strukturer

---

## Dekonvolution

Mikroskop-billeder nedbrydes af **punktspredningsfunktionen (PSF)** — et punkt objek vises som en luftig plet.

- **Konvolution:** Objekt × PSF + støj = optaget billede
- **Dekonvolution:** Omvendt proces — rekonstruer objektet fra billedet ved hjælp af kendskab til PSF

> [!INFO] PSF
> PSF beskriver mikroskopets respons på en punktkilde. Jo smallere PSF, jo bedre opløsning.

---

## ImageJ / FIJI

**Fordele:** Gratis, brugervenlig, programmerbar, tusindvis af plugins
**Ulemper:** Dårligt dokumenteret, klik-tung, inkonsistente plugins

### Praktiske øvelser

1. **Spatial skalering:** Analyze → Set Scale, Analyze → Tools → Scale Bar
2. **Intensity clipping:** Image → Adjust → Brightness/Contrast (brug ikke Apply!)
3. **Filtre:** Process → Filters → Convolve / Mean / Median
4. **Segmentering:** Image → Adjust → Auto Threshold / Auto Local Threshold
5. **RGB-farverum:** Image → Color → Channels Tool, Split Channels
6. **Multi-dimensionelle billeder:** Image → Stacks → Make Montage
