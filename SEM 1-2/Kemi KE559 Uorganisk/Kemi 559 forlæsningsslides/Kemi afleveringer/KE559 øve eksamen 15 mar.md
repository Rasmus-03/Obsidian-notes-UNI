# Skriftlig eksamen i KE559 – 15. marts (Øve)

*Opgavesæt om Almen kemi for life sciences.*

---

> [!question]- Opgave 1 – Korte spørgsmål (25%)
> 
> ### a) Dipolmoment
> **Opgave:** Bestem om Ethan ($C_2H_6$) og Ethanol ($C_2H_5OH$) har et dipolmoment.
> 
> **Svar:**
> - **Ethan ($C_2H_6$):** Er et symmetrisk molekyle (ikke-polært). De enkelte $C-H$ bindinger har et lille dipolmoment, men de ophæver hinanden pga. symmetrien. Samlet dipolmoment = **0**.
> - **Ethanol ($C_2H_5OH$):** Er et asymmetrisk molekyle pga. $-OH$ gruppen. Ilt er meget elektronegativt, hvilket skaber en negativ pol ved ilt-atomet og en positiv pol ved hydrogen/carbon. Ethanol har derfor et **permanent dipolmoment**.
> *Se mere i [[Dipolmoment – forklaring]] og [[Elektronegativitet – forklaring]].*
> 
> ---
> 
> ### b) Reaktionskinetik
> **Data:**
> | Forsøg | $[HgCl_2]_0$ (M) | $[C_2O_4^{2-}]_0$ (M) | Hastighed (M/min) |
> | :--- | :--- | :--- | :--- |
> | 1 | 0,105 | 0,15 | $1,8 \cdot 10^{-5}$ |
> | 2 | 0,105 | 0,30 | $7,1 \cdot 10^{-5}$ |
> | 3 | 0,052 | 0,30 | $3,5 \cdot 10^{-5}$ |
> 
> **1. Reaktionsordener:**
> - **For $C_2O_4^{2-}$ (n):** Sammenlign forsøg 1 og 2 ($HgCl_2$ konstant). Koncentrationen dobles ($0,15 \rightarrow 0,30$).
>   $$\frac{7,1 \cdot 10^{-5}}{1,8 \cdot 10^{-5}} \approx 3,94 \approx 4 \Rightarrow 2^n = 4 \Rightarrow \mathbf{n = 2}$$
> - **For $HgCl_2$ (m):** Sammenlign forsøg 2 og 3 ($C_2O_4^{2-}$ konstant). Koncentrationen halveres ($0,105 \rightarrow 0,052$).
>   $$\frac{3,5 \cdot 10^{-5}}{7,1 \cdot 10^{-5}} \approx 0,5 \Rightarrow 0,5^m = 0,5 \Rightarrow \mathbf{m = 1}$$
> - **Samlet orden:** $1 + 2 = \mathbf{3}$.
> 
> **2. Hastighedskonstanten ($k$):**
> Brug data fra forsøg 1 i [[Hastighedsudtryk – forklaring]]:
> $$1,8 \cdot 10^{-5} \text{ M/min} = k \cdot (0,105 \text{ M})^1 \cdot (0,15 \text{ M})^2$$
> $$k = \frac{1,8 \cdot 10^{-5}}{0,105 \cdot 0,0225} \approx \mathbf{0,0076 \text{ M}^{-2}\text{min}^{-1}}$$
> 
> ---
> 
> ### c) Støkiometri og Begrænsende faktor
> **Opgave:** 2,75 g NaOH (s) tilsættes 200 mL 0,10 M $FeCl_2$ (aq). Find masse af $Fe(OH)_2$ og $[Fe^{2+}]_{slut}$.
> 
> **Reaktion:** $2 NaOH + FeCl_2 \rightarrow Fe(OH)_2 (s) + 2 NaCl$
> 
> **1. Find stofmængder ($n = m/M$ eller $n = c \cdot V$):**
> - $n_{NaOH} = \frac{2,75 \text{ g}}{40,0 \text{ g/mol}} = \mathbf{0,06875 \text{ mol}}$
> - $n_{FeCl_2} = 0,10 \text{ M} \cdot 0,200 \text{ L} = \mathbf{0,020 \text{ mol}}$
> 
> **2. Begrænsende faktor:**
> Vi skal bruge 2 mol $NaOH$ pr. 1 mol $FeCl_2$. 
> Til 0,020 mol $FeCl_2$ skal bruges $0,020 \cdot 2 = 0,040$ mol $NaOH$.
> Da vi har 0,06875 mol $NaOH$, er **$FeCl_2$ den begrænsende faktor**.
> 
> **3. Udbytte og restkoncentration:**
> - $m_{Fe(OH)_2} = n_{FeCl_2} \cdot M = 0,020 \text{ mol} \cdot 89,87 \text{ g/mol} = \mathbf{1,797 \text{ g}}$
> - Da $FeCl_2$ er brugt helt op, er $[Fe^{2+}]_{slut} \approx \mathbf{0 \text{ M}}$ (hvis vi ser bort fra $K_{sp}$).
> 
> ---
> 
> ### d) Temperaturafhængighed af K (van't Hoff)
> **Opgave:** $K_1 = 0,20$ ved $298 \text{ K}$. $\Delta H^\circ = 58 \text{ kJ/mol}$. Find $K_2$ ved $350 \text{ K}$.
> 
> **Beregning:**
> Brug [[van't Hoff-ligning – forklaring]] (husk $\Delta H$ i Joule!):
> $$\ln\left(\frac{K_2}{0,20}\right) = \frac{-58.000}{8,314} \cdot \left(\frac{1}{350} - \frac{1}{298}\right)$$
> $$\ln\left(\frac{K_2}{0,20}\right) \approx -6976 \cdot (-0,000499) \approx 3,48$$
> $$K_2 = 0,20 \cdot e^{3,48} \approx \mathbf{6,48}$$
> *Da reaktionen er endoterm, stiger K ved temperaturstigning.*
> 
> ---
> 
> ### e) Kalorimetri
> **Opgave:** En kugle ($225^\circ C$) droppes i 125 g vand ($22^\circ C$). Sluttemperatur = $34,8^\circ C$. Find $C_{kugle}$ i J/K.
> 
> **Beregning:**
> Modtaget varme af vandet (brug [[Varme – forklaring]]):
> $$q_{vand} = m \cdot c \cdot \Delta T = 125 \text{ g} \cdot 4,18 \text{ J/g}\cdot\text{K} \cdot (34,8 - 22) \text{ K} = 125 \cdot 4,18 \cdot 12,8 = \mathbf{6688 \text{ J}}$$
> 
> Da varmen kommer fra kuglen ($q_{vand} = -q_{kugle}$):
> $$C_{kugle} = \frac{q}{\Delta T_{kugle}} = \frac{6688 \text{ J}}{225 - 34,8 \text{ K}} = \frac{6688}{190,2} \approx \mathbf{35,16 \text{ J/K}}$$

> [!question]- Opgave 2 – Koncentrationer og Tryk (25%)
> 
> ### a) Molaritet og Molalitet
> **Opgave:** 45,0 g mannitol ($M = 182,172 \text{ g/mol}$) i 1200 mL vand ($\rho = 0,997 \text{ g/cm}^3$).
> 
> **Beregning:**
> - $n = \frac{45,0}{182,172} = \mathbf{0,247 \text{ mol}}$
> - $V_{opløsning} = 1,2 \text{ L} \rightarrow \text{Molaritet} = \frac{0,247 \text{ mol}}{1,2 \text{ L}} = \mathbf{0,206 \text{ M}}$
> - $m_{vand} = 1200 \text{ mL} \cdot 0,997 \text{ g/mL} = 1196,4 \text{ g} = 1,1964 \text{ kg}$
> - **Molalitet** = $\frac{0,247 \text{ mol}}{1,1964 \text{ kg}} = \mathbf{0,206 \text{ mol/kg (m)}}$
> *Se [[Molaritet og Molalitet – forklaring]].*
> 
> ---
> 
> ### b) Frysepunkt
> **Beregning:**
> Brug [[Sammenhæng mellem pH og frysepunkt – forklaring]]:
> $$\Delta T_f = K_f \cdot b \cdot i = 1,86 \cdot 0,206 \cdot 1 = \mathbf{0,384 \text{ K}}$$
> $$\text{Frysepunkt} = 0 - 0,384 = \mathbf{-0,384 \text{ °C}}$$
> 
> ---
> 
> ### c) Osmotisk tryk og Molar masse
> **Opgave:** 5,5 g/L polypeptid giver $0,103 \text{ atm}$ ved $5^\circ C$. Find $M$.
> 
> **Beregning:**
> Brug [[Osmotisk tryk – forklaring]] (find molaritet $x$):
> $$0,103 \text{ atm} = 1 \cdot x \cdot 0,08206 \cdot (5 + 273,15)$$
> $$x = \frac{0,103}{0,08206 \cdot 278,15} \approx \mathbf{0,00451 \text{ mol/L}}$$
> $$M = \frac{\text{masse pr. L}}{\text{mol pr. L}} = \frac{5,5 \text{ g/L}}{0,00451 \text{ mol/L}} \approx \mathbf{1219 \text{ g/mol}}$$
> 
> ---
> 
> ### d) Fælles ion-effekt
> **Opgave:** Opløselighed af $PbCl_2$ ($K_{sp} = 1,7 \cdot 10^{-5}$) i hhv. rent vand og 10,8 g NaCl i 1,2 L.
> 
> **1. Rent vand:**
> $K_{sp} = [Pb^{2+}][Cl^-]^2 = x \cdot (2x)^2 = 4x^3$
> $1,7 \cdot 10^{-5} = 4x^3 \Rightarrow x = \sqrt[3]{\frac{1,7 \cdot 10^{-5}}{4}} \approx \mathbf{0,0162 \text{ M}} \rightarrow \mathbf{4,50 \text{ g/L}}$
> 
> **2. I saltvand (0,154 M Cl-):**
> Brug [[Fælles ion-effekt – forklaring]]:
> $[Cl^-] = 0,154 \text{ M} + 2x \approx 0,154 \text{ M}$
> $1,7 \cdot 10^{-5} = x \cdot (0,154)^2 \Rightarrow x = \frac{1,7 \cdot 10^{-5}}{0,0237} \approx \mathbf{0,000717 \text{ M}} \rightarrow \mathbf{0,199 \text{ g/L}}$
> *Opløseligheden falder drastisk pga. den fælles ion ($Cl^-$).*

> [!question]- Opgave 3 – Syre-base (25%)
> 
> ### a) pH af 0,12 M eddikesyre ($pK_a = 4,75$)
> **Beregning:**
> Brug [[Syre-base styrke – forklaring]] eller [[ICE skema – forklaring]]:
> $$10^{-4,75} = \frac{x^2}{0,12 - x} \Rightarrow x = 0,00145 \text{ M}$$
> $$\text{pH} = -\log(0,00145) = \mathbf{2,84}$$
> 
> ---
> 
> ### b) Tilsætning af 0,05 mol natriumacetat til 800 mL
> **Beregning:**
> Ny $[base] = \frac{0,05 \text{ mol}}{0,8 \text{ L}} = 0,0625 \text{ M}$. $[syre] = 0,12 \text{ M}$.
> Brug [[Pufferligningen – forklaring]]:
> $$\text{pH} = 4,75 + \log\left(\frac{0,0625}{0,12}\right) = 4,75 - 0,283 = \mathbf{4,47}$$
> 
> ---
> 
> ### c) pH af 0,4 M NaOH
> **Beregning:**
> Stærk base (se [[pH og pOH – forklaring]]):
> $$\text{pOH} = -\log(0,4) = 0,398 \rightarrow \text{pH} = 14 - 0,398 = \mathbf{13,60}$$
> 
> ---
> 
> ### d) Tilsætning af NaOH til eddikesyre (Andels-metoden)
> **Opgave:** 125 mL 0,4 M NaOH tilsættes 500 mL 0,15 M eddikesyre.
> 
> **Beregning:**
> - $n_{NaOH} = 0,125 \text{ L} \cdot 0,4 \text{ M} = \mathbf{0,050 \text{ mol}}$
> - $n_{syre, start} = 0,500 \text{ L} \cdot 0,15 \text{ M} = \mathbf{0,075 \text{ mol}}$
> 
> Reaktionen forbruger syre og danner base (se [[Bufferkapacitet – forklaring]]):
> - $n_{base, slut} = 0,050 \text{ mol}$
> - $n_{syre, slut} = 0,075 - 0,050 = \mathbf{0,025 \text{ mol}}$
> 
> Find pH vha. [[Pufferligningen – forklaring]]:
> $$\text{pH} = 4,75 + \log\left(\frac{0,050}{0,025}\right) = 4,75 + 0,301 = \mathbf{5,05}$$

[[1 Formelsamling KE559 – Grundlæggende Kemi]]
