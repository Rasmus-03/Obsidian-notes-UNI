2026-03-01

*KE559 Uge 50 – Reaktionskinetik: Hastighedsudtryk, reaktionsmekanismer, reaktionsorden og halveringstid.*

---

> [!question]- Opgave 1 – Enzymkinetik og Mekanismer
> 
> **Kontekst:** Enzymer er biologiske katalysatorer. For et enzym E foreslås mekanismen:
> 1. $E + A \rightarrow EA$ (trin 1)
> 2. $EA \rightarrow E + B$ (trin 2)
> 
> ### a) Overordnet hastighedsudtryk hvis trin 1 er det langsomme trin?
> Hvis trin 1 er det hastighedsbestemmende trin (RDS), bestemmes hastigheden af dette trins reaktanter:
> $$v = k_1 [E][A]$$
> 
> ### b) Overordnet hastighedsudtryk hvis trin 2 er det langsomme trin?
> Hvis trin 2 er RDS, er hastigheden $v = k_2 [EA]$. Da EA er et intermediat, udtrykkes det ved ligevægten i trin 1:
> $$K = \frac{[EA]}{[E][A]} \Rightarrow [EA] = K[E][A]$$
> Det giver hastighedsudtrykket:
> $$v = k_2 \cdot K \cdot [E][A] = \mathbf{k_{obs} [E][A]}$$
> 
> Fagbegreber: [[Hastighedsudtryk – forklaring|Hastighedsudtryk]], [[Katalysator – forklaring|Katalysator]].

---

> [!question]- Opgave 2 – Oxidation af HSO3-
> 
> **Givet:** $2HSO_3^-(aq) + O_2(g) \rightarrow 2SO_4^{2-}(aq) + 2H^+(aq)$.
> Hastighedsudtryk: $v = k_r [HSO_3^-]^2 [H^+]^2$.
> 
> ### a) Bestem den initiale reaktionshastighed
> **Betingelser:**
> - $pH = 5,6 \Rightarrow [H^+] = 10^{-5,6} \approx 2,512 \cdot 10^{-6} \text{ M}$
> - $[HSO_3^-] = 50 \mu\text{mol/dm}^3 = 5,0 \cdot 10^{-5} \text{ M}$
> - $k_r = 3,6 \cdot 10^6 \text{ dm}^9/(\text{mol}^3 \cdot \text{s})$
> 
> $$v = (3,6 \cdot 10^6) \cdot (5,0 \cdot 10^{-5})^2 \cdot (2,512 \cdot 10^{-6})^2$$
> $$v = 3,6 \cdot 10^6 \cdot 2,5 \cdot 10^{-9} \cdot 6,31 \cdot 10^{-12} \approx \mathbf{5,68 \cdot 10^{-14} \text{ M/s}}$$
> 
> ### b) Tid før [HSO3-] er halveret?
> **Hint:** $\frac{1}{[HSO_3^-]} - \frac{1}{[HSO_3^-]_0} = 2k_r [H^+]^2 t$
> Ved halvering er $[HSO_3^-] = \frac{1}{2} [HSO_3^-]_0$:
> $$\frac{2}{[HSO_3^-]_0} - \frac{1}{[HSO_3^-]_0} = \frac{1}{[HSO_3^-]_0} = 2k_r [H^+]^2 t$$
> $$t = \frac{1}{2k_r [H^+]^2 [HSO_3^-]_0}$$
> $$t = \frac{1}{2 \cdot (3,6 \cdot 10^6) \cdot (2,512 \cdot 10^{-6})^2 \cdot (5,0 \cdot 10^{-5})} \approx \mathbf{4,4 \cdot 10^8 \text{ s}}$$
> 
> Fagbegreber: [[pH og pOH – forklaring|pH]], [[Reaktionshastighed – forklaring|Reaktionshastighed]].

---

> [!question]- Opgave 3 – Farmakokinetik (Beta-blokker)
> 
> **Data:**
> | t [min] | 30 | 60 | 120 | 150 | 240 | 360 | 480 |
> |---|---|---|---|---|---|---|---|
> | c [ng/cm³] | 699 | 622 | 413 | 292 | 152 | 60 | 24 |
> 
> ### a) Bestem reaktionsordenen for eliminationen
> Vi tester for 1. ordens kinetik ved at se om $\ln(c)$ er lineær over tid:
> - $\ln(699) \approx 6,55$
> - $\ln(24) \approx 3,18$
> Da elimination af lægemidler oftest følger 1. ordens kinetik (hvor hastigheden er proportional med koncentrationen), og et plot af $\ln(c)$ mod $t$ vil give en ret linje, er eliminationen af **1. orden**.
> 
> ### b) Bestem hastighedskonstant og halveringstid
> For 1. orden: $\ln(c) = -k \cdot t + \ln(c_0)$
> Vi bruger to punkter ($t=120, c=413$ og $t=480, c=24$):
> $k = -\frac{\ln(24) - \ln(413)}{480 - 120} = -\frac{3,178 - 6,023}{360} \approx \mathbf{0,0079 \text{ min}^{-1}}$
> 
> **Halveringstid:**
> (Jvf. [[1 Formelsamling KE559 – Grundlæggende Kemi#Halveringstid|Halveringstid formel]])
> $$t_{1/2} = \frac{\ln(2)}{k} = \frac{0,693}{0,0079} \approx \mathbf{87,7 \text{ min}}$$
> 
> Fagbegreber: [[Reaktionsorden – forklaring|Reaktionsorden]], [[Halveringstid – forklaring|Halveringstid]].

---

[[1 Formelsamling KE559 – Grundlæggende Kemi]]
