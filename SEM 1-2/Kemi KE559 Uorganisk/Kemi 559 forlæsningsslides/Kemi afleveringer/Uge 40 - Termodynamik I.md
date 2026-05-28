# Uge 40 - Termodynamik I

> [!question]- **1 Energi og Varme**
> 
> a) Bestem mængden er varme i MJ, der bliver dannet ved forbrændingen af en $1,0 \text{ dm}^3$ oktan ved $298 \text{ K}$. Densiteten af oktan er $0,703 \text{ g/cm}^3$. $\Delta_c H^\circ = -5471 \text{ kJ/mol}$.
> 
> **Svar:**
> Først findes massen af oktan ($C_8H_{18}$):
> $m = V \cdot \rho = 1000 \text{ cm}^3 \cdot 0,703 \text{ g/cm}^3 = 703 \text{ g}$
> Molarmassen af oktan ($M = 114,23 \text{ g/mol}$):
> $n = \frac{703 \text{ g}}{114,23 \text{ g/mol}} = 6,154 \text{ mol}$
> Varmen frigivet:
> $Q = n \cdot \Delta_c H^\circ = 6,154 \text{ mol} \cdot (-5471 \text{ kJ/mol}) = -33668 \text{ kJ} \approx -33,7 \text{ MJ}$
> 
> b) Reaktionen for nedbrydningen af sukrose ($C_{12}H_{22}O_{11}$) i kroppen...
> 
> i. Hvor meget energi dannes der ved nedbrydningen af $50,0 \text{ g}$ sukrose i kroppen?
> 
> **Svar:**
> Vi beregner først reaktionsentalpien $\Delta_r H^\circ$ ved brug af [[Standard dannelsesentalpi – forklaring]]:
> $\Delta_r H^\circ = [12 \cdot \Delta_f H^\circ(CO_2) + 11 \cdot \Delta_f H^\circ(H_2O)] - [\Delta_f H^\circ(sukrose)]$
> $\Delta_r H^\circ = [12 \cdot (-393,5) + 11 \cdot (-285,8)] - [-2230] = -5635,8 \text{ kJ/mol}$
> For $50,0 \text{ g}$ ($M = 342,3 \text{ g/mol}$):
> $n = \frac{50,0}{342,3} = 0,146 \text{ mol}$
> $Q = 0,146 \text{ mol} \cdot (-5635,8 \text{ kJ/mol}) = -823 \text{ kJ}$
> 
> ii. Når $1,46 \text{ g}$ sukrose forbrændes i et bombekalorimeter (konstant volumen) frigøres der $24,00 \text{ kJ}$ varme.
> 
> **Svar:**
> i. Bestem $\Delta U$:
> $\Delta U = \frac{-24,00 \text{ kJ}}{(1,46 \text{ g} / 342,3 \text{ g/mol})} = -5626,8 \text{ kJ/mol}$
> ii. Bestem $\Delta H$:
> $\Delta H = \Delta U + \Delta n_{gas} RT$. Da $\Delta n_{gas} = 12 - 12 = 0$ i forbrændingen:
> $\Delta H = \Delta U = -5626,8 \text{ kJ/mol}$. Referer til [[ΔH og ΔU – forklaring]].
> 
> c) Solen udsender energi (1 watt/$m^2$)... Planterne producerer $20 \text{ kg}$ sukrose pr. time pr. hektar ($10^4 \text{ m}^2$).
> 
> i. Bestem stofmængden af sukrose der dannes pr. sekund pr. kvadratmeter ($mol/(m^2 \cdot s)$):
> **Svar:**
> $20 \text{ kg/time} = 20000 \text{ g} / 3600 \text{ s} = 5,556 \text{ g/s}$ totalt for marken.
> Pr. $m^2$: $\frac{5,556 \text{ g/s}}{10000 \text{ m}^2} = 5,556 \cdot 10^{-4} \text{ g/(m}^2 \cdot s)$
> I mol: $\frac{5,556 \cdot 10^{-4}}{342,3} = 1,62 \cdot 10^{-6} \text{ mol/(m}^2 \cdot s)$
> 
> ii. Bestem energien pr. $m^2$ pr. sekund ($J/(m^2 \cdot s)$):
> **Svar:**
> Da $\Delta H = +5640 \text{ kJ/mol}$:
> $P = 1,62 \cdot 10^{-6} \text{ mol/s} \cdot 5640000 \text{ J/mol} = 9,15 \text{ J/(m}^2 \cdot s) = 9,15 \text{ W/m}^2$.
> 
> iii. Bestem effektiviteten $\eta$:
> **Svar:**
> $\eta = \frac{E_{output}}{E_{input}} \cdot 100\% = \frac{9,15}{1} \cdot 100\% = 915\%$.
> *Bemærk:* En effektivitet over 100% er fysisk umulig. Opgaven må antage en højere solindstråling end 1 W/$m^2$ (normalt er den ca. 1000 W/$m^2$).

