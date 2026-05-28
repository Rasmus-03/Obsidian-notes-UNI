
*Beskriver hvor stærk en syre eller base er og hvordan man beregner pH ud fra styrken.*

---

## 1. Stærke syrer og baser (Fuldstændig dissociation)
Stærke syrer og baser har per definition **fuldstændig dissociation** i vand. Det betyder, at de deler sig $100\%$, og at alle molekyler omdannes til ioner.

### Stærke syrer ($HA$)
Reaktionen forløber helt mod højre: $HA + H_2O \rightarrow A^- + H_3O^+$.
- Fordi dissociationen er fuldstændig, er koncentrationen af hydrogenioner lig med syrens startkoncentration: $[H^+] = c_s$.
- **Formel:** $pH = -\log(c_s)$.
- **Eksempler:** Saltsyre ($HCl$), salpetersyre ($HNO_3$), svovlsyre ($H_2SO_4$, 1. trin).

### Stærke baser ($B$)
Reaktionen forløber helt mod højre: $B + H_2O \rightarrow BH^+ + OH^-$.
- Fordi dissociationen er fuldstændig, er koncentrationen af hydroxidioner lig med basens startkoncentration: $[OH^-] = c_b$.
- **Formel:** $pOH = -\log(c_b)$ og derefter $pH = 14 - pOH$.
- **Eksempler:** Natriumhydroxid ($NaOH$), kaliumhydroxid ($KOH$), calciumhydroxid ($Ca(OH)_2$).

---

## 2. Svage syrer ($K_a$ og $pK_a$)
Svage syrer deler sig kun delvist (ligevægt). Her skal du bruge ligevægtskonstanten $K_a$.
- **Syrens ligevægtskonstant ($K_a$):**
$$ K_a = \frac{[H^+][A^-]}{[HA]} $$
- **$pK_a$**: $pK_a = -\log_{10}(K_a)$
- **Fortolkning:** Lav $pK_a$ $\rightarrow$ stærk syre. Høj $pK_a$ $\rightarrow$ svag syre.

---

## 3. Svage baser ($K_b$ og $pK_b$)
- **Basekonstant ($K_b$):**
$$ K_b = \frac{[OH^-][BH^+]}{[B]} $$
- **Fortolkning:** Stor $K_b$ $\rightarrow$ stærk base. Lille $K_b$ $\rightarrow$ svag base.

---

## 4. Relation mellem $K_a$ og $K_b$
For et korresponderende syre-base par:
$$ K_a \cdot K_b = K_w = 1.0 \cdot 10^{-14} \, M^2 \text{ ved } 25 \, ^\circ C $$
En stærk syre har altid en svag korresponderende base og omvendt.

---

> [!example] Beregning af pH for en svag syre (ICE skema)
> **Spørgsmål: Beregn pH af en svag syre**
> Beregn pH for en $0,10 \, \text{M}$ Eddikesyre ($CH_3COOH$) opløsning, hvor $K_a = 1,8 \cdot 10^{-5} \, \text{M}$.
> 
> **1. Opsætning af reaktionsskema og ICE:**
> | Tilstand | $CH_3COOH$ | $\rightleftharpoons$ | $CH_3COO^-$ | $H_3O^+$ |
> | :--- | :---: | :---: | :---: | :---: |
> | **I**nitial (M) | $0,10$ | | $0$ | $0$ |
> | **C**hange (M) | $-x$ | | $+x$ | $+x$ |
> | **E**quilibrium (M) | $0,10 - x$ | | $x$ | $x$ |
> 
> **2. Ligevægtsudtryk (WordMat-stil):**
> $$K_a = \frac{[CH_3COO^-] \cdot [H_3O^+]}{[CH_3COOH]} \Rightarrow 1,8 \cdot 10^{-5} = \frac{x^2}{0,10 - x}$$
> 
> Da $K_a$ is meget lille, kan vi tilnærme $0,10 - x \approx 0,10$:
> $$x = \sqrt{K_a \cdot c_s} = \sqrt{1,8 \cdot 10^{-5} \cdot 0,10} = 0,00134 \, \text{M}$$
> 
> **3. pH beregning:**
> $$pH = -\log(0,00134) = 2,87$$
> 
> Opløsningen har en pH på $2,87$.

> [!example] Beregning af $K_b$ ud fra $K_a$
> **Opgave: Beregn basekonstant ($K_b$) ud fra syrekonstant ($K_a$)**
> Beregn basekonstanten $K_b$ for ammoniak ($NH_3$), når det vides at syrekonstanten for dens korresponderende syre, ammonium ($NH_4^+$), er $K_a = 5,6 \cdot 10^{-10} \, \text{M}$.
> 
> **Formel:**
> $$K_a \cdot K_b = K_w = 1,0 \cdot 10^{-14} \, \text{M}^2$$
> 
> **Beregning:**
> $$K_b = \frac{K_w}{K_a} = \frac{1,0 \cdot 10^{-14} \, \text{M}^2}{5,6 \cdot 10^{-10} \, \text{M}} = 1,79 \cdot 10^{-5} \, \text{M}$$
> 
> Basekonstanten for ammoniak er $K_b = 1,79 \cdot 10^{-5} \, \text{M}$.

---

[[1 Formelsamling KE559 – Grundlæggende Kemi]]
[[Syre-base styrke – oversigt]]
[[pH og pOH – forklaring]]
