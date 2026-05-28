# Eksamens øve opgaver (KE501 – Januar 2025)

*Opgavesæt del II - Eksamen uden hjælpemidler (Essay-del).*

---

> [!question]- Opgave 1 (25%) – Syre-base og Termodynamik
> **Kontekst:** Stabilisering af pH i en buffer vha. kemikalier fra laboratoriet.
> 
> ### 1. Begreber og enheder for Opgave 1
> 
> | Symbol | Navn | Enhed | Forklaring |
> | :--- | :--- | :--- | :--- |
> | **$pH$** | Surhedsgrad | (Enhedsløs) | Mål for $H^+$ koncentration. |
> | **$pOH$** | Basiskhed | (Enhedsløs) | Mål for $OH^-$ koncentration. |
> | **$pK_a$** | Syrestyrkekonstant | (Enhedsløs) | $-\log(K_a)$ for den svage syre. |
> | **$\Delta T_f$** | Frysepunktsnedsættelse | $^\circ\text{C}$ eller $\text{K}$ | Hvor meget frysepunktet falder. |
> | **$K_f$** | Kryoskopisk konstant | $\text{K}\cdot\text{kg/mol}$ | Vandets konstant ($1,86$). |
> | **$q$** | Varme | $\text{J}$ | Den energi reaktionen frigiver. |
> | **$\Delta H$** | Reaktionsentalpi | $\text{kJ/mol}$ | Energi pr. mol reageret stof. |
> 
> ---
> 
> ### 2. Data fra kemikalieskabet
> 
> | Indhold | Formel | Type | Konc. (M) | $pK_a$ |
> | :--- | :--- | :--- | :--- | :--- |
> | **Saltsyre** | $HCl$ | Stærk syre | $1,023$ | $-$ |
> | **Natriumhydroxid** | $NaOH$ | Stærk base | $0,529$ | $-$ |
> | **Eddikesyre** | $CH_3COOH$ | Svag syre | $0,690$ | $4,76$ |
> | **Acetat** | $CH_3COO^-$ | Svag base | $0,329$ | $9,24$ ($pK_b$) |
> | **Dihydrogenphosphat** | $H_2PO_4^-$ | Svag syre | $0,432$ | $7,21$ |
> 
> ---
> 
> ### a) pH af stærke syrer og baser
> **Spørgsmål:** Hvad er pH af henholdsvis saltsyren ($HCl$) og natriumhydroxiden ($NaOH$)?
> 
> **Beregning:**
> Da begge er stærke, bruges de direkte definitioner fra [[pH og pOH – forklaring]]:
> - **HCl:** $\text{pH} = -\log(1,023) \approx \mathbf{-0,0099}$
> - **NaOH:** $\text{pOH} = -\log(0,529) \approx 0,2765 \rightarrow \text{pH} = 14 - 0,2765 = \mathbf{13,7235}$
> 
> ---
> 
> ### b) pH af acetatopløsningen
> **Beregning:**
> Da der er tale om en ren svag base, bruges formlen for svage baser fra [[Syre-base styrke – forklaring]]:
> $$\text{pOH} = \frac{1}{2}(pK_b - \log(C_b))$$
> $$\text{pOH} = \frac{1}{2}(9,24 - \log(0,329)) \approx 4,8614 \rightarrow \text{pH} = \mathbf{9,1386}$$
> 
> ---
> 
> ### c) Frysepunkt af acetatopløsningen
> **Analyse:**
> For at finde frysepunktet beregnes den totale mængde partikler ($b_{total}$) som beskrevet i [[Sammenhæng mellem pH og frysepunkt – forklaring]]:
> $b_{total} = i \cdot C = 2 \cdot 0,329 \text{ M} = 0,658 \text{ mol/kg}$
> 
> **Beregning:**
> $$\Delta T_f = K_f \cdot b_{total} = 1,86 \cdot 0,658 \approx \mathbf{1,224 \text{ K}}$$
> $$\text{Frysepunkt} = \mathbf{-1,224 \text{ °C}}$$
> 
> ---
> 
> ### d) Valg af flasker til pH 5 buffer
> **Svar:**
> For at lave en stabil buffer skal man vælge en syre med en $pK_a$ tæt på den ønskede pH (se [[Puffersystem – forklaring]]). Da vi ønsker $\text{pH} = 5,00$, er **Eddikesyre** ($pK_a = 4,76$) det bedste valg. 
> 
> ---
> 
> ### e) Fosfatbuffer opskrift (pH 7,00)
> **Strategi:** For at finde de præcise mængder til opskriften bruges [[Andels-metoden – forklaring]]:
> 1. Find forholdet $r$ vha. [[Pufferligningen – forklaring]]: $r = 10^{(7,00 - 7,21)} \approx 0,6166$
> 2. Find total stofmængde: $n_{total} = 0,200 \text{ M} \cdot 0,250 \text{ L} = 0,050 \text{ mol}$
> 3. Beregn base-andelen: $n_{base} = \frac{r}{1+r} \cdot n_{total} \approx 0,01907 \text{ mol}$
> 
> **Opskrift:**
> - Afmål **Dihydrogenphosphat**: $V = \frac{0,050}{0,432} \approx \mathbf{115,7 \text{ mL}}$
> - Tilsæt **NaOH** (for at danne basen): $V = \frac{0,01907}{0,529} \approx \mathbf{36,0 \text{ mL}}$
> - Fyld op med vand til **250 mL**.
> 
> ---
> 
> ### f) Kalorimetri (Joules per mol HCl)
> **Beregning:**
> Varmeudvekslingen $q$ beregnes vha. [[Varme – forklaring]]:
> $$q = m \cdot c \cdot \Delta T = 153,5 \text{ g} \cdot 4,18 \text{ J/g}\cdot\text{K} \cdot 7,6 \text{ K} \approx \mathbf{4876,4 \text{ J}}$$
> 
> For at finde entalpien pr. mol reageret stof bruges [[ΔH og ΔU – forklaring]]:
> $$\Delta H = \frac{q}{n_{HCl}} = \frac{4876,4 \text{ J}}{0,05115 \text{ mol}} \approx \mathbf{95,3 \text{ kJ/mol}}$$

