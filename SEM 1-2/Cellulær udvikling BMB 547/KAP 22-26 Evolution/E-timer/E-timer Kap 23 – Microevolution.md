---
tags: e-timer, microevolution, populationsgenetik, hardy-weinberg
---

# E-timer – Kapitel 23: Microevolution

> [!question]- **Opgave 1 – Individet, populationen og arten i evolutionaer sammenhaeng**
> Redegor for hhv. individet, populationen og arten i en evolutionaer sammenhaeng.
>
> > [!solution]-
> > 
> > | Enhed | Rolle i evolutionen |
> > |-------|-------------------|
> > | **Individ** | En enkelt organisme. Individer *evoluerer ikke* i sig selv – deres genotype er fastlagt ved befrugtning. Individer kan dog have forskellig *fitness* afhaengigt af deres faenotype. Variation *mellem* individer er grundlaget for naturlig selektion. |
> > | **Population** | En gruppe individer af samme art, der lever i samme omrade og kan reproducere med hinanden. Populationen er *den enhed, der evolutionaert aendrer sig* over tid – gennem aendringer i allelfrekvenser ([[mikroevolution]]). |
> > | **Art** | En gruppe af populationer, der (under naturlige forhold) kan reproducere og fa fertilt afkom. Arter er den storste enhed, hvor genflow er muligt. Over tid kan populationer af samme art udvikle sig til forskellige arter ([[speciation]]). |
> > 
> > Evolution sker pa **populationsniveau** – individer udvaelges, men populationen udvikler sig.

> [!question]- **Opgave 2 – Hardy-Weinberg ligevAegt**
> Definer gen-pool, allel-frekvens og genotype-frekvens.
> 
> Allelen *T* for at kunne smage et bestemt smagsstof er dominant over allelen *t*, der mangler evnen til at udtrykke receptor for dette smagsstof. I en befolkning pa 5.000.000, man ved at 800.000 ikke kan smage stoffet.
> 
> 1. Hvad er frekvensen af hhv. T- og t-allelen?
> 2. Hvor mange kan forventes at vaere hhv. homozygote for T, heterozygote og homozygote for t?
> 3. Kan man sige at populationen er i Hardy-Weinberg ligevAegt?
> 4. Hvor stor en andel af befolkningen er baerere (heterozygote)?
>
> > [!solution]-
> > 
> > **Definitioner:**
> > - **Gen-pool**: Summen af alle gener (og deres alleler) i en population pa et givent tidspunkt.
> > - **Allel-frekvens**: Andelen af en bestemt allel i gen-poolen (udtrykkes som et tal mellem 0 og 1).
> > - **Genotype-frekvens**: Andelen af individer i populationen med en bestemt genotype.
> > 
> > **Beregning for smagning (T/t):**
> > 
> > Population: N = 5.000.000. Ikke-smagere (tt) = 800.000.
> > 
> > 1. q^2 = 800.000/5.000.000 = 0,16 → q = 0,4 (frekvens af t-allelen)
> > 2. p = 1 - q = 0,6 (frekvens af T-allelen)
> > 3. Forventede genotypefrekvenser under HW:
> >    - TT: p^2 = 0,36 → 1.800.000
> >    - Tt: 2pq = 0,48 → 2.400.000
> >    - tt: q^2 = 0,16 → 800.000
> > 
> > **Vurdering af HW-ligevAegt:**
> > Populationen *ser ud til* at vaere i HW-ligevAegt, da de observerede tal passer til de forventede under HW-forudsaetningerne (store population, tilfAeldig parring, ingen selektion, ingen mutation, ingen genflow). Man bor dog teste med en chi-i-anden-test for at bekraefte.
> > 
> > **Andel heterozygote:** 48% (2pq = 2 × 0,6 × 0,4 = 0,48).

