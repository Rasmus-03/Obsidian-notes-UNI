# KINEMATIK – INTERAKTIVE OPGAVER

> [!tip] **For en 5-årig:** 
> Tænk på en bold, du ruller hen ad gulvet. Hvis du giver den et skub, ruller den – og hvis gulvet er glat, ruller den lige ud, indtil den rammer noget. Det er Newtons første lov: Ting bliver ved med at gøre det samme, medmindre en kraft skubber eller trækker i dem. Din hånd er en kraft, væggen er en kraft.
> 
> Kinematik handler om at måle, hvordan ting bevæger sig: Hvor langt ruller bolden? Hvor hurtigt? Bliver den langsommere? Man behøver ikke vide *hvorfor* den bremser – man måler bare, hvad der sker. Det er som at være dommer til et løb: Du tager tid og måler afstand.
> 
> Her regner du på forskydning, hastighed, acceleration og kast – præcis det samme som en bold på gulvet, bare med tal og formler!

*Dette dokument er 100 % kompatibelt med Obsidian.*  
*Alle opgaver vises først som **spørgsmål**, løsninger er foldbare.*

---
## Konventioner

Tyngdeacceleration (medmindre andet er angivet):

$$
g = 9.81\,\text{m s}^{-2}
$$

Retning er vigtig. Vi angiver derfor altid **fortegn og retning** i svar.

---

##  Forskydning, distance og gennemsnitshastighed

> [!question]- **Opgave 1 – Forskellige stier mellem samme punkter**
> Fem forskellige stier forbinder samme startpunkt $i$ og slutpunkt $f$.  
> Hver sti gennemløbes på $100\,\text{s}$.
>
> Bestem for hver sti:
> - ændring i forskydning $d$
> - tilbagelagt distance $D$
> - gennemsnitshastighed $\vec v_{avg}$
> - gennemsnitsfart $s$
>
> > [!solution]- **Løsning**
> > **Givet**
> > - $t = 100\,\text{s}$
> > - Samme start- og slutpunkt
> >
> > **Analyse**
> > - Forskydning afhænger kun af start og slut → samme $d$
> > - Distance afhænger af sti → forskellig $D$
> >
> > $$
> > \vec v_{avg} = \frac{\vec d}{t}
> > $$
> >
> > $$
> > s = \frac{D}{t}
> > $$
> >
> > **Svar**
> > - $d$ og $\vec v_{avg}$ er ens for alle stier  
> > - $D$ og $s$ er forskellige

---

## Gennemsnitshastighed i én dimension

> [!question]- **Opgave 2 – Snegl, elevator og løve**
> Bestem gennemsnitshastigheden i følgende tilfælde:
>
> (a) Snegl: 30 cm nord på 2 min  
> (b) Elevator: 18 m op på 15 s  
> (c) Elevator: 18 m ned på 15 s
>
> > [!solution]- **Løsning (a)**
> >
> > $$
> > v_{avg} = \frac{0.30}{120}
> > = 2.5\times10^{-3}\,\text{m s}^{-1}\;\text{nord}
> > $$
> >
> > **Bemærkning**
> > Samme metode anvendes i (b) og (c).  
> > ⚠️ Retning er en del af svaret.

---

## Konstant acceleration fra hvile

> [!question]- **Opgave 3 – Hovercraft der starter fra hvile**
> En hovercraft starter fra hvile og accelererer med
>
> $$
> a = 0.8\,\text{m s}^{-2}
> $$
>
> mod øst.
>
> Find hastighed og forskydning efter $t = 10\,\text{s}$.
>
> > [!solution]- **Løsning**
> >
> > **Givet**
> > - $v_0 = 0$
> > - $a = 0.8$
> > - $t = 10$
> >
> > **Hastighed**
> > $$
> > v = v_0 + at = 8.0\,\text{m s}^{-1}
> > $$
> >
> > **Forskydning**
> > $$
> > x = \frac12 at^2 = 40\,\text{m}
> > $$
> >
> > **Svar**
> > - $v = 8.0\,\text{m s}^{-1}$ øst  
> > - $x = 40\,\text{m}$ øst

---

##  Frit fald

> [!question]- **Opgave 4 – Bold slippes fra 10 m**
> En bold slippes fra en højde på $10.0\,\text{m}$.
>
> Find faldtiden og hastigheden lige før bolden rammer jorden.
>
> > [!solution]- **Løsning**
> >
> > **Givet**
> > - $v_0 = 0$
> > - $a = g$
> >
> > **Tid**
> > $$
> > t = \sqrt{\frac{2h}{g}} = 1.43\,\text{s}
> > $$
> >
> > **Hastighed**
> > $$
> > v = gt = 14.0\,\text{m s}^{-1}\;\text{nedad}
> > $$

---

##  Lodret kast op

> [!question]- **Opgave 5 – Bold kastet lodret op**
> En bold kastes opad med
>
> $$
> v_0 = 14.1\,\text{m s}^{-1}
> $$
>
> Find maksimal højde og samlet tid i luften.
>
> > [!solution]- **Løsning**
> >
> > Ved toppen: $v = 0$
> >
> > **Maksimal højde**
> > $$
> > h = \frac{v_0^2}{2g} = 10.1\,\text{m}
> > $$
> >
> > **Samlet tid**
> > $$
> > t = \frac{2v_0}{g} = 2.87\,\text{s}
> > $$

---

##  Projektilbevægelse (2D)

> [!question]- **Opgave 6 – Cricketbold i 45°**
> En bold rammes med
>
> $$
> v_0 = 20\,\text{m s}^{-1}, \quad \theta = 45^\circ
> $$
>
> Bestem:
> - starthastighedens komponenter  
> - maksimal højde  
> - rækkevidde
>
> > [!solution]- **Løsning**
> >
> > **Komponenter**
> > $$
> > v_{0x} = v_0\cos45^\circ = 14.1
> > $$
> >
> > $$
> > v_{0y} = v_0\sin45^\circ = 14.1
> > $$
> >
> > **Maksimal højde**
> > $$
> > h = \frac{v_{0y}^2}{2g} = 10.1\,\text{m}
> > $$
> >
> > **Rækkevidde**
> > $$
> > R = \frac{v_0^2 \sin 2\theta}{g} = 40.8\,\text{m}
> > $$