> [!question]- Opgave 2 – Opløselighed
> **Kontekst:** Vurdering af opløselighed og fældning for forskellige salte.
> 
> ### 1. Begreber og enheder for Opgave 2
> 
> | Symbol | Navn | Enhed | Forklaring |
> | :--- | :--- | :--- | :--- |
> | **$x$** | Molar opløselighed | $\text{mol/L}$ (M) | Mol salt pr. liter ved mætning. |
> | **$S$** | Masse-opløselighed | $\text{g/L}$ | Gram salt pr. liter ved mætning. |
> | **$K_{sp}$** | Opløselighedsprodukt | (Enhedsløs) | Ligevægtskonstant for saltet. |
> | **$Q_{sp}$** | Ion-produkt | (Enhedsløs) | Aktuelt produkt af ion-koncentrationer. |
> 
> ---
> 
> ### a) Maksimal mængde NaCl i 400 mL
> **Beregning:**
> For at finde den maksimale mængde stof, der kan opløses, bruges definitionen af masse-opløselighed ($S$) fra [[Opløselighed – forklaring]]:
> $$m_{max} = 0,400 \text{ L} \cdot 360 \text{ g/L} = \mathbf{144 \text{ g}}$$
> 
> ---
> 
> ### b) Blanding og Fældning (Ion-produkt)
> **Analyse:**
> For at vurdere om der sker en fældning (dannelse af bundfald), beregnes ion-produktet $Q_{sp}$. Denne metode bruges til at sammenligne den aktuelle koncentration med ligevægtskonstanten, som beskrevet i [[Opløselighed – forklaring]]:
> $$Q_{sp} = [Ca^{2+}] \cdot [SO_4^{2-}] = 0,24 \cdot 0,2 = \mathbf{0,048}$$
> 
> **Vurdering:**
> Da **$Q_{sp} > K_{sp}$** (for calciumsulfat er $K_{sp} \approx 2 \cdot 10^{-4}$), vil systemet forsøge at mindske ion-koncentrationen ved at danne et fast stof. Derfor vil der ske en **fældning** af bundfald. Dette vurderes ud fra principperne i [[Opløselighed – forklaring]].

> [!question]- Opgave 3 – Reaktionskinetik
> **Kontekst:** Bestemmelse af reaktionsorden og hastighedskonstant.
> 
> ### 1. Begreber og enheder for Opgave 3
> 
> | Symbol | Navn | Enhed | Forklaring |
> | :--- | :--- | :--- | :--- |
> | **$v$** | Reaktionshastighed | $\text{mol/(L} \cdot \text{s)}$ | Hvor hurtigt produktet dannes. |
> | **$[A], [B]$** | Koncentrationer | $\text{mol/L}$ (M) | Reaktanternes koncentration. |
> | **$k$** | Hastighedskonstant | $\text{M}^{-2}\text{s}^{-1}$ | Konstant for den specifikke reaktion. |
> | **$m, n$** | Reaktionsordener | (Enhedsløs) | Eksponenterne i hastighedsudtrykket. |
> 
> ---
> 
> ### a) Bestemmelse af ordener og hastighed
> **Strategi:**
> Reaktionsordenerne findes ved at sammenligne hastighederne ved forskellige koncentrationer (se [[Reaktionshastighed – forklaring]]):
> 
> - **Orden for A (m):** Sammenlign forsøg 1 og 2, hvor $[B]$ er konstant ($0,1\text{ M}$):
>   $$\frac{v_2}{v_1} = \left(\frac{[A]_2}{[A]_1}\right)^m \Rightarrow \frac{0,008}{0,002} = \left(\frac{0,2}{0,1}\right)^m \Rightarrow 4 = 2^m \Rightarrow \mathbf{m = 2}$$
> 
> - **Orden for B (n):** Sammenlign forsøg 1 og 3, hvor $[A]$ er konstant ($0,1\text{ M}$):
>   $$\frac{v_3}{v_1} = \left(\frac{[B]_3}{[B]_1}\right)^n \Rightarrow \frac{0,004}{0,002} = \left(\frac{0,2}{0,1}\right)^n \Rightarrow 2 = 2^n \Rightarrow \mathbf{n = 1}$$
> 
> - **Hastighedskonstanten (k):** Findes vha. [[Hastighedsudtryk – forklaring]] ved at indsætte data fra forsøg 1:
>   $$v = k \cdot [A]^2 \cdot [B]^1 \Rightarrow 0,002 \text{ M/s} = k \cdot (0,1 \text{ M})^2 \cdot (0,1 \text{ M})$$
>   $$k = \frac{0,002}{0,1^2 \cdot 0,1} = \frac{0,002}{0,001} = \mathbf{2 \text{ M}^{-2}\text{s}^{-1}}$$
> 
> - **Ny hastighed ($v$):** Beregnes ved $[A] = 0,3 \text{ M}$ og $[B] = 0,1 \text{ M}$:
>   $$v = 2 \text{ M}^{-2}\text{s}^{-1} \cdot (0,3 \text{ M})^2 \cdot 0,1 \text{ M}$$
>   $$v = 2 \cdot 0,09 \cdot 0,1 = \mathbf{0,018 \text{ M/s}}$$
> 
---

[[1 Formelsamling KE559 – Grundlæggende Kemi]]
