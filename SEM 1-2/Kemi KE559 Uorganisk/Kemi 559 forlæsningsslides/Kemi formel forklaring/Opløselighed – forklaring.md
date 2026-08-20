# Opløselighed og Opløselighedsprodukt ($K_{sp}$)
*En komplet guide til at løse opgaver om salte i vand til den skriftlige eksamen.*

---

## 1. Grundlæggende begreber og enheder
For at løse en opgave skal du have styr på dine enheder. **Husk dem altid!**

| Symbol       | Navn                 | Enhed              | Forklaring                                               |
| :----------- | :------------------- | :----------------- | :------------------------------------------------------- |
| **$s$**      | Molar opløselighed   | $\text{mol/L}$ (M) | Hvor mange mol salt der kan opløses pr. liter vand.      |
| **$S$**      | Masse-opløselighed   | $\text{g/L}$       | Hvor mange gram salt der kan opløses pr. liter vand.     |
| **$K_{sp}$** | Opløselighedsprodukt | (Enhedsløs*)       | En konstant der beskriver ligevægten for et mættet salt. |
| **$M$**      | Molar masse          | $\text{g/mol}$     | Bruges til at omregne mellem gram og mol.                |

---

## 2. Reaktionen og $K_{sp}$
Når et salt opløses i vand, opstår der en ligevægt. Vi tager et generelt salt $A_x B_y$:

$$A_x B_y (s) \rightleftharpoons x \cdot A^{y+} (aq) + y \cdot B^{x-} (aq)$$

**Opløselighedsproduktet ($K_{sp}$):**
$$K_{sp} = [A^{y+}]^x \cdot [B^{x-}]^y$$
*(Husk: Faste stoffer $(s)$ indgår aldrig i ligevægtsudtrykket!)*

---

## 3. Eksempel 1: Letopløseligt salt (NaCl)
NaCl er meget opløseligt. Ved $25^\circ\text{C}$ kan man opløse ca. $360\text{ g NaCl}$ i $1\text{ L vand}$.

**Spørgsmål: Hvad er den molære opløselighed ($s$) for NaCl?**
1. **Find molarmassen for NaCl:**
   $M(\text{NaCl}) = 22,99\text{ g/mol (Na)} + 35,45\text{ g/mol (Cl)} = 58,44\text{ g/mol}$
2. **Beregn mol ($n$) i 360 g:**
   $n = \frac{m}{M} = \frac{360\text{ g}}{58,44\text{ g/mol}} = 6,16\text{ mol}$
3. **Beregn opløseligheden ($s$):**
   $s = \frac{n}{V} = \frac{6,16\text{ mol}}{1\text{ L}} = 6,16\text{ mol/L (M)}$

---

## 4. Eksempel 2: Tungtopløseligt salt (Opsætning til WordMat)
Dette er den klassiske eksamensopgave. Lad os tage sølvchlorid ($AgCl$), hvor $K_{sp} = 1,77 \cdot 10^{-10}$ ved $25^\circ\text{C}$.

**Spørgsmål: Hvor mange gram AgCl kan opløses i 1 L vand?**

1. **Opskriv reaktionen:**
   $AgCl (s) \rightleftharpoons Ag^+ (aq) + Cl^- (aq)$
2. **Definer $x$ som den molære opløselighed ($\text{mol/L}$):**
   $[Ag^+] = x \quad \text{og} \quad [Cl^-] = x$
3. **Opsæt ligningen til WordMat:**
   Indsæt værdierne i $K_{sp}$ udtrykket:
   $1,77 \cdot 10^{-10} = x \cdot x$
4. **Resultat fra WordMat:**
   $x = 1,33 \cdot 10^{-5}\text{ mol/L (M)}$
5. **Omregn til gram ($S$):**
   $M(AgCl) = 143,32\text{ g/mol}$
   $$S = x \cdot M = 1,33 \cdot 10^{-5}\text{ mol/L} \cdot 143,32\text{ g/mol} = 0,0019\text{ g/L}$$

