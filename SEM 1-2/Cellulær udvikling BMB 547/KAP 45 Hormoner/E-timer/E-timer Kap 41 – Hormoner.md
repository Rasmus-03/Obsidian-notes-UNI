---
tags: e-timer, hormoner, endokrinologi, signalering
---

# E-timer – Kapitel 41: Hormoner

> [!question]- **Opgave 1 – Signaliseringsvej fra stimulus til respons**
> Redegor for hvert step i en given signaleringsvej fra stimulus af et endokrint væv til respons i target-cellen, og angiv hvor denne vej er forskellig mellem et hydrofobt og et hydrofilt signalmolekyle.
>
> > [!solution]-
> > 
> > **Generel signaleringsvej:**
> > 1. **Syntese**: Hormonet syntetiseres i det endokrine væv. Kan være aminosyre-derivat, steroider, polypeptider eller derivater af fedtsyrer.
> > 2. **Frigivelse**: Molekylet frigives fra vævet til blodbanen ved en stimulus.
> > 3. **Transport**: Transporteres gennem blodbanen – evt. via transportprotein, hvis hydrofobt.
> > 4. **Binding til receptor**: Target-cellen binder molekylet via passende receptor.
> > 5. **Intracellulær signalering**: Receptoren undergår konformationsændring/aktivering, og signalet videreføres via signaleringskaskade (ofte phosphoryleringskaskade med kinaser), hvilket amplificerer signalet.
> > 
> > **Hydrofile signalmolekyler** (f.eks. peptidhormoner, adrenalin):
> > - Kan ikke krydse plasmamembranen
> > - Binder til **membranbundne receptorer** (GPCR, receptor-tyrosinkinaser)
> > - Udløser **intracellulær signaleringskaskade** (second messengers som cAMP, IP3, Ca2+)
> > - Respons er **hurtig** (sekunder til minutter)
> > 
> > **Hydrofobe signalmolekyler** (f.eks. steroidhormoner, thyroideahormoner):
> > - Kan krydse plasmamembranen
> > - Binder til **intracellulære receptorer** (i cytosol eller kerne)
> > - Receptor-hormon-komplekset fungerer som **transkriptionsfaktor**
> > - Respons er **langsom** (timer til dage) – kræver gensyntese af proteiner
> > 
> > **Hvad afgor, om en celle er en target-celle?**
> > Hvis en celle indeholder en receptor for et givent hormon/signalmolekyle, er den en target-celle i den kontekst. Target-celle er ikke en permanent klasse – det er kontekst-afhængigt. Ligeledes er "ligand" kontekst-afhængigt: en fedtsyre kan være energilager i én kontekst og en ligand i en anden.

> [!question]- **Opgave 2 – Endokrin, parakrin og autokrin signalering**
> Karakteriser forskellen mellem endokrin, parakrin og autokrin signalering. Giv eksempler og diskuter overlap.
>
> > [!solution]-
> > 
> > | Type | Afstand til target | Eksempel |
> > |------|------------------|----------|
> > | **Endokrin** | Lang afstand via blodbanen | Insulin fra pancreas til hele kroppen |
> > | **Parakrin** | Kort afstand (naboceller) | Neurotransmittere i synapsekløften; cytokiner mellem immunceller |
> > | **Autokrin** | Samme celle | Quorum sensing hos bakterier |
> > 
> > **Overlap:** De tre typer udelukker ikke hinanden. Et signal kan godt både virke lokalt (parakrint), sendes via blodbanen (endokrint) og påvirke den sekreterende celle selv (autokrint).

> [!question]- **Opgave 3 – Endokrine kirtler og deres hormoner**
> Angiv de vigtigste endokrine kirtler.
>
> > [!solution]-
> > 
> > 1. **Koglekirtlen (pinealis)** – Melatonin (døgnrytme)
> > 2. **Hypothalamus** – Overordnet regulering; sender inhibitoriske/aktiverende hormoner til hypofysen
> > 3. **Hypofysen** – Lager af hormoner:
> >    - **Forlap (anterior)**: FSH, LH, GH, ACTH, TSH, Prolactin, MSH
> >    - **Baglap (posterior)**: Oxytocin og vasopressin (ADH)
> > 4. **Thyroidea (+ parathyroidea)** – T3, T4 (metabolisme); PTH (calcium)
> > 5. **Binyrerne** – Cortex: glukokortikoider, mineralokortikoider; Medulla: adrenalin
> > 6. **Pancreas** – Insulin og glukagon (blodsukker)
> > 7. **Ovarier** – Østrogener (østradiol) og progesteron
> > 8. **Testis** – Testosteron (androgener)

