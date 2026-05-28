2026-02-21

*Opgavesæt F3 om introduktion til integration, Riemann-summer og anvendelse af integralregning på biologiske systemer (Transferrin).*

---

> [!question]- Opgave 1 – Introduktion til integration 
> 
> ### Introduktion til integration
> **Opgave (baseret på 21.1 b – 21.3 b)**
> For funktionen $f(x) = \frac{1}{4-x}$ i intervallet $[-1, 3]$, skal der anvendes venstre Riemannsum, højre Riemannsum og trapezreglen til at estimere integralet med $n=4$.
> 
> #### Beregning for $n=4$ (Manuelt)
> Givet:
> - Interval: $[a, b] = [-1, 3]$
> - Antal intervaller: $n = 4$
> - Bredde: $\Delta x = \frac{b - a}{n}=\Delta x = \frac{3 - (-1)}{4} = 1$
> - Delpunkter: $x_0 = -1, x_1 = 0, x_2 = 1, x_3 = 2, x_4 = 3$
> 
> > [!NOTE] Mellemregninger: Funktionsværdier
> > Vi indsætter delpunkterne i $f(x) = \frac{1}{4-x}$:
> > - $f(-1) = \frac{1}{4 - (-1)} = \frac{1}{5} = 0.2$
> > - $f(0) = \frac{1}{4 - 0} = \frac{1}{4} = 0.25$
> > - $f(1) = \frac{1}{4 - 1} = \frac{1}{3} \approx 0.3333$
> > - $f(2) = \frac{1}{4 - 2} = \frac{1}{2} = 0.5$
> > - $f(3) = \frac{1}{4 - 3} = \frac{1}{1} = 1.0$
> 
> > [!CALCULATOR] Mellemregninger: Riemann-summer ($n=4$)
> > 
> > **Venstre Riemannsum ($x_0$ til $x_3$):**
> > $$ \text{Sum}_V = 1 \cdot [0.2 + 0.25 + 0.3333 + 0.5] = 1.2833 $$
> > 
> > **Højre Riemannsum ($x_1$ til $x_4$):**
> > $$ \text{Sum}_H = 1 \cdot [0.25 + 0.3333 + 0.5 + 1.0] = 2.0833 $$
> > 
> > **Trapezmetoden (Gennemsnit af V og H):**
> > $$ \text{Sum}_T = \frac{1.2833 + 2.0833}{2} = 1.6833 $$
> 
> ---
> 
> > [!INFO] Eksakt værdi og fejlanalyse
> > $$ \int_{-1}^{3} \frac{1}{4-x} \, dx = \left[ -\ln(4-x) \right]_{-1}^{3} = 1.6094 $$
> > **Diskussion:** Trapezmetoden (1.6833) giver det tætteste estimat til den eksakte værdi (1.6094).
> 

---

> [!question]- Bogopgave - Kapitel 21 - Opgave 21,7  
> “Suppose that a town’s population grows at the rate of 1000 people/year for 5 years and then grows at the rate of 2000 people/year for 3 years. What is the change in this population during these 8 years?”
> 
> Lad os dele det op I 2 rektangler,
> 
> $$A_{1}=1000*5=5000$$
> $$A_{2}=2000*3=6000$$
> $$A_{total}=A_{1}+A_{2}=11000$$

> [!question]- Bogopgave - Kapitel 21 - Opgave 21,9 løst i RStudio  
> The toxicity of a drug is affected by the amount of drug in the blood times the length of time it remains at that level. This cumulative effect is found by estimating the area under the curve presenting the amount of drug over the time that the dose is effective. Suppose that the amount of a drug A(t) (mg) is measured over a period of time after taking a pill and that its quantity in the relevant body organ is found to be as follows:
> 
> ```r
t <- 0:10 
A <- c(0.05, 0.46, 0.87, 0.54, 0.43, 0.36, 0.28, 0.21, 0.16, 0.12, 0.09)
dt <- t[2] - t[1]
cumulative_effect <- sum((A[1:10] + A[2:11])/2 * dt) 
cumulative_effect

