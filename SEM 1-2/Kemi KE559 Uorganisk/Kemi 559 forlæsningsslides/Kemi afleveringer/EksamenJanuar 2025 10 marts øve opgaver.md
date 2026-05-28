# Eksamens øve opgaver (KE501 – 10. marts 2025)

*Opgavesæt del II - Eksamen uden hjælpemidler.*

---

> [!question]- Opgave 1 (19%) – Termodynamik
> **Reaktion:** Forbrænding af methan i ilt-atmosfære:
> $$CH_4 (g) + 2 O_2 (g) \rightarrow CO_2 (g) + 2 H_2O (g)$$
> 
> ### 1. Begreber og enheder for Opgave 1
> 
> | Symbol | Navn | Enhed | Forklaring |
> | :--- | :--- | :--- | :--- |
> | **$\Delta H^\circ$** | Standard entalpi | $\text{kJ/mol}$ | Varmeudveksling ved reaktionen. |
> | **$\Delta S^\circ$** | Standard entropi | $\text{J/(mol} \cdot \text{K)}$ | Ændring i systemets uorden. |
> | **$\Delta G^\circ$** | Gibbs fri energi | $\text{kJ/mol}$ | Afgør om reaktionen er spontan. |
> | **$T$** | Temperatur | $\text{K}$ (Kelvin) | SKAL være i Kelvin ($^\circ\text{C} + 273,15$). |
> | **$K$** | Ligevægtskonstant | (Enhedsløs) | Forholdet mellem produkter og reaktanter. |
> 
> ---
> 
> ### 2. Data ved 25 °C
> 
> | Molekyle | $\Delta H^\circ$ (kJ/mol) | $\Delta S^\circ$ (J/mol·K) |
> | :--- | :--- | :--- |
> | $CH_4 (g)$ | -74,85 | 186,2 |
> | $O_2 (g)$ | 0 | 205,0 |
> | $CO_2 (g)$ | -394 | 213,6 |
> | $CO_2 (aq)$ | -413,8 | 117,6 |
> | $H_2O (g)$ | -241,8 | 188,7 |
> | $H_2O (l)$ | -285,9 | 67,0 |
> 
> ---
> 
> ### a) Reaktionsentalpien ($\Delta H^\circ$)
> **Spørgsmål:** Beregn $\Delta H^\circ$ og angiv om reaktionen er endoterm eller exoterm.
> 
> **Beregning:**
> For at finde entalpien bruges definitionen fra [[Entalpi – forklaring]]:
> $$\Delta H^\circ = \sum \Delta H(\text{produkter}) - \sum \Delta H(\text{reaktanter})$$
> $$\Delta H^\circ = (-394 + (2 \cdot -241,8)) - (-74,85 + 0) = \mathbf{-802,75 \text{ kJ/mol}}$$
> 
> **Svar:** Reaktionen er **exoterm** (da $\Delta H^\circ < 0$).
> 
> ---
> 
> ### b) Entropiændringen ($\Delta S^\circ$)
> **Spørgsmål:** Beregn $\Delta S^\circ$ for reaktionen.
> 
> **Beregning:**
> Ændringen i uorden findes vha. [[Entropiændring – forklaring]]:
> $$\Delta S^\circ = \sum S^\circ(\text{produkter}) - \sum S^\circ(\text{reaktanter})$$
> $$\Delta S^\circ = (213,6 + (2 \cdot 188,7)) - (186,2 + (2 \cdot 205,0)) = \mathbf{-5,2 \text{ J/(mol·K)}}$$
> 
> ---
> 
> ### c) Gibbs fri energi ($\Delta G^\circ$)
> **Spørgsmål:** Beregn $\Delta G^\circ$ ved 25 °C. Er reaktionen spontan?
> 
> **Beregning:**
> Spontaniteten vurderes vha. [[Gibbs fri energi – forklaring]]:
> $$\Delta G^\circ = \Delta H^\circ - T \cdot \Delta S^\circ$$
> $$T = 25 + 273,15 = 298,15 \text{ K}$$
> $$\Delta G^\circ = -802,75 - (298,15 \cdot -0,0052) \approx \mathbf{-801,2 \text{ kJ/mol}}$$
> 
> **Svar:** Reaktionen er **spontan** (da $\Delta G^\circ < 0$).
> 
> ---
> 
> ### d) Temperatur for spontanitet
> **Beregning:**
> For at finde temperaturen hvor reaktionen skifter, sættes $\Delta G = 0$ i [[Gibbs fri energi – forklaring]]:
> $$T = \frac{\Delta H^\circ}{\Delta S^\circ} = \frac{-802,75}{-0,0052} \approx \mathbf{154.375 \text{ K}}$$
> 
> ---
> 
> ### e) Ligevægtskonstanten ($K$)
> **Beregning:**
> Sammenhængen mellem energi og ligevægt findes vha. [[Ligevægtskonstant – forklaring]]:
> $$\Delta G^\circ = -R \cdot T \cdot \ln(K) \Rightarrow K = e^{-\frac{\Delta G^\circ}{R \cdot T}}$$
> $$K = e^{-\frac{-801.200}{8,314 \cdot 298}} \approx \mathbf{2,77 \cdot 10^{140}}$$