---

## 5. Eksempel 3: Beregning af $K_{sp}$ (den omvendte vej)
Nogle gange kender du opløseligheden og skal finde konstanten $K_{sp}$.

**Spørgsmål: Ved $25^\circ\text{C}$ kan der opløses $0,016\text{ g } CaF_2$ i $1\text{ L}$ vand. Hvad er $K_{sp}$?**

1. **Find den molære opløselighed ($x$):**
   $M(CaF_2) = 78,07\text{ g/mol}$
   $$x = \frac{0,016\text{ g}}{78,07\text{ g/mol}} = 0,00021\text{ mol/L (M)}$$
2. **Opskriv reaktionen:**
   $CaF_2 (s) \rightleftharpoons Ca^{2+} (aq) + 2F^- (aq)$
3. **Definer ion-koncentrationerne ud fra $x$:**
   $[Ca^{2+}] = x = 0,00021\text{ M}$
   $[F^-] = 2x = 0,00042\text{ M}$
4. **Opsæt og beregn $K_{sp}$:**
   $$K_{sp} = [Ca^{2+}] \cdot [F^-]^2$$
   $$K_{sp} = 0,00021 \cdot (0,00042)^2 = 3,7 \cdot 10^{-11}$$
   *(Dette skriver du bare direkte ind i WordMat og trykker **alt+b** eller **enter**)*

---

## 6. Ion-produktet ($Q_{sp}$) og Fældning
Ion-produktet ($Q_{sp}$) bruges til at forudsige, om der dannes **bundfald** (fældning), når man blander to opløsninger. 

**Formel:**
$$Q_{sp} = [A^{y+}]_{\text{aktuel}}^x \cdot [B^{x-}]_{\text{aktuel}}^y$$
*(Det er præcis samme opstilling som $K_{sp}$, men her bruger du de **aktuelle** koncentrationer lige nu, ikke nødvendigvis ved ligevægt).*

| Sammenligning | Resultat |
| :--- | :--- |
| **$Q_{sp} < K_{sp}$** | Under-mættet (ingen fældning). Alt er opløst. |
| **$Q_{sp} = K_{sp}$** | Mættet (lige på grænsen til fældning). |
| **$Q_{sp} > K_{sp}$** | Over-mættet (**fældning sker!**). Der dannes bundfald. |

**Eksempel:**
Du blander $Ag^+$ og $Cl^-$. Hvis $[Ag^+] = 1,0 \cdot 10^{-4}\text{ M}$ og $[Cl^-] = 1,0 \cdot 10^{-4}\text{ M}$:
$$Q_{sp} = (1,0 \cdot 10^{-4}) \cdot (1,0 \cdot 10^{-4}) = 1,0 \cdot 10^{-8}$$
Da $K_{sp} (AgCl) = 1,77 \cdot 10^{-10}$, er **$Q_{sp} > K_{sp}$** $\rightarrow$ Der dannes bundfald af $AgCl$.

---

## 7. Eksamens-tjekliste (WordMat-workflow)
Når du ser en opløselighedsopgave:
1. **Opskriv reaktionsligningen** (F.eks. $CaF_2 (s) \rightleftharpoons Ca^{2+} + 2F^-$).
2. **Definer dine x-værdier** ud fra koefficienterne:
   $[Ca^{2+}] = x$
   $[F^-] = 2x$
3. **Opstil ligningen til WordMat:**
   $$K_{sp} = x \cdot (2x)^2$$
   *(VIGTIGT: Husk parentesen og potensen!)*
4. **Løs for $x$** (alt+b) og husk enheden $\text{mol/L}$.
5. **Omregn til slut-enheden** (ofte $\text{g/L}$ ved at gange med $M$ i $\text{g/mol}$).
6. **Tjek for fældning?** Beregn $Q_{sp}$ og sammenlign med $K_{sp}$.

![[image-6.png|697|697x434]]