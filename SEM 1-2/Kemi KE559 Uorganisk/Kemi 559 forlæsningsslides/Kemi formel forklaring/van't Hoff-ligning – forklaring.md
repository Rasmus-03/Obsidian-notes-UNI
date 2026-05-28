# van't Hoff-ligning – forklaring
*Bruges til at beregne, hvordan ligevægtskonstanten ($K$) ændrer sig med temperaturen.*

---

## 1. Begreber og enheder
Når du bruger van't Hoff, skal du være meget opmærksom på enhederne for $R$ og $\Delta H^\circ$.

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$K_1, K_2$** | Ligevægtskonstanter | (Enhedsløse) | $K$ ved hhv. temperatur $T_1$ og $T_2$. |
| **$T_1, T_2$** | Temperaturer | $\text{K}$ (Kelvin) | **SKAL** være i Kelvin ($^\circ\text{C} + 273,15$). |
| **$\Delta H^\circ$** | Standard entalpi | $\text{J/mol}$ | Reaktionsvarmen. Husk at omregne fra $kJ$ til $J$! |
| **$R$** | Gaskonstanten | $8,314 \, \text{J/(mol} \cdot \text{K)}$ | Den universelle gaskonstant. |

---

## 2. Formlen
Ligningen forbinder to forskellige temperaturer med deres tilhørende ligevægtskonstanter:

$$\ln\left(\frac{K_2}{K_1}\right) = \frac{-\Delta H^\circ}{R} \cdot \left(\frac{1}{T_2} - \frac{1}{T_1}\right)$$

---

## 3. Teorien bag (Le Chatelier)
Ligningen bekræfter det, vi ved fra Le Chatelier:
- **Exoterm reaktion ($\Delta H^\circ < 0$):** Hvis temperaturen stiger ($T_2 > T_1$), vil brøken $\ln(K_2/K_1)$ blive negativ, hvilket betyder at **$K$ falder**.
- **Endoterm reaktion ($\Delta H^\circ > 0$):** Hvis temperaturen stiger ($T_2 > T_1$), vil brøken $\ln(K_2/K_1)$ blive positiv, hvilket betyder at **$K$ stiger**.

---

## 4. Eksempler (WordMat-stil)

> [!example] **Opgave: Find den nye ligevægtskonstant ($K_2$) ved en exoterm reaktion**
> En reaktion har $K_1 = 1,5 \cdot 10^{-2}$ ved $298\text{ K}$ og en $\Delta H^\circ = -50.000\text{ J/mol}$ (exoterm). Hvad er $K_2$ ved $350\text{ K}$?
> 
> 1. **Opsæt ligningen i WordMat:**
>    $$\ln\left(\frac{x}{1,5 \cdot 10^{-2}}\right) = \frac{-(-50.000)}{8,314} \cdot \left(\frac{1}{350} - \frac{1}{298}\right)$$
> 2. **Løs for $x$ (alt+b):**
>    $$x = 6,8 \cdot 10^{-4}$$
> 
> **Konklusion:** Da reaktionen er exoterm, falder ligevægtskonstanten når temperaturen stiger. Det passer!

> [!example] **Opgave: Find den nye ligevægtskonstant ($K_2$) ved en endoterm reaktion**
> For en endoterm reaktion er $\Delta H^\circ = 75.000\text{ J/mol}$. Ved $298\text{ K}$ er $K_1 = 0,45$. Beregn $K_2$ ved $400\text{ K}$.

> 
> 1. **Opsætning i WordMat:**
>    $$\ln\left(\frac{x}{0,45}\right) = \frac{-75.000}{8,314} \cdot \left(\frac{1}{400} - \frac{1}{298}\right)$$
> 2. **Løs for $x$ (alt+b):**
>    $$x = 227,6$$
> 
> **Konklusion:** For en endoterm reaktion stiger $K$ markant ved temperaturstigning.

---

## 5. Tips til eksamen
- **Tjek altid fortegnet:** Hvis reaktionen er exoterm, skal din $K_2$ være *mindre* end $K_1$, hvis du har skruet op for varmen.
- **Enheder:** Det er den hyppigste fejl at glemme at lave $\text{kJ}$ om til $\text{J}$ for $\Delta H^\circ$. Da $R$ bruger Joule ($8,314$), skal $\Delta H^\circ$ også være i Joule.
