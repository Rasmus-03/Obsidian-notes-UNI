# Ligevægtskonstant – forklaring
*Ligevægtskonstanten ($K$) beskriver forholdet mellem koncentrationerne af produkter og reaktanter, når en kemisk reaktion er i ligevægt.*
---
## 1. Grundlæggende forståelse
- Reaktion: $aA + bB \rightleftharpoons cC + dD$  
- Ligevægtskonstant:  
$$
K = \frac{[C]^c [D]^d}{[A]^a [B]^b}
$$
**Symbolforklaring:**
- **$K$** = ligevægtskonstant
- **$[A], [B], [C], [D]$** = molære koncentrationer ($mol/L$ eller $M$)
- **$a, b, c, d$** = støkiometriske koefficienter
- **$K$** afhænger kun af temperatur, ikke af startkoncentrationer.  
---
## 2. Tolkning af $K$
- **$K \gg 1$** → produkter dominerer, reaktionen favoriserer produkter  
- **$K \ll 1$** → reaktanter dominerer, reaktionen favoriserer reaktanter  
- **$K \approx 1$** → reaktanter og produkter er omtrent lige meget til stede  
---
## 3. Reaktionskvotient ($Q$)
- Forhold mellem koncentrationer før ligevægt:  
$$
Q = \frac{[C]^c [D]^d}{[A]^a [B]^b}
$$
- **$Q < K$** → reaktionen bevæger sig mod produkter  
- **$Q > K$** → reaktionen bevæger sig mod reaktanter  
- **$Q = K$** → systemet er i ligevægt  
---
## 4. Manipulation af $K$
- **Reversering af reaktion:**  
$$
K_{\text{rev}} = \frac{1}{K_{\text{fwd}}}
$$
- **Multiplikation af ligning med faktor $n$:**  
$$
K_{\text{ny}} = K^n
$$
- **Sammenlægning af reaktioner:**  
$$
K_{\text{total}} = K_1 \times K_2 \times \dots
$$
---
## 5. Sammenhæng med Gibbs fri energi
I [[thermodynamik]] er ligevægtskonstanten tæt koblet til den standard Gibbs fri energiændring ($\Delta G^\circ$):
$$
\Delta G^\circ = -R T \ln K \quad \iff \quad K = e^{-\frac{\Delta G^\circ}{R T}}
$$
- Se uddybning i [[Gibbs fri energi – forklaring]].
---
## 6. Symbolforklaring
- **$[A], [B], [C], [D]$** = molære koncentrationer ($mol/L$ eller $M$)  
- **$a, b, c, d$** = støkiometriske koefficienter  
---
## 7. Tips
- $K$ fortæller **ikke** hvor hurtigt reaktionen sker, kun forholdet ved ligevægt.  
- Ændringer i tryk og temperatur kan ændre $K$ (gælder især for gasreaktioner).

---

## 8. Eksempler

> [!example] Beregning af $K_c$
> **Opgave: Beregn ligevægtskonstanten ($K_c$)**
> En reaktion: $H_2(g) + I_2(g) \rightleftharpoons 2 HI(g)$
> Ved ligevægt måles følgende koncentrationer ved $448^\circ\text{C}$:
> $[H_2] = 0,022 \text{ M}$, $[I_2] = 0,022 \text{ M}$, $[HI] = 0,156 \text{ M}$.
> 
> **Beregning af $K_c$:**
> $$ K_c = \frac{[HI]^2}{[H_2][I_2]} = \frac{(0,156 \text{ M})^2}{(0,022 \text{ M}) \cdot (0,022 \text{ M})} = \frac{0,024336}{0,000484} \approx 50,28 $$

> [!example] Manipulation af $K$
> **Opgave: Beregn den nye ligevægtskonstant ved manipulation**
> Hvis $K_c = 50,28$ for reaktionen $H_2(g) + I_2(g) \rightleftharpoons 2 HI(g)$, hvad er $K$ så for den omvendte reaktion?
> 
> **Reversering:** $2 HI(g) \rightleftharpoons H_2(g) + I_2(g)$
> $$ K_{\text{rev}} = \frac{1}{K_{\text{fwd}}} = \frac{1}{50,28} \approx 0,0199 $$
> 
> **Multiplikation:** Hvis vi halverer alle koefficienter ($\frac{1}{2} H_2 + \frac{1}{2} I_2 \rightleftharpoons HI$):
> $$ K_{\text{ny}} = K^{1/2} = \sqrt{50,28} \approx 7,09 $$