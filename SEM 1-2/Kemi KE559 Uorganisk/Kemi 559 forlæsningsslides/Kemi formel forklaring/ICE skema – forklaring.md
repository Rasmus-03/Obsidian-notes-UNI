# ICE skema – forklaring
*ICE-skema (Initial, Change, Equilibrium) bruges til at beregne koncentrationerne af reaktanter og produkter i et system ved ligevægt.*
---
## 1. Hvad er et ICE-skema?
- **I (Initial):** Startkoncentrationer (før reaktionen sker).
- **C (Change):** Ændringen i koncentration (baseret på støkiometri).
- **E (Equilibrium):** Koncentrationerne når ligevægt er nået ($I + C = E$).
---
## 2. Syre vs. Base: Vejen til pH
Det er vigtigt at forstå forskellen på, hvad du får ud af dit ICE-skema:
### For en svag syre (HA):
1. Du opsætter ligevægten for $ K_a $.
2. Du isolerer $ x $ i **WordMat**.
3. Dit $ x $ svarer til **$ [H^+] $**.
4. Du finder $pH$ direkte: 
   $$ pH = -\log[H^+] $$
### For en svag base (B):
1. Du opsætter ligevægten for $ K_b $.
2. Du isolerer $ x $ i **WordMat**.
3. Dit $ x $ svarer til **$ [OH^-] $**.
4. Du finder først $pOH$: 
   $$ pOH = -\log[OH^-] $$
5. Du bruger **14-reglen** til at finde $pH$:
   $$ pH = 14 - pOH $$
---
## 3. Eksempel: Svag syre (HA)
Beregning af $pH$ for en $0,10 \, M$ opløsning af en svag syre $K_a = 1,8 \times 10^{-5}$.

Reaktion: $ HA(aq) \rightleftharpoons H^+(aq) + A^-(aq) $

| | $ [HA] $ | $ [H^+] $ | $ [A^-] $ |
| :--- | :--- | :--- | :--- |
| **I** | $0,10$ | $0$ | $0$ |
| **C** | $-x$ | $+x$ | $+x$ |
| **E** | $0,10 - x$ | $x$ | $x$ |

**Opstilling af ligevægt ($ K_a $):**
$$ 1,8 \times 10^{-5} = \frac{x^2}{0,10 - x} $$
**Løsning:**
1. Marker ligningen og brug **WordMat** (Løs ligning) til at isolere $ x $.
2. **Vigtigt:** WordMat giver to løsninger. Vælg altid den **positive** værdi, da en koncentration ikke kan være negativ.
3. Her fås $ x = 0,00133 \, M $.
4. Da $ x = [H^+] $:
   $$ pH = -\log(0,00133) \approx \mathbf{2,88} $$
---
## 4. Eksempel: Svag base (B)
Beregning af $pH$ for en $0,20 \, M$ opløsning af en svag base ($ K_b = 4,4 \times 10^{-4} $).

Reaktion: $ B(aq) + H_2O(l) \rightleftharpoons BH^+(aq) + OH^-(aq) $

| | $ [B] $ | $ [BH^+] $ | $ [OH^-] $ |
| :--- | :--- | :--- | :--- |
| **I** | $0,20$ | $0$ | $0$ |
| **C** | $-x$ | $+x$ | $+x$ |
| **E** | $0,20 - x$ | $x$ | $x$ |

**Opstilling af ligevægt ($ K_b $):**
$$ 4,4 \times 10^{-4} = \frac{x^2}{0,20 - x} $$
**Løsning:**
1. Isoler $ x $ i **WordMat**.
2. Vælg den **positive** værdi: $ x = 0,00916 \, M $.
3. Da $ x = [OH^-] $, findes $pOH$ først:
   $$ pOH = -\log(0,00916) \approx 2,04 $$
4. Brug **14-reglen**:
   $$ pH = 14 - 2,04 = \mathbf{11,96} $$
---
## 5. Huskeregler for WordMat & Kemi
1. **Den positive værdi:** WordMat løser andengradsligningen matematisk og giver ofte både et positivt og et negativt tal. I kemi er $ x $ en koncentration, og derfor er det **altid den positive løsning**, der er den rigtige.
2. **Ingen tilnærmelser:** Når du bruger WordMat, behøver du ikke tænke på "standard-antagelser" (om man må fjerne $-x$ i nævneren) – WordMat regner det præcist hver gang.
3. **Syre vs. Base:** Husk altid at tjekke om ligningen er for $ K_a $ eller $ K_b $. Hvis det er $ K_b $, er dit WordMat-resultat ($ x $) lig med $ [OH^-] $, og du skal huske pOH-omvejen til $pH$.
---
## 6. Referencer
- [[pH og pOH – forklaring]]
- [[Syre-base styrke – forklaring]]
- [[Ligevægtskonstant – forklaring]]
- [[thermodynamik]]