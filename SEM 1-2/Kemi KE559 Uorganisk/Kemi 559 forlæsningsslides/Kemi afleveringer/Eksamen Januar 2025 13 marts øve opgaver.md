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
> **Beregning (HCl):**
> Da $HCl$ er en stærk syre, er $[H^+] = C_{HCl} = 1,023 \text{ M}$.
> $$\text{pH} = -\log(1,023) \approx \mathbf{-0,0099}$$
> 
> **Beregning (NaOH):**
> Da $NaOH$ er en stærk base, er $[OH^-] = C_{NaOH} = 0,529 \text{ M}$.
> $$\text{pOH} = -\log(0,529) \approx 0,2765$$
> $$\text{pH} = 14 - 0,2765 = \mathbf{13,7235}$$
> 
> ---
> 
> ### b) pH af acetatopløsningen
> **Beregning:**
> Her er der tale om en svag base ($CH_3COO^-$). Vi bruger $pK_b = 9,24$ og formlen for en svag base:
> $$\text{pOH} = \frac{1}{2}(pK_b - \log(C_b))$$
> $$\text{pOH} = \frac{1}{2}(9,24 - \log(0,329)) \approx 4,8614$$
> $$\text{pH} = 14 - 4,8614 = \mathbf{9,1386}$$
> 
> ---
> 
> ### c) Frysepunkt af acetatopløsningen
> **Analyse:**
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
> Da vi ønsker $\text{pH} = 5,00$, er **Eddikesyre** ($pK_a = 4,76$) det bedste valg. 
> 
> ---
> 
> ### e) Fosfatbuffer opskrift (pH 7,00)
> **Strategi:** Brug [[Andels-metoden – forklaring]]!
> 1. $r = 10^{(7,00 - 7,21)} \approx 0,6166$
> 2. $n_{total} = 0,200 \text{ M} \cdot 0,250 \text{ L} = 0,050 \text{ mol}$
> 3. $n_{base} = \frac{r}{1+r} \cdot n_{total} \approx 0,01907 \text{ mol}$
> 
> **Opskrift:**
> - Afmål **Dihydrogenphosphat**: $V = \frac{0,050}{0,432} \approx \mathbf{115,7 \text{ mL}}$
> - Tilsæt **NaOH**: $V = \frac{0,01907}{0,529} \approx \mathbf{36,0 \text{ mL}}$
> - Fyld op med vand til **250 mL**.
> 
> ---
> 
> ### f) Kalorimetri (Joules per mol HCl)
> **Beregning af varme ($q$):**
> $$q = 153,5 \text{ g} \cdot 4,18 \text{ J/g}\cdot\text{K} \cdot 7,6 \text{ K} \approx \mathbf{4876,4 \text{ J}}$$
> 
> **Joule pr. mol HCl:**
> $n_{HCl} = 0,05115 \text{ mol}$
> $$\Delta H = \frac{4876,4 \text{ J}}{0,05115 \text{ mol}} \approx \mathbf{95,3 \text{ kJ/mol}}$$

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
> ### 2. Data for salte i skabet
> 
> | Salt | Formel | M ($g/mol$) | Opløselighed ($g/L$) |
> | :--- | :--- | :--- | :--- |
> | **Natriumchlorid** | $NaCl$ | $58,44$ | $360$ |
> | **Natriumsulfat** | $Na_2SO_4$ | $142,04$ | $430$ |
> | **Calciumchlorid** | $CaCl_2$ | $110,98$ | $740$ |
> | **Calciumsulfat** | $CaSO_4$ | $136,14$ | $\approx 2$ |
> 
> ---
> 
> ### a) Maksimal mængde NaCl i 400 mL
> $$m_{max} = 0,400 \text{ L} \cdot 360 \text{ g/L} = \mathbf{144 \text{ g}}$$
> 
> ---
> 
> ### b) Blanding og Fældning (Ion-produkt)
> **Beregning af $Q_{sp}$ for $CaSO_4$:**
> $[SO_4^{2-}]_{mix} = 0,2 \text{ M}$
> $[Ca^{2+}]_{mix} = 0,24 \text{ M}$
> $$Q_{sp} = [Ca^{2+}] \cdot [SO_4^{2-}] = 0,24 \cdot 0,2 = \mathbf{0,048}$$
> 
> **Vurdering:**
> Da **$Q_{sp} > K_{sp}$** (hvor $K_{sp} \approx 2 \cdot 10^{-4}$ for $CaSO_4$), vil der ske en **fældning** af bundfald.
> Se mere i [[Opløselighed – forklaring]].

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
> ### 2. Forsøgsdata
> 
> | [A] (M) | [B] (M) | Hastighed (M/s) |
> | :--- | :--- | :--- |
> | $0,1$ | $0,1$ | $0,002$ |
> | $0,2$ | $0,1$ | $0,008$ |
> | $0,1$ | $0,2$ | $0,004$ |
> 
> ---
> 
> ### a) Bestemmelse af ordener og hastighed
> - **Orden for A:** $2^m = \frac{0,008}{0,002} = 4 \Rightarrow \mathbf{m = 2}$
> - **Orden for B:** $2^n = \frac{0,004}{0,002} = 2 \Rightarrow \mathbf{n = 1}$
> - **Konstanten $k$:** $0,002 = k \cdot (0,1)^2 \cdot (0,1) \Rightarrow \mathbf{k = 2}$
> - **Ny hastighed:** $v = 2 \cdot (0,3)^2 \cdot 0,1 = \mathbf{0,018 \text{ M/s}}$
> 
> ---
> 
> [[1 Formelsamling KE559 – Grundlæggende Kemi]]
> [[Reaktionshastighed – forklaring]]
