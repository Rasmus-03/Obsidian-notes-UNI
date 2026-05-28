# Fælles ion-effekt – forklaring
*Hvad sker der med opløseligheden, når vandet allerede indeholder en af saltets ioner?*

---

## 1. Begreber og enheder
Når vi har en fælles ion, vil opløseligheden ($x$) altid være **lavere** end i rent vand.

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$x$** | Ny molar opløselighed | $\text{mol/L}$ (M) | Opløseligheden *efter* tilsætning af fælles ion. |
| **$C_{\text{start}}$** | Start-koncentration | $\text{mol/L}$ (M) | Koncentrationen af den ion, der allerede er i vandet. |
| **$K_{sp}$** | Opløselighedsprodukt | (Enhedsløs) | Saltets ligevægtskonstant (ændres ikke!). |

---

## 2. Teorien (Le Chatelier)
Hvis du har en mættet opløsning af $AgCl$ og tilsætter $NaCl$, øger du koncentrationen af $Cl^-$. Ifølge **Le Chateliers princip** vil ligevægten forskydes mod venstre for at fjerne det overskydende $Cl^-$. Det betyder, at mere $AgCl$ fælder ud, og opløseligheden falder.

---

## 3. Eksempel: AgCl i 0,10 M NaCl
Vi ved at $K_{sp}(AgCl) = 1,77 \cdot 10^{-10}$. Hvad er opløseligheden ($x$) i 0,10 M NaCl?

1. **Opskriv ionerne ved ligevægt:**
   - $[Ag^+] = x$ (alt sølv kommer fra det opløste AgCl)
   - $[Cl^-] = 0,10 + x$ (noget Cl kommer fra NaCl, noget fra AgCl)
2. **Opsæt ligningen til WordMat:**
   $$K_{sp} = [Ag^+] \cdot [Cl^-]$$
   $$1,77 \cdot 10^{-10} = x \cdot (0,10 + x)$$
3. **Løs for $x$ (alt+b):**
   $$x = 1,77 \cdot 10^{-9} \text{ mol/L (M)}$$
   *(Læg mærke til at $x$ nu er meget mindre end i rent vand!)*

---

## 4. Eksempel 2: $CaF_2$ i 0,05 M NaF (1:2 forhold)
Dette er sværere pga. støkiometrien. $K_{sp}(CaF_2) = 3,9 \cdot 10^{-11}$.

1. **Opskriv ionerne:**
   - $[Ca^{2+}] = x$
   - $[F^-] = 0,05 + 2x$ (Start-koncentrationen fra NaF + det der opløses)
2. **Opsætning til WordMat:**
   $$K_{sp} = [Ca^{2+}] \cdot [F^-]^2$$
   $$3,9 \cdot 10^{-11} = x \cdot (0,05 + 2x)^2$$
   *(**VIGTIGT:** Husk parentesen omkring hele F-koncentrationen og potensen udenfor!)*
3. **Resultat fra WordMat:**
   $$x = 1,56 \cdot 10^{-8} \text{ mol/L (M)}$$

---

## 5. Eksamens-tip (WordMat)
Når du opsætter ligningen, skal du huske at lægge start-koncentrationen til den ion, der er "fælles".
- Hvis du har $CaF_2$ i en $0,05 \text{ M } NaF$ opløsning:
  $$K_{sp} = x \cdot (0,05 + 2x)^2$$
  *(Her er $0,05$ start-konc. af $F^-$, og $2x$ er det der opløses fra saltet).*
