
*Baseret på Biology: A Global Approach, Kapitel 41: Hormones and the Endocrine System (Side 955).*

Reference til lærebog: [[Biology A Global Approach, Global Edition (2020,12th Edition).pdf#page=955]]

---

> [!question]- Opgave 1
> **Spørgsmål:** Redegør for hvert step i en given signaleringsvej fra stimulus af et endokrint væv til respons i target-cellen, og angiv hvor denne vej er forskellig mellem et hydrofobt og et hydrofilt signalmolekyle.
> 
> **Hvad afgør, hvorvidt en celle er en target-celle?**
> 
> [[Biology A Global Approach, Global Edition (2020,12th Edition).pdf#page=956]]
> 1. **Stimulus:** Et signal (f.eks. ændring i koncentration) trigger det endokrine væv.
> 2. **Uskillelse:** Hormonet udskilles til blodbanen.
> 3. **Transport:** Hormonet transporteres via blodet.
> 4. **Binding:** Hormonet binder til en specifik receptor på/i target-cellen.
> 5. **Respons:** Cellens signaltransduktionsvej aktiveres og giver et cellulært respons.
> 
> *Forskel:* 
> - **Hydrofile (vandopløselige):** Binder til receptorer på cellens overflade (plasmamembranen).
> - **Hydrofobe (lipidopløselige):** Kan diffundere gennem membranen og binder ofte til intracellulære receptorer (i cytoplasma eller kerne).
> 
> *Target-celle:* En celle er kun en target-celle, hvis den besidder de **specifikke receptorer** for det pågældende hormon.
> ![[image 1.png]]

> [!question]- Opgave 2
> **Spørgsmål:** Karakteriser forskellen mellem endokrin, parakrin og autokrin signalering, angiv eksempler og diskuter, hvorvidt der kan eksistere overlap mellem begreberne.
> 
> **Svar:** [[Biology A Global Approach, Global Edition (2020,12th Edition).pdf#page=955]]
> - **Exokrin:** signaler (homoner transpoteres via blodet ud af kroppen, eksempelvis Pheromones 
> - **Endokrin:** Signaler (hormoner) transporteres via blodet til fjerne celler. Eks: Insulin.
> - **Parakrin:** Signaler påvirker naboceller via diffusion. Eks: Cytokiner i immunforsvaret.
> - **Autokrin:** Cellen sender signaler til sig selv (receptorer på egen overflade). Eks: Vækstfaktorer i kræftceller.
> 
> *Overlap:* Ja, nogle molekyler (f.eks. noradrenalin) kan fungere som både neurotransmitter (parakrin-agtig) og som hormon (endokrin) i blodbanen.
> ![[image-1 1.png]]

> [!question]- Opgave *3*
> **Spørgsmål:** Angiv de vigtigste endokrine kirtler i figuren nedenfor:
> (Koglekirtlen, hypofysen, hypotalamus, skjoldbruskkirtlen, binyrerne, pankreas, æggestokke, testikler).
> 
> **Svar:** (Se Figur 41.5, side 959 i bogen for placering)
> 1. **Koglekirtlen (Pineal gland):** Placeret midt i hjernen.
> 2. **Hypotalamus:** Over hypofysen, styrer det endokrine system.
> 3. **Hypofysen (Pituitary gland):** Placeret under hypotalamus.
> 4. **Skjoldbruskkirtlen (Thyroid gland):** Placeret på halsen.
> 5. **Binyrerne (Adrenal glands):** Placeret oven på nyrerne.
> 6. **Pankreas (Bugspytkirtlen):** Bag maven.
> 7. **Æggestokke/Testikler (Ovaries/Testes):** I bækkenområdet.

> [!question]- Opgave 4 – R-kodning og Dataplotning
> **Opgave:** Plot data for udskillelse af tre forskellige signalmolekyler målt fra stimulus (Time = 0).
> 
> **Data:**
> | Time (min.) | Sig. 1 | Sig. 2 | Sig. 3 |
> | :--- | :--- | :--- | :--- |
> | 0 | 0 | 0 | 0 |
> | 0,001 | 0 | 10 | 0 |
> | 0,002 | 0 | 3 | 0 |
> | 10 | 2 | 0 | 0 |
> | 20 | 4 | 0 | 6 |
> | 30 | 6 | 0 | 10 |
> | 40 | 8 | 0 | 10 |
> | 50 | 8 | 0 | 10 |
> | 60 | 6 | 0 | 10 |
> | 100 | 0 | 0 | 2 |
> 
> **R-kode (Klar til brug i Obsidian):**
> ```r
> # 1. Fjern kilden til alle fejl (variablen x) hvis den stadig findes
> if (exists("x")) rm(x)
> if (exists("y")) rm(y)
> 
> # 2. Opret data med unikke navne
> df_plot <- data.frame(
>   Signal_Type = rep(c("1", "2", "3"), 10),
>   Tid_min = rep(c(0, 0.001, 0.002, 10, 20, 30, 40, 50, 60, 100), each = 3),
>   Konc_Vaerdi = c(0,0,0, 0,10,0, 0,3,0, 2,0,0, 4,0,6, 6,0,10, 8,0,10, 8,0,10, 6,0,10, 0,0,2)
> )
> 
> # 3. Indlæs pakker
>
> c(library(ggplot2),library(ggforce))
> 
> # 4. Tegn grafen med eksplicit kald til zoom-funktionen
> p <- ggplot(df_plot, aes(x = Tid_min, y = Konc_Vaerdi, color = Signal_Type, group = Signal_Type)) +
>   geom_line(linewidth = 1) +
>   geom_point() +
>   scale_y_continuous(limits = c(0, 12)) +
>   ggforce::facet_zoom(xlim = c(0, 0.01)) +
>   theme_minimal() +
>   labs(title = "Hormonsignalering", 
>        subtitle = "Zoom (til højre) viser de hurtige signalmolekyler",
>        x = "Tid (min)", 
>        y = "Koncentration")
>        
>     plot(p)
> ```
> ![[image-2 1.png]]
> **b) Diskussion af begreber:**
> - **Neurotransmitter:** Virker ekstremt hurtigt (se Sig. 2, peak ved 0,001 min).
> - **Hormon:** Virker langsommere (Sig. 1 og 3).
> - **Hormonkaskade:** Når ét hormon trigger et andet (typisk længere responstid).

> [!question]- Opgave 5
> **Spørgsmål:** Angiv placeringen af følgende: Hypothalamus, hypofysens baglap, hypofysens forlap.
> 
> **Redegør for, hvordan nervesystemet er koblet til det endokrine system.**
> 
> **Svar:** (Se Figur 41.12 og 41.13, side 964-965 i bogen)
> - **Hypothalamus:** Modtager signaler fra nerver i hele kroppen og initierer endokrine responser.
> - **Baglap (Posterior pituitary):** En forlængelse af hypothalamus (nervevæv). Gemmer og frigiver neurohormoner (Eks: ADH, oxytocin).
> - **Forlap (Anterior pituitary):** Et endokrint kirtelvæv, der kontrolleres af "releasing" og "inhibiting" hormoner fra hypothalamus via blodet.
> 
> *Kobling:* Hypothalamus fungerer som broen; den omformer elektriske nervesignaler til kemiske hormonsignaler.

> [!question]- Opgave 6
> **Spørgsmål:** Hvilken af de to sygdomme (Grave's eller Hashimoto's) kan patienten lide af ud fra tallene i tabellen?
> 
> | Test | Patient | Normal Range |
> | :--- | :--- | :--- |
> | Serum total T3 | 2.93 nmol/L | 0.89-2.44 nmol/L |
> | Free thyroxine (T4) | 27.4 pmol/L | 9.0-21.0 pmol/L |
> | TSH levels | 0.1 mU/L | 0.35-4.94 mU/L |
> | TSH receptor antibody | 2.0 U/mL | 0-1.5 U/mL |
> 
> **Analyse:**
> - Patientens T3 og T4 er **høje** (hyperthyroidisme).
> - TSH er **lavt** (negativ feedback pga. højt T3/T4).
> - TSH receptor antistof er **højt**.
> 
> **Konklusion:** Patienten lider af **Grave's disease**, da antistofferne stimulerer receptoren til at producere for meget thyroidhormon (hyperthyroidisme).