> [!question]- **Opgave 3 – Mikroevolution vs. adaptiv evolution**
> Redegor for hvilke faktorer, der driver hhv. mikroevolution og adaptiv evolution.
>
> > [!solution]-
> > 
> > - **Mikroevolution** = enhver aendring i allelfrekvenser i en population over generationer. Drives af:
> >   1. [[Mutation]] – skaber nye alleler (tilfAeldigt)
> >   2. [[Genetisk drift]] – tilfAeldige aendringer i allelfrekvenser (saerlig i sma populationer)
> >   3. [[Genflow]] – ind- og udvandring af individer/alleler mellem populationer
> >   4. [[Naturlig selektion]] – differentiel reproduktiv succes baseret pa faenotype
> >   5. [[Seksuel selektion]] – selektion baseret pa parringsadfaerd
> > 
> > - **Adaptiv evolution** = den del af mikroevolutionen, der skyldes [[naturlig selektion]] og *oger populationens gennemsnitlige fitness* i forhold til miljoet. Ikke al mikroevolution er adaptiv – [[genetisk drift]] er neutral eller skadelig, ikke adaptiv.
> > 
> > **Forskel:**
> > - Mikroevolution = alle aendringer (bade neutrale, skadelige og gavnlige)
> > - Adaptiv evolution = kun de aendringer, der forbedrer tilpasning (selektionsdrevne)

> [!question]- **Opgave 4 – Typer af naturlig selektion**
> Redegor for de tre hovedtyper af naturlig selektion, og angiv hvordan de pavirker faenotypisk variation i populationen.
>
> > [!solution]-
> > 
> > | Selektionstype | Effekt | Grafisk |
> > |---------------|--------|---------|
> > | **[[Retningsselektion]]** | Favrer den ene ekstrem af en faenotype. Forskydning af gennemsnittet. | Kurven forskydes til hojre/venstre |
> > | **[[Stabiliserende selektion]]** | Favrer middelvaerdien, begge ekstremer selekteres imod. Reducerer variation. | Kurven bliver smallere/hojere |
> > | **[[Disruptiv selektion]]** | Favrer begge ekstremer, middelvaerdien selekteres imod. Oger variation (kan fore til speciation). | Kurven far to toppe |
> > 
> > **Eksempler:**
> > - **Retningsselektion**: Antibiotikaresistens – bakterier med resistensmutation overlever.
> > - **Stabiliserende selektion**: Fodselsvaegt hos mennesker – meget lave eller meget hoje fodselsvaegte har lavere overlevelse.
> > - **Disruptiv selektion**: Frastorrelse hos fugle – sma og store fro giver hojst fitness, mellemstore giver lavere.

> [!question]- **Opgave 5 – Genetisk drift**
> Redegor for begrebet genetisk drift og hvordan det adskiller sig fra naturlig selektion. Giv eksempler pa hvilke populationer, der er saerligt udsatte.
>
> > [!solution]-
> > 
> > **[[Genetisk drift]]** = tilfAeldige aendringer i allelfrekvenser fra generation til generation, saerligt i sma populationer. Jo mindre populationen er, desto storre effekt har tilfAeldigheder.
> > 
> > **Forskel fra naturlig selektion:**
> > - [[Naturlig selektion]] er malrettet (miljoet "vaelger" gunstige traek) → adaptiv
> > - Genetisk drift er tilfAeldig (neutral eller skadelig) → ikke adaptiv
> > 
> > **Saerligt udsatte populationer:**
> > - [[Founder-effekt]]: En lille gruppe koloniserer et nyt omrade (f.eks. Amish-befolkningen i Pennsylvania)
> > - [[Flaskehalseffekt]]: En population reduceres drastisk (f.eks. nordlig elefantsael i 1800-tallet jaget til <50 individer)
> > 
> > **Konsekvenser:**
> > - Tab af genetisk diversitet
> > - Fiksering af skadelige alleler (pga. tilfAeldighed, ikke selektion)
> > - Oget [[indavlsdepression]]

> [!question]- **Opgave 6 – Genflow**
> Redegor for begrebet genflow og dets betydning for populationer.
>
> > [!solution]-
> > 
> > **[[Genflow]]** (gen migration) = udveksling af alleler mellem populationer via bevAegelse af individer eller gameter.
> > 
> > **Effekter:**
> > - **Reducerer genetisk differentiering** mellem populationer – gor dem mere ens
> > - **Modvirker speciation** – genflow holder populationer genetisk forbundet
> > - Kan introducere **nye alleler** i en population
> > - Kan **oge genetisk diversitet** i sma, isolerede populationer
> > 
> > **Eksempler:**
> > - Bestovning mellem plantepopulationer
> > - Vandrefalke, der spreder sig over store omrader
> > - Mennesker, der flytter mellem byer/lande
> > 
> > **Betydning:**
> > - Uden genflow: Populationer kan divergere via [[genetisk drift]] og [[naturlig selektion]] → mulig [[speciation]]
> > - Med genflow: Populationer forbliver genetisk sammenhaengende → modvirker artsdannelse

