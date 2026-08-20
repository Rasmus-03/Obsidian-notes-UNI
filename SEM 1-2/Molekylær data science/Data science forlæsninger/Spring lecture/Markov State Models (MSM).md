2026-06-01

*Markov State Models (MSM) til simulering af længerevarende dynamik i biologiske makromolekyler.*

> [!tip] For en 5-årig: Et brætspil med terninger
> Forestil dig et brætspil hvor du flytter brikken rundt på 3 felter. Hvor du ender på næste tur afhænger **kun af hvor du står lige nu** — ikke af hvor du har været før.
>
> Det er en Markov-kæde! Overgangsmatricen er som terningerne der bestemmer, hvad der sker næste gang.
>
> Efter mange ture finder brikken en **ligevægt** — den er oftest på felt 3, sjældnest på felt 1. Det er den stationære fordeling $\pi$.
>
> I biologi: proteiner skifter mellem forskellige former (konformationer), og MSM fortæller hvor tit proteinet er i hver form.

> [!INFO] Kilde
> Lin-Tai Da, Fu Kit Sheong, Daniel-Adriano Silva, and Xuhui Huang: *Application of Markov State Models to Simulate Long Timescale Dynamics of Biological Macromolecules.*

---

## Hvad er en Markov-kæde?

En Markov-kæde er en stokastisk proces, hvor **fremtiden kun afhænger af nutiden** (Markov-egenskaben):

$$ P(X_{t+1} = j \mid X_t = i, X_{t-1}, \dots) = P(X_{t+1} = j \mid X_t = i) $$

Tilstandene og overgangssandsynlighederne beskrives ved en **overgangsmatrix** $A$, hvor $A_{ij} = P(\text{gå fra } i \text{ til } j)$.

---

## Overgangsmatrix

For en **kolonne-stokastisk matrix** med $A_{ij} = P(X_{t+1}=i \mid X_t=j)$:

$$ A = \begin{pmatrix}
a_{11} & a_{12} & a_{13} \\
a_{21} & a_{22} & a_{23} \\
a_{31} & a_{32} & a_{33}
\end{pmatrix}, \quad \sum_{i} a_{ij} = 1 $$

> [!NOTE] Protein-eksempel
> Et protein kan befinde sig i 3 forskellige stadier (konformationer). Overgangsmatricen:
>
> $$ \tilde{A} = \begin{pmatrix}
> 0,30 & 0,33 & 0,10 \\
> 0,37 & 0,01 & 0,34 \\
> 0,33 & 0,66 & 0,56
> \end{pmatrix} $$
>
> Hver kolonne summerer til 1 → **kolonne-stokastisk**.

---

## Ligevægtsfordeling (stationary distribution)

Når $t \to \infty$, når systemet en ligevægt, hvor fordelingen ikke længere ændrer sig. Den stationære fordeling $\pi$ (en søjlevektor) opfylder:

$$ A \pi = \pi, \quad \sum_i \pi_i = 1 $$

> [!NOTE] Løsning af $A\pi = \pi$
> Omskriv til $ (A - I) \pi = 0 $ og løs med betingelsen $\sum \pi_i = 1$:
>
> $$ \begin{pmatrix}
> -0,70 & 0,33 & 0,10 \\
> 0,37 & -0,99 & 0,34 \\
> 0,33 & 0,66 & -0,44
> \end{pmatrix}
> \begin{pmatrix} \pi_1 \\ \pi_2 \\ \pi_3 \end{pmatrix}
> = \begin{pmatrix} 0 \\ 0 \\ 0 \end{pmatrix} $$
>
> $$ \pi_1 + \pi_2 + \pi_3 = 1 $$
>
> **Løsning:** $\pi \approx (0,20; \; 0,26; \; 0,54)$ — stadie 3 er mest sandsynligt ved ligevægt.

> [!TIP] Svar
> Ved ligevægt ($t \to \infty$) er fordelingen af protein i de 3 stadier:
>
> **Stadie 1:** 0,20 (20 %)
> **Stadie 2:** 0,26 (26 %)
> **Stadie 3:** 0,54 (54 %)
>
> Afrundet til 2 decimaler: **(0,20; 0,26; 0,54)**

---

## Hvorfor Markov State Models i biologi?

- Proteiner og andre makromolekyler har mange **konformationelle tilstande**
- Molekylær dynamik (MD) simulationer kan kun nå mikrosekunder, mens biologiske processer foregår over millisekunder eller længere
- MSM grupperer tusindvis af MD-snapshots i **få metastabile tilstande** og beregner overgangssandsynligheder mellem dem
- Gør det muligt at **ekstrapolere** til lange tidsskalaer

### Anvendelser
- Protein folding
- Ligand binding
- Konformationelle ændringer (fx transportproteiner)
- Allosterisk regulering

---

## R-kode: Ligevægtsfordeling fra overgangsmatrix

```r
# 1. Definer din overgangsmatrix (A_tilde)
# Rækkefølge: Data indtastes søjlevis.
# Sørg for at hver søjle summerer til præcis 1.0.
A_tilde <- matrix(c(0.18, 0.45, 0.37,  # Søjle 1
                    0.33, 0.44, 0.23,  # Søjle 2
                    0.07, 0.05, 0.88), # Søjle 3
                  nrow = 3, ncol = 3)

# 2. Beregn egenværdier og egenvektorer
eigen_system <- eigen(A_tilde)

# 3. Find indekset for egenværdien tættest på 1
index_1 <- which.min(abs(eigen_system$values - 1))

# 4. Hent den tilhørende egenvektor (og behold kun den reelle del)
steady_state_vector <- Re(eigen_system$vectors[, index_1])

# 5. Normer vektoren, så summen af sandsynlighederne giver 1
ligevaegt <- steady_state_vector / sum(steady_state_vector)

# 6. Udskriv resultatet (både råt og afrundet til 2 decimaler)
print("Præcis ligevægtsfordeling:")
print(ligevaegt)

print("Afrundet til 2 decimaler:")
print(round(ligevaegt, 2))
```

Se også: [[Ordinære differentialligninger]] for andre matematiske modeller i biologi.
