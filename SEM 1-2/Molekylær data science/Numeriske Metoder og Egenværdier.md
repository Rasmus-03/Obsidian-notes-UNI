---
dato: 2026-03-03
type: noter
tags:
  - matematik
  - numeriske-metoder
  - lineær-algebra
  - r-programmering
---

# Guide til Differentialligninger (ODE)

> [!summary] **Overblik**
> Denne note dækker principperne for *Ordinary Differential Equations* (ODE) – fra hvordan man opstiller modeller til hvordan man løser dem både numerisk (Eulers og Heuns metode) og analytisk (egenværdier og vektorer).
> Se også: [[integration]] og [[differentiering]].

---

## Compartment Models (Kasse-modeller)
Inden for biologi og kemi bruger vi ofte "compartments" (beholdere/rum) til at beskrive stofmængder. Dette er essentielt inden for [[Reaktionshastighed – forklaring|reaktionskinetik]].

- **Princippet:** Ændringen over tid = det der kommer ind minus det der ryger ud.
  $$ \frac{dx}{dt} = \text{input} - \text{output} $$
- **Stofmængde ($x$) til Koncentration ($c$):** Da vi ofte måler koncentration, dividerer vi stofmængden med volumenet ($V$):
  $$ c = \frac{x}{V} \implies \frac{dc}{dt} = \frac{1}{V} \cdot \frac{dx}{dt} $$
  *(Se evt. [[Stofmængde]] for grundlæggende begreber)*

---

## Numeriske Metoder (Løsning skridt for skridt)

Hvis en ligning er for svær at løse i hånden via klassisk [[integration]], bruger vi numeriske metoder med et tidsskridt ($\tau$).


### 1. Forward Euler (Den simple)
Vi kigger kun på hældningen i det punkt, vi står i nu.
$$ c_{i+1} = c_i + \tau \cdot f(t_i, c_i) $$

### 2. Heuns Metode (Den præcise)
Heun er smartere, fordi den gætter på, hvad hældningen er i det *næste* skridt og tager gennemsnittet. Det kaldes en "Predictor-Corrector" metode.
1. **Gæt (Predict):** Tag et Euler-skridt for at finde et midlertidigt punkt.
2. **Ret (Correct):** Brug gennemsnittet af hældningen nu og hældningen i det gættede punkt.

---

## Implementering i R

```r
# --- Eulers Metode ---
euler <- function(f, c0, t1, t2, tau) {
  time <- seq(t1, t2, by = tau)
  c <- array(0, dim = length(time))
  c[1] <- c0
  
  for (i in 1:(length(time) - 1)) {
    c[i+1] <- c[i] + tau * f(time[i], c[i])
  }
  return(data.frame(time = time, conc = c))
}

# --- Heuns Metode ---
heun <- function(f, c0, t1, t2, tau) {
  time <- seq(t1, t2, by = tau)
  c <- array(0, dim = length(time))
  c[1] <- c0
  
  for (i in 1:(length(time) - 1)) {
    k0 <- f(time[i], c[i])                # Hældning nu
    k1 <- f(time[i+1], c[i] + tau * k0)   # Gættet hældning næste skridt
    c[i+1] <- c[i] + (tau / 2) * (k0 + k1) # Gennemsnit
  }
  return(data.frame(time = time, conc = c))
}

# Eksempel på brug: dc/dt = -0.4 * c
f_decay <- function(t, c) { -0.4 * c }
resultat <- heun(f_decay, c0 = 10, t1 = 0, t2 = 10, tau = 0.5)
resultat
```

---

##  Analytisk Løsning (Egenværdier & Vektorer)

Når vi har et system af ligninger (f.eks. stof der flyder mellem to rum), skriver vi det som en matrix $\mathbf{A}$.

### Egenværdier ($\lambda$) og Egenvektorer ($\vec{v}$)
For at finde den præcise løsning skal vi bruge:
1. **$\lambda$ (Egenværdier):** Fortæller om systemet falder (negativ) eller vokser (positiv).
2. **$\vec{v}$ (Egenvektorer):** Fortæller i hvilken "retning" eller forhold stofferne fordeler sig.

Den generelle løsning ser således ud:
$$ c(t) = C_1 \cdot e^{\lambda_1 t} \cdot \vec{v}_1 + C_2 \cdot e^{\lambda_2 t} \cdot \vec{v}_2 $$

> [!tip] I R kan findes begge dele med én kommando:
> ```r
> A <- matrix(c(-2, 2, 0, -1), nrow = 2) # Din matrix
> eig <- eigen(A)
> eig$values   # Giver lambda
> eig$vectors  # Giver v
> ```

---

## Vigtigt at huske (Principper)
- **Stabilitet:** Hvis dine $\lambda$ er negative, vil systemet altid falde til ro (mod 0).
- **$\tau$ størrelse:** Jo mindre dit tidsskridt $\tau$ er, jo mere præcis bliver din numeriske løsning (men det tager længere tid at beregne).
- **Explicit vs Implicit:** Euler og Heun er "Explicitte" (nemme). "Implicitte" metoder (som Backward Euler) bruges hvis systemet ændrer sig meget hurtigt (stive ligninger).
