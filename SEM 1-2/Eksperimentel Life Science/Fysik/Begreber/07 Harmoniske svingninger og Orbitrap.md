# HARMONISKE SVINGNINGER – INTERAKTIVE OPGAVER

> [!tip] **For en 5-årig:** 
> Forestil dig en gynge på legepladsen. Hvis du giver et lille skub, svinger den frem og tilbage med en bestemt rytme. Jo tungere du er, jo langsommere svinger gyngen – medmindre du skubber hårdere. Den rytme kalder vi frekvens, og en hel svingning frem og tilbage er én periode.
> 
> I en Orbitrap-maskine sker det samme med usynlige partikler (ioner). De svinger op og ned i et elektrisk felt i stedet for en fjeder, og deres frekvens afslører, hvor tunge de er. Det er en meget præcis vægt til de allermindste ting.
> 
> Her regner du på svingninger – både på en almindelig fjeder og i Orbitrap-maskinen.

---

##  Fjeder – periodetid

> [!question]- **Opgave 1 – Periode for fjeder**
> En masse $m = 0.50\,\text{kg}$ hænger i en fjeder med konstant $k = 200\,\text{N/m}$.
>
> Bestem svingningens periode $T$.
>
> > [!solution]- **Løsning**
> >
> > Periode for harmonisk svingning:
> > $$
> > T = 2\pi \sqrt{\frac{m}{k}}
> > $$
> >
> > Indsæt værdier:
> > $$
> > T = 2\pi \sqrt{\frac{0.50}{200}} = 2\pi \sqrt{0.0025} = 2\pi \cdot 0.05 \approx 0.314\,\text{s}
> > $$
> >
> > Svar:
> > - $T \approx 0.314\,\text{s}$

---

##  Fjeder – frekvens

> [!question]- **Opgave 2 – Frekvens**
> Brug samme masse og fjeder som i Opgave 1.
>
> Bestem svingningens frekvens $f$.
>
> > [!solution]- **Løsning**
> >
> > Frekvens:
> > $$
> > f = \frac{1}{T}
> > $$
> >
> > Indsæt $T \approx 0.314\,\text{s}$:
> > $$
> > f \approx \frac{1}{0.314} \approx 3.18\,\text{Hz}
> > $$
> >
> > Svar:
> > - $f \approx 3.18\,\text{Hz}$

---

##  Orbitrap – svingningsfrekvens

> [!question]- **Opgave 3 – Orbitrap**
> En ion med ladning $q = 1.6\times10^{-19}\,\text{C}$ bevæger sig i Orbitrap med konstant $k_{OT} = 1.0\times10^{-3}\,\text{N/m}$ og masse $m = 5.0\times10^{-26}\,\text{kg}$.
>
> Bestem svingningsfrekvensen $f_{OT}$.
>
> > [!solution]- **Løsning**
> >
> > Orbitrap-formel:
> > $$
> > f_{OT} = \frac{1}{2\pi} \sqrt{\frac{k_{OT} q}{m}}
> > $$
> >
> > Indsæt værdier:
> > $$
> > f_{OT} = \frac{1}{2\pi} \sqrt{\frac{1.0\times10^{-3} \cdot 1.6\times10^{-19}}{5.0\times10^{-26}}}
> > $$
> >
> > Først indre kvadratrod:
> > $$
> > \frac{1.6\times10^{-22}}{5.0\times10^{-26}} = 3200
> > $$
> >
> > $$
> > f_{OT} = \frac{1}{2\pi} \sqrt{3200} = \frac{56.57}{6.283} \approx 9.0\,\text{Hz}
> > $$
> >
> > Svar:
> > - $f_{OT} \approx 9.0\,\text{Hz}$

---

##  Kvalitativ forståelse – harmoniske svingninger

> [!question]- **Opgave 4 – Fjeder vs. Orbitrap**
> Forklar forskellen på en klassisk fjeder og en Orbitrap-svingning.
>
> > [!solution]- **Løsning**
> >
> > - **Fjeder**: Masse-spring-system, lineær harmonisk bevægelse, periode afhænger af $m$ og $k$.  
> > - **Orbitrap**: Ion bevæger sig i elektrostatisk potential, svinger harmonisk, frekvens afhænger af $q$, $k_{OT}$ og $m$.  
> > - Begge er harmoniske, men Orbitrap bruges til præcis bestemmelse af $m/q$.
> >
> > Svar:
> > - Fjeder: mekanisk, Orbitrap: elektrostatiske ioner, begge harmoniske.