> [!question]- Opgave 2 (13%) – Syre/Basekemi
> **Kontekst:** pH betydning for enzymaktivitet.
> 
> ### 1. Begreber og enheder for Opgave 2
> 
> | Symbol | Navn | Enhed | Forklaring |
> | :--- | :--- | :--- | :--- |
> | **$pH$** | Surhedsgrad | (Enhedsløs) | Mål for $H^+$ koncentration. |
> | **$pK_a$** | Syrestyrkekonstant | (Enhedsløs) | $-\log(K_a)$ for eddikesyre. |
> | **$c$** | Koncentration | $\text{mol/L}$ (M) | Mængde stof pr. liter. |
> | **$\Delta T_f$** | Frysepunktsfald | $^\circ\text{C}$ eller $\text{K}$ | Hvor meget frysepunktet sænkes. |
> 
> ---
> 
> ### a) pH af eddikesyre-opløsning
> **Opgave:** Beregn pH for 0,01 M eddikesyre ($pK_a = 4,76$).
> 
> **Beregning:**
> Da eddikesyre er en svag syre, bruges [[ICE skema – forklaring]] til at opstille ligevægten:
> | | $CH_3COOH$ | $CH_3COO^-$ | $H_3O^+$ |
> | :--- | :--- | :--- | :--- |
> | **I**nitial | 0,01 | 0 | 0 |
> | **C**hange | -x | +x | +x |
> | **E**quilibrium | 0,01 - x | x | x |
> 
> Derefter bruges definitionen fra [[Syre-base styrke – forklaring]]:
> $$10^{-4,76} = \frac{x^2}{0,01 - x} \Rightarrow x = 4,08 \cdot 10^{-4} \text{ M}$$
> $$\text{pH} = -\log(4,08 \cdot 10^{-4}) \approx \mathbf{3,39}$$
> 
> ---
> 
> ### b) pH af bufferopløsning
> **Beregning:**
> For at finde pH i bufferen bruges **Henderson-Hasselbalch** ligningen fra [[Pufferligningen – forklaring]]:
> $$\text{pH} = pK_a + \log\left(\frac{[\text{base}]}{[\text{syre}]}\right) = 4,76 + \log\left(\frac{0,15}{0,10}\right) \approx \mathbf{4,94}$$
> 
> ---
> 
> ### c) Bufferens frysepunkt
> **Beregning:**
> Frysepunktet findes vha. [[Sammenhæng mellem pH og frysepunkt – forklaring]]:
> $b_{total} = 0,10 \text{ (syre)} + (0,15 \cdot 2) \text{ (salt)} = 0,40 \text{ mol/kg}$
> $$\Delta T_f = 1,86 \cdot 0,40 = \mathbf{0,744 \text{ K}}$$
> $$\text{Frysepunkt} = \mathbf{-0,744 \text{ °C}}$$

[[1 Formelsamling KE559 – Grundlæggende Kemi]]
