#  CENTRIFUGERING – INTERAKTIVE OPGAVER

*Alle opgaver vises først som spørgsmål.  
Løsninger åbnes ved klik.  
Alle formler virker i Obsidian.*

---

##  Konventioner

- Bevægelse beskrives i et **roterende referenceframe**
- Radial retning væk fra centrum regnes som positiv
- $\omega$ angives i $\text{rad s}^{-1}$

---

##  Centrifugalkraft på en partikel

> [!question]- **Opgave 1 – Partikel i centrifuge**
> En partikel med volumen $V$ og massefylde $\rho$ befinder sig i en afstand $r$ fra rotationsaksen i en centrifuge.
>
> Centrifugen roterer med vinkelhastighed $\omega$.
>
> Bestem udtrykket for den centrifugale kraft på partiklen.
>
> > [!solution]- **Løsning**
> >
> > Massens størrelse:
> > $$
> > m = \rho V
> > $$
> >
> > Centrifugalkraft:
> > $$
> > F_g = m\omega^2 r
> > $$
> >
> > Indsæt:
> > $$
> > F_g = \rho V \omega^2 r
> > $$
> >
> > **Svar**
> > - $F_g = \rho V \omega^2 r$

---

##  Opdriftskraft i centrifuge

> [!question]- **Opgave 2 – Opdrift fra væsken**
> En partikel med volumen $V$ befinder sig i en væske med massefylde $\rho_0$ i en centrifuge med vinkelhastighed $\omega$.
>
> Bestem udtrykket for opdriftskraften på partiklen.
>
> > [!solution]- **Løsning**
> >
> > Opdriften svarer til den centrifugale kraft på den fortrængte væske:
> >
> > $$
> > B = -\rho_0 V \omega^2 r
> > $$
> >
> > **Svar**
> > - $B = -\rho_0 V \omega^2 r$

---

##  Netto kraft på partiklen

> [!question]- **Opgave 3 – Effektiv kraft**
> En partikel med massefylde $\rho$ befinder sig i en væske med massefylde $\rho_0$ i en centrifuge.
>
> Udled et udtryk for den samlede kraft, der virker på partiklen (uden friktion).
>
> > [!solution]- **Løsning**
> >
> > Centrifugalkraft:
> > $$
> > F_g = \rho V \omega^2 r
> > $$
> >
> > Opdrift:
> > $$
> > B = -\rho_0 V \omega^2 r
> > $$
> >
> > Samlet kraft:
> > $$
> > F_{net} = (\rho - \rho_0)V\omega^2 r
> > $$
> >
> > **Svar**
> > - $F_{net} = (\rho-\rho_0)V\omega^2 r$

---

##  Friktionskraft (Stokes’ drag)

> [!question]- **Opgave 4 – Dragkraft**
> En kugleformet partikel med radius $R$ bevæger sig med hastighed $v$ gennem en væske med viskositet $\eta$.
>
> Bestem udtrykket for friktionskraften.
>
> > [!solution]- **Løsning**
> >
> > Stokes’ lov:
> > $$
> > F_D = -6\pi\eta R v
> > $$
> >
> > **Svar**
> > - $F_D = -6\pi\eta R v$

---

##  Terminal sedimentationshastighed

> [!question]- **Opgave 5 – Sedimentationshastighed**
> En kugleformet partikel med radius $R$ og massefylde $\rho$ sedimenterer i en væske med massefylde $\rho_0$ og viskositet $\eta$ i en centrifuge.
>
> Centrifugen roterer med vinkelhastighed $\omega$, og partiklen befinder sig i afstanden $r$ fra rotationsaksen.
>
> Bestem den terminale sedimentationshastighed $v_T$.
>
> > [!solution]- **Løsning**
> >
> > Ved terminal hastighed er summen af kræfter nul:
> >
> > $$
> > F_{net} + F_D = 0
> > $$
> >
> > $$
> > (\rho-\rho_0)V\omega^2 r = 6\pi\eta R v_T
> > $$
> >
> > Indsæt $V = \frac{4}{3}\pi R^3$:
> >
> > $$
> > v_T
> > = \frac{2}{9}\frac{R^2\omega^2 r}{\eta}(\rho-\rho_0)
> > $$
> >
> > **Svar**
> > - $v_T = \frac{2}{9}\frac{R^2\omega^2 r}{\eta}(\rho-\rho_0)$

---

##  Kvalitativ forståelse

> [!question]- **Opgave 6 – Hvad sedimenterer hurtigst?**
> To partikler har samme radius, men forskellig massefylde.
>
> Hvilken partikel sedimenterer hurtigst i centrifugen, og hvorfor?
>
> > [!solution]- **Løsning**
> >
> > Sedimentationshastigheden afhænger af:
> >
> > $$
> > v_T \propto (\rho-\rho_0)
> > $$
> >
> > Partiklen med størst forskel mellem partiklens og væskens massefylde sedimenterer hurtigst.
> >
> > **Svar**
> > - Større $(\rho-\rho_0)$ → større $v_T$