> [!question]- **Opgave 7 – Seksuel selektion**
> Redegor for begrebet seksuel selektion og giv eksempler.
>
> > [!solution]-
> > 
> > **[[Seksuel selektion]]** = en form for naturlig selektion, der handler om evnen til at fa en partner og reproducere. Traek, der oger parringssucces, selekteres for – selvom de kan vaere uhensigtsmaessige for overlevelse.
> > 
> > **To mekanismer:**
> > - **Intra-seksuel selektion** (konkurrence mellem kon): Hannen kAemper mod andre hanner om adgang til hunner (f.eks. kronhjortes gevirer)
> > - **Inter-seksuel selektion** (partnervalg): Det ene kon (typisk hunnen) vAelger partner baseret onskede traek (f.eks. pafuglens hale)
> > 
> > **Eksempler:**
> > - Pafuglens hale – koster energi og tiltraekker rovdyr, men signalerer godt helbred til hunner ([[handicap-princippet]])
> > - Lovskraekkende hos fugle – avancerede sange koster energi men tiltrAekker hunner
> > - Gevirer hos hjorte – bruges i kampe om hunner
> > 
> > **Evolutionaert paradoks:** Seksuel selektion kan drive udviklingen af traek, der er direkte *skadelige* for overlevelse, fordi de oger reproduktiv succes.

> [!question]- **Opgave 8 – Hardy-Weinberg ligevAegt: forudsAetninger og anvendelse**
> Redegor for Hardy-Weinberg-ligevAegtens forudsAetninger. Forklar hvordan man kan teste, om en population er i HW-ligevAegt, og hvad en afvigelse kan skyldes.
>
> > [!solution]-
> > 
> > **Hardy-Weinberg forudsAetninger (ingen evolution skal finde sted):**
> > 1. **Stor populationsstorrelse** (ingen genetisk drift)
> > 2. **TilfAeldig parring** (ingen selektion af partner)
> > 3. **Ingen naturlig selektion** (alle alleler giver lige fitness)
> > 4. **Ingen mutation** (ingen nye alleler)
> > 5. **Ingen genflow** (ingen ind-/udvandring)
> > 
> > **Sadan tester man:**
> > 1. Observer genotype-frekvenser i populationen
> > 2. Beregn forventede frekvenser ud fra HW-ligningen: p^2 + 2pq + q^2 = 1
> > 3. Udfar en [[chi-i-anden-test]] (X^2) for at vurdere, om afvigelsen mellem observerede og forventede er signifikant
> > 
> > **Mulige arsager til afvigelse:**
> > - Populationen er under selektion (en genotype har hojere fitness)
> > - Indavling (afvigelse fra tilfAeldig parring)
> > - Genetisk drift (for lille population)
> > - Genflow (migration)
> > - Mutation (nye alleler)
> > - Ikke-tilfAeldig parring (f.eks. assorativ parring)
> > 
> > **Anvendelse:** HW-ligevAegten bruges som en *nul-model* – hvis populationen afviger, ved man der er en evolutionaer kraft i spil.

> [!question]- **Opgave 9 – De fem kraefter i mikroevolution**
> Redegor i detaljer for de fem kraefter, der kan drive mikroevolution.
>
> > [!solution]-
> > 
> > De fem evolutionaere kraefter og deres effekter:
> > 
> > | Kraft | Definition | Effekt pa genetisk variation |
> > |-------|-----------|---------------------------|
> > | **[[Mutation]]** | TilfAeldig aendring i DNA-sekvens | Skaber **nye alleler** (oger variation) |
> > | **[[Genetisk drift]]** | TilfAeldige aendringer i allelfrekvens | **Reducerer variation** (saerligt i sma populationer) |
> > | **[[Genflow]]** | Migration af individer/gameter mellem populationer | Kan oge eller reducere variation afhaengigt af retning |
> > | **[[Naturlig selektion]]** | Differentiel overlevelse/reproduktion baseret pa faenotype | **Reducerer variation** (stabiliserende/retningsselektion) eller **oger variation** (disruptiv selektion) |
> > | **[[Seksuel selektion]]** | Differentiel parringssucces | Kan drive udvikling af praegtige traek, ofte pa bekostning af overlevelse |
> > 
> > **Vigtigste pointe:** Mutation er den *eneste* kraft, der skaber nye alleler. De andre fire kraefter omfordeler, reducerer eller oger frekvensen af eksisterende variation.
