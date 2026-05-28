# Uge 41 - Termodynamik II

> [!question]- **Opgave 1**
> $800 \text{ J}$ i form af varmeenergi tilføres til to separate prøver; Den ene prøve bestående af $200 \text{ g}$ kobber og den anden bestående af $200 \text{ g}$ vand. Begge prøver starter ved $22^\circ\text{C}$. Bestem den endelige temperatur for begge prøver.
> 
> **Svar:**
> Vi bruger formlen $Q = m \cdot c \cdot \Delta T \Rightarrow \Delta T = \frac{Q}{m \cdot c}$.
> - **Kobber:** $c_{Cu} = 0,385 \text{ J/(g}\cdot\text{K)}$
>   $\Delta T = \frac{800}{200 \cdot 0,385} = 10,39^\circ\text{C}$
>   $T_{slut} = 22 + 10,39 = \mathbf{32,39^\circ\text{C}}$
> - **Vand:** $c_{vand} = 4,184 \text{ J/(g}\cdot\text{K)}$
>   $\Delta T = \frac{800}{200 \cdot 4,184} = 0,96^\circ\text{C}$
>   $T_{slut} = 22 + 0,96 = \mathbf{22,96^\circ\text{C}}$
> Referer til [[Specifik varmekapacitet – forklaring]].

> [!question]- **Opgave 2**
> En prøve af $2,18 \text{ g}$ kulstof brændes fuldstændigt... i et bombekalorimeter med en varmekapacitet på $6,504 \text{ kJ/K}$. $0,755 \text{ kg}$ vand omgiver bombekalorimeteret. Temperaturen øges fra $20,00^\circ\text{C}$ til $24,84^\circ\text{C}$. Bestem $\Delta_r U$ for forbrændingen af $1 \text{ mol}$ kulstof.
> 
> **Svar:**
> Samlet varmekapacitet: $C_{tot} = C_{cal} + m_{vand} \cdot c_{vand} = 6,504 \text{ kJ/K} + 0,755 \text{ kg} \cdot 4,184 \text{ kJ/(kg}\cdot\text{K)} = 9,663 \text{ kJ/K}$.
> Frigivet varme: $Q = C_{tot} \cdot \Delta T = 9,663 \cdot (24,84 - 20,00) = 46,77 \text{ kJ}$.
> Stofmængde af kulstof ($M = 12,011 \text{ g/mol}$): $n = \frac{2,18}{12,011} = 0,1815 \text{ mol}$.
> $\Delta_r U$ pr. mol: $\Delta_r U = \frac{-46,77 \text{ kJ}}{0,1815 \text{ mol}} = \mathbf{-257,7 \text{ kJ/mol}}$.
> Referer til [[Bombekalorimeter – forklaring]].

> [!question]- **Opgave 3**
> 
> a) Standard dannelsesenthalpi for ammoniumnitrat ($NH_4NO_3$) er $-365,56 \text{ kJ/mol}$. Opskriv den afstemte reaktionsligning for dannelsen ud fra grundstoffer.
> **Svar:**
> $N_2(g) + 2H_2(g) + \frac{3}{2} O_2(g) \rightarrow NH_4NO_3(s)$
> 
> b) Opskriv den afstemte reaktion for formeringen af $NH_4NO_3(s)$ ud fra $NH_3(g)$ og $HNO_3(l)$ og bestem $\Delta_r H^\circ$.
> **Svar:**
> $NH_3(g) + HNO_3(l) \rightarrow NH_4NO_3(s)$
> $\Delta_r H^\circ = [-365,56] - [(-46,1) + (-174,1)] = \mathbf{-145,36 \text{ kJ/mol}}$
> 
> c) Bestem $\Delta_r H^\circ$ for: $NH_4NO_3(s) \rightarrow N_2O(g) + 2H_2O(g)$.
> **Svar:**
> $\Delta_r H^\circ = [82,05 + 2 \cdot (-241,8)] - [-365,56] = \mathbf{-35,99 \text{ kJ/mol}}$
> 
> d) Bestem $\Delta H$ når $50 \text{ kg}$ $NH_4NO_3$ nedbrydes ifølge: $NH_4NO_3(s) \rightarrow N_2(g) + 2H_2O(g) + \frac{1}{2} O_2(g)$.
> **Svar:**
> $\Delta_r H^\circ = [2 \cdot (-241,8)] - [-365,56] = -118,04 \text{ kJ/mol}$.
> $n = \frac{50000 \text{ g}}{80,04 \text{ g/mol}} = 624,7 \text{ mol}$.
> $\Delta H_{total} = 624,7 \cdot (-118,04) = \mathbf{-73738 \text{ kJ}}$.

> [!question]- **Opgave 4**
> Hvad er det maksimale arbejde der teoretisk kan opnås ved $25^\circ\text{C}$ og $10^5 \text{ Pa}$ fra oxidationen af $1,75 \text{ mol}$ aluminium i $O_2(g)$ som giver $Al_2O_3(s)$?
> 
> **Svar:**
> Maksimalt arbejde er lig med $\Delta G$.
> $2 Al(s) + \frac{3}{2} O_2(g) \rightarrow Al_2O_3(s)$
> $\Delta_f G^\circ(Al_2O_3) = -1582,3 \text{ kJ/mol}$. Dette er pr. 2 mol Al.
> Pr. 1,75 mol Al: $W_{max} = \frac{1,75}{2} \cdot (-1582,3) = \mathbf{-1384,5 \text{ kJ}}$.
> Referer til [[Gibbs fri energi – forklaring]].

> [!question]- **Opgave 5**
> Fordampningsentalpien for diethyl ether er $27 \text{ kJ/mol}$, og $\Delta S^\circ$ er $87,8 \text{ J/(mol}\cdot\text{K)}$. Ved hvilken temperatur vil gas og væske være i ligevægt ved $10^5 \text{ Pa}$?
> 
> **Svar:**
> Ved ligevægt er $\Delta G = 0 \Rightarrow \Delta H - T \Delta S = 0 \Rightarrow T = \frac{\Delta H}{\Delta S}$.
> $T = \frac{27000 \text{ J/mol}}{87,8 \text{ J/(mol}\cdot\text{K)}} = 307,5 \text{ K} = \mathbf{34,35^\circ\text{C}}$.

