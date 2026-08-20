2026-03-05

*En introduktion til partiel integration (Integration by Parts) – produktreglen kørt baglæns.*

> [!tip] For en 5-årig: At flytte byrden
> Forestil dig at du holder en tung kasse, og du skal gå gennem en dør. Det er svært! Men hvis du giver kassen til en ven på den anden side af døren, bliver det lettere.
>
> Partiel integration handler om det samme: du har to funktioner ganget sammen, og det er svært at integrere. Så **flytter du integralet** fra den ene funktion til den anden — ligesom at give byrden videre.
>
> $\int u \cdot v' \, dx = u \cdot v - \int u' \cdot v \, dx$ — du bytter et svært integral ud med et forhåbentlig lettere et.

---

## Hvad er partiel integration?

Partiel integration er en teknik, man bruger, når man skal integrere et **produkt** af to funktioner, altså $\int f(x) \cdot g(x) \, dx$.

Metoden bygger på **produktreglen** fra [[differentiering]]. Idéen er at dele integralet op i to dele: en del man differentierer ($u$), og en del man integrerer ($v'$). Målet er at bytte et svært integrale ud med et lettere.

### Formlen
$$ \int u \cdot v' \, dx = u \cdot v - \int u' \cdot v \, dx $$

**Strategi:**
1. Vælg én funktion til at være $u$ (denne skal helst blive simplere, når man differentierer den, f.eks. $x$).
2. Vælg den anden funktion til at være $v'$ (denne skal være let at integrere).

---

## Eksempel 1: $x$ ganget med en eksponentialfunktion

Lad os løse integralet:
$$ \int x \cdot e^x \, dx $$

> [!NOTE] Trin-for-trin beregning
> 
> **1. Vælg $u$ og $v'$:**
> Vi vælger $u = x$, fordi den forsvinder (bliver til 1), når vi differentierer.
> - $u = x$
> - $v' = e^x$
> 
> **2. Find $u'$ og $v$:**
> - Differentier $u$: $u' = 1$
> - Integrer $v'$: $v = e^x$
> 
> **3. Indsæt i formlen ($u \cdot v - \int u' \cdot v \, dx$):**
> $$ x \cdot e^x - \int 1 \cdot e^x \, dx $$
> 
> **4. Løs det resterende integrale:**
> $$ \int 1 \cdot e^x \, dx = e^x $$
> 
> **Resultat:**
> $$ x \cdot e^x - e^x + C $$
> *(Kan evt. forkortes til $e^x(x-1) + C$)*

---

## Eksempel 2: $x$ ganget med en logaritme

Lad os løse integralet:
$$ \int x \cdot \ln(x) \, dx $$
*Her er vi nødt til at vælge omvendt, fordi vi ikke kender integralet af $\ln(x)$ udenad, men vi kan nemt differentiere den.*

> [!NOTE] Trin-for-trin beregning
> 
> **1. Vælg $u$ og $v'$:**
> Vi vælger $u = \ln(x)$, så vi kan differentiere den væk.
> - $u = \ln(x)$
> - $v' = x$
> 
> **2. Find $u'$ og $v$:**
> - Differentier $u$: $u' = \frac{1}{x}$
> - Integrer $v'$: $v = \frac{1}{2}x^2$
> 
> **3. Indsæt i formlen:**
> $$ \ln(x) \cdot \frac{1}{2}x^2 - \int \frac{1}{x} \cdot \frac{1}{2}x^2 \, dx $$
> 
> **4. Reducer integralet før løsning:**
> Vi kan forkorte $\frac{1}{x} \cdot x^2$ til $x$:
> $$ \frac{1}{2}x^2 \ln(x) - \int \frac{1}{2}x \, dx $$
> 
> **5. Løs det sidste integrale:**
> $$ \int \frac{1}{2}x \, dx = \frac{1}{2} \cdot (\frac{1}{2}x^2) = \frac{1}{4}x^2 $$
> 
> **Resultat:**
> $$ \frac{1}{2}x^2 \ln(x) - \frac{1}{4}x^2 + C $$

---

> [!TIP] Huskereglen
> En god tommelfingerregel for, hvad man skal vælge som $u$ (det man differentierer), er rækkefølgen **LIA**:
> 1. **L**ogaritmefunktioner (f.eks. $\ln(x)$) $\leftarrow$ Vælg altid disse som $u$ først!
> 2. **I**nverse trigonometriske funktioner (f.eks. $\arcsin(x)$)
> 3. **A**lgebraiske funktioner (f.eks. $x, x^2, 3x$)

---

> [!INFO] Sammenhæng
> Se også [[integration]] for generelle regler eller [[substitution]] for den anden store integrationsteknik.

---

## Partiel integration to gange (cirkulært integral)

$$ \int e^x \sin(x) \, dx $$

> [!NOTE] Løsning
> **1. Første IBP:** Vælg $u = e^x$, $v' = \sin x$:
> $$ u' = e^x, \quad v = -\cos x $$
> $$ \int e^x \sin x \, dx = -e^x \cos x + \int e^x \cos x \, dx $$
>
> **2. Anden IBP (samme valg):** Vælg $u = e^x$, $v' = \cos x$:
> $$ u' = e^x, \quad v = \sin x $$
> $$ \int e^x \cos x \, dx = e^x \sin x - \int e^x \sin x \, dx $$
>
> **3. Sæt sammen:**
> $$ \int e^x \sin x \, dx = -e^x \cos x + e^x \sin x - \int e^x \sin x \, dx $$
>
> **4. Isolér integralet (læg til på begge sider):**
> $$ 2 \int e^x \sin x \, dx = e^x (\sin x - \cos x) $$
>
> **Resultat:**
> $$ \int e^x \sin x \, dx = \frac{1}{2} e^x (\sin x - \cos x) + C $$

Dette kaldes et **cirkulært integral** — integralet dukker op igen på højre side, så man kan isolere det.
