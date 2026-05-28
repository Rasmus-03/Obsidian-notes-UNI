# Molaritet og Molalitet – forklaring
*De to vigtigste måder at angive koncentration på i kemi.*

---

## 1. Begreber og enheder
Forskellen ligger i, hvad man dividerer stofmængden ($n$) med: Hele opløsningens volumen eller kun opløsningsmidlets masse.

| Symbol | Navn | Enhed | Formel | Forklaring |
| :--- | :--- | :--- | :--- | :--- |
| **$c$** (eller $M$) | **Molaritet** | $\text{mol/L}$ | $c = \frac{n_{\text{stof}}}{V_{\text{opløsning}}}$ | Mol pr. **liter færdig blanding**. |
| **$b$** (eller $m$) | **Molalitet** | $\text{mol/kg}$ | $b = \frac{n_{\text{stof}}}{m_{\text{opløsningsmiddel}}}$ | Mol pr. **kg rent vand/opløsningsmiddel**. |

---

## 2. Hvornår bruges hvad?

### Molaritet ($c$)
- Den mest almindelige koncentration i laboratoriet.
- **Problem:** Volumen ændrer sig med temperaturen (væsker udvider sig), så molariteten ændrer sig en lille smule, hvis det bliver meget varmt eller koldt.

### Molalitet ($b$)
- Bruges primært til **kolligative egenskaber** (f.eks. frysepunktsnedsættelse og kogepunktsforhøjelse).
- **Fordel:** Masse ændrer sig ikke med temperaturen, så molaliteten er konstant uanset varme/kulde.
- Se: [[Sammenhæng mellem pH og frysepunkt – forklaring]].

---

## 3. Den gyldne antagelse ($1 \text{ L} \approx 1 \text{ kg}$)
I de fleste kemiopgaver (især med vandige opløsninger) antager vi, at densiteten er $1,00 \text{ g/mL}$.
Det betyder:
$$1 \text{ L vand} = 1 \text{ kg vand}$$
Derfor vil **Molaritet $\approx$ Molalitet** i de fleste af dine opgaver.

---

## 4. Eksempler

> [!example] **Opgave: Sammenlign molaritet ($c$) og molalitet ($b$) for en NaCl-opløsning**
> Du har $0,50 \text{ mol NaCl}$ opløst i $1 \text{ kg vand}$. Den samlede opløsning fylder $1,02 \text{ L}$.
> 
> - **Molalitet ($b$):** 
>   $$b = \frac{0,50 \text{ mol}}{1 \text{ kg}} = \mathbf{0,50 \text{ mol/kg}}$$
> - **Molaritet ($c$):** 
>   $$c = \frac{0,50 \text{ mol}}{1,02 \text{ L}} = \mathbf{0,49 \text{ mol/L (M)}}$$

> [!example] **Opgave: Beregn både molaritet ($c$) og molalitet ($b$) ud fra masseprocent og densitet**
> En vandig opløsning af svovlsyre ($H_2SO_4$) er $20,0\text{ masse\%}$. Densiteten er $\rho = 1,14\text{ g/mL}$.
> Molarmassen $M(H_2SO_4) = 98,08\text{ g/mol}$.

> 
> **Strategi: Antag altid $100\text{ g}$ opløsning.**
> 1. **Masseregnskab:** $m_{\text{stof}} = 20,0\text{ g}$, $m_{\text{vand}} = 80,0\text{ g} = 0,080\text{ kg}$.
> 2. **Find stofmængde ($n$):** $n = \frac{20,0\text{ g}}{98,08\text{ g/mol}} = 0,204\text{ mol}$.
> 3. **Beregn Molalitet ($b$):**
>    $$b = \frac{0,204\text{ mol}}{0,080\text{ kg}} = \mathbf{2,55\text{ mol/kg}}$$
> 4. **Find volumen til Molaritet ($c$):** $V = \frac{m_{\text{total}}}{\rho} = \frac{100\text{ g}}{1,14\text{ g/mL}} = 87,7\text{ mL} = 0,0877\text{ L}$.
> 5. **Beregn Molaritet ($c$):**
>    $$c = \frac{0,204\text{ mol}}{0,0877\text{ L}} = \mathbf{2,33\text{ mol/L (M)}}$$

---

## 5. Tips til eksamen
- Hvis opgaven handler om **$\Delta T_f$** (frysepunkt), så skriv altid enheden som $\text{mol/kg}$ ($b$).
- Hvis opgaven handler om **titrering** eller **pH**, så brug altid $\text{mol/L}$ ($c$).
- Husk at tælle antallet af partikler ($i$) med, hvis du regner på salte!
  - $1 \text{ M } NaCl = 2 \text{ M partikler}$
  - $1 \text{ m } NaCl = 2 \text{ m partikler}$