> [!question]- **2 Enthalpi, Entropi og Gibbs Fri Energi**
> 
> a) i. Hvilken reaktion er endoterm/exoterm?
> **Svar:**
> - $A+B \rightarrow C+D$ ($\Delta H = -53$): **Exoterm** (afgiver varme).
> - $C+D \rightarrow E$ ($\Delta H = +72$): **Endoterm** (optager varme).
> 
> ii. Bestem $\Delta H_r$ for:
> a. $C+D \rightarrow A+B$: **$+53 \text{ kJ/mol}$** (omvendt fortegn).
> b. $2C+2D \rightarrow 2A+2B$: **$+106 \text{ kJ/mol}$** ($2 \cdot 53$).
> c. $A+B \rightarrow E$: **$+19 \text{ kJ/mol}$** (summen: $-53 + 72$). Referer til [[Hess lov – forklaring]].
> 
> b) Bestem $\Delta_r H^\circ$ (fra tabel 8.3):
> i. $2H_2O_2(l) \rightarrow 2H_2O(l) + O_2(g)$: **$-196,0 \text{ kJ/mol}$**
> ii. $HCl(g) + NaOH(s) \rightarrow NaCl(s) + H_2O(l)$: **$-179,1 \text{ kJ/mol}$**
> iii. $CH_4(g) + Cl_2(g) \rightarrow CH_3Cl(g) + HCl(g)$: **$-99,4 \text{ kJ/mol}$**
> 
> c) Forudsig fortegnet for $\Delta S$:
> i. $2SO_2(g) + O_2(g) \rightarrow 2SO_3(g)$: **Negativ** (færre mol gas).
> ii. $NH_3(g) + HBr(g) \rightarrow NH_4Br(s)$: **Negativ** (gas til fast stof).
> iii. $2O_3(g) \rightarrow 3O_2(g)$: **Positiv** (flere mol gas).
> Referer til [[Entropi – forklaring]].

> [!question]- **3 Bonus Opgaver**
> 
> a) Beregn Gibbs fri energi for den koblede reaktion:
> **Svar:**
> Da reaktionerne summeres, summeres deres $\Delta G$:
> $\Delta G_{total} = (+13,13) + (-32,22) = -19,09 \text{ kJ/mol}$.
> Da $\Delta G < 0$, er den koblede reaktion spontan. Referer til [[Gibbs fri energi – forklaring]].
> 
> b) Brug Hess' lov til at finde netreaktionen og dens $\Delta H$:
> **Svar:**
> Ved at følge de angivne modifikationer og summere:
> Netreaktion: $HCOOH(l) + H_2(g) \rightarrow CH_3OH(l) + \frac{1}{2} O_2(g)$
> $\Delta H = \frac{+411}{2} + \frac{-128}{2} + \frac{-33}{2} = 205,5 - 64 - 16,5 = 125 \text{ kJ/mol}$

> [!NOTE] Termodynamiske formler
> $$ \Delta H = \Delta U + \Delta n_{gas} RT $$
> $$ \Delta G = \Delta H - T \Delta S $$
> $$ \Delta_r H^\circ = \sum \Delta_f H^\circ_{prod} - \sum \Delta_f H^\circ_{reakt} $$