> [!question]- **Opgave 4 – Analyse af signalmolekyle-data i R**
> Plot dataene og diskuter hvilke begreber (hormonkaskade, simpel hormonsignalering, neurohormon, neurotransmitter, hormon) der passer til hvert signalmolekyle.
>
> > [!solution]-
> > 
> > **R-kode:**
> > ```r
> > x <- data.frame(
> >   Signalmolekyle = rep(c("1","2","3"), 10),
> >   Time = rep(c(0,0.001,0.002,10,20,30,40,50,60,100), each=3),
> >   Conc.Ab.Unit = c(0,0,0, 0,10,0, 0,3,0, 2,0,0, 4,0,6, 6,0,10, 8,0,10, 8,0,10, 6,0,10, 0,0,2)
> > )
> > 
> > library(ggplot2)
> > library(ggforce)
> > 
> > ggplot(data=x, aes(x=Time, y=Conc.Ab.Unit, group=Signalmolekyle)) +
> >   geom_line(aes(color=Signalmolekyle)) +
> >   geom_point(aes(color=Signalmolekyle)) +
> >   ylim(0,12) +
> >   facet_zoom(xlim = c(0, 0.01))
> > ```
> > 
> > **Tolkning:**
> > - **Signalmolekyle 2**: Meget hurtig respons (peak på 10 enheder ved 0,001 min) → **Neurotransmitter** (frigives og nedbrydes hurtigt)
> > - **Signalmolekyle 1**: Langsom stigning, plateau ved 40-50 min, langsomt fald → **Hormon** (endokrin signalering, lang halveringstid)
> > - **Signalmolekyle 3**: Forsinket stigning (starter ved 20 min), plateau → **Hormonkaskade** eller **neurohormon** (forsinkelse pga. mellemled i signaleringskaskaden)

> [!question]- **Opgave 5 – Regelstyring af hormoner (feedback)**
> Redegor for hvordan hormonniveauer reguleres gennem feedback-mekanismer.
>
> > [!solution]-
> > 
> > **Negativ feedback (hyppigst):**
> > - Et hormon udskilles → virker på target → responsen hæmmer videre udskillelse
> > - Eksempel: TSH fra hypofysen stimulerer thyroidea til at udskille T3/T4. Når T3/T4-niveauet er tilstrækkeligt, hæmmes TSH-frigivelsen fra hypofysen.
> > 
> > **Positiv feedback (sjældnere):**
> > - Signalet forstærker sig selv i en selvforstærkende cyklus
> > - Eksempel: Oxytocin under fødslen – livmoderkontraktioner stimulerer mere oxytocin-frigivelse → stærkere kontraktioner
> > 
> > **Hypothalamus-hypofyse-akse:**
> > - Hypothalamus frigiver frigivelseshormoner (f.eks. TRH, CRH) → hypofysen frigiver tropiske hormoner (TSH, ACTH) → endokrin kirtel frigiver hormon → negativ feedback på både hypothalamus og hypofyse

> [!question]- **Opgave 6 – Hydrofobe vs. hydrofile hormoners signalering**
> Diskuter de molekylære mekanismer for hydrofobe og hydrofile hormoners signalering.
>
> > [!solution]-
> > 
> > **Hydrofile hormoner (f.eks. peptider, adrenalin):**
> > - Membranbundne receptorer
> > - Aktiverer second messenger-systemer (cAMP, IP3, DAG, Ca2+)
> > - Signalet amplificeres gennem kaskader (én receptor kan aktivere mange G-proteiner, som hver aktiverer et adenylatcyclase-molekyle, som producerer mange cAMP-molekyler)
> > - Hurtig regulering af eksisterende proteiner (f.eks. phosphorylering)
> > 
> > **Hydrofobe hormoner (f.eks. steroidhormoner, T3):**
> > - Trænger gennem membranen
> > - Binder til intracellulære receptorer i cytosol eller kerne
> > - Receptor-hormon-komplekset translokeres til kernen og binder til hormon-responselementer (HRE) på DNA
> > - Regulerer gentranskription → protein-syntese
> > - Langsom virkning (timer til dage), men længerevarende
> > 
> > **Eksempel – testosteron:**
> > Testosteron binder direkte til intracellulære receptorer, som fungerer som transkriptionsfaktorer og aktiverer gener for kønsspecifikke responser (f.eks. muskelvækst, skægvækst).
