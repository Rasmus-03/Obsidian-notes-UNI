2026-06-01

*Gini-urenhed (Gini impurity) — split-kriterium til beslutningstræer.*

> [!tip] For en 5-årig: Hvor rodet er det?
> Forestil dig en skuffe med sokker. Hvis **alle sokkerne er ens** (f.eks. alle hvide), er skuffen pæn og rodfri — Gini = 0.
>
> Hvis der er **blandede sokker** (nogle hvide, nogle sorte, nogle med striber), er skuffen rodet — Gini er høj.
>
> Når et beslutningstræ skal vælge et spørgsmål, prøver det at **gøre børnenoderne mindre rodede** end forældrenoden. Det spørgsmål der giver den største rydde-op-effekt vinder!

---

## Hvad er Gini impurity?

Gini impurity måler, hvor "uren" en node er. Jo mere blandet klasserne er, jo højere Gini.

For en node med $K$ klasser, hvor $p_k$ er andelen af klasse $k$:

$$ G = 1 - \sum_{k=1}^{K} p_k^2 $$

- **Minimum (0):** Alle samples i samme klasse (ren node)
- **Maksimum:** Ensartet fordeling ($1 - 1/K$)

---

## Eksempel: Binær klassifikation

En node med 10 samples: 6 klasse A, 4 klasse B.

$$ G = 1 - \left(\frac{6}{10}\right)^2 - \left(\frac{4}{10}\right)^2 = 1 - 0,36 - 0,16 = 0,48 $$

---

## Hvordan bruges det til et split?

For hvert kandidat-split beregnes **weighted average Gini** af børnenoderne:

$$ G_{\text{split}} = \frac{n_{\text{venstre}}}{n_{\text{total}}} G_{\text{venstre}} + \frac{n_{\text{højre}}}{n_{\text{total}}} G_{\text{højre}} $$

Træet vælger det split med **lavest** $G_{\text{split}}$.

> [!NOTE] Eksempel: Split på feature $X$
> 10 samples: 6A, 4B. Split på $X > 3$:
> - Venstre (7 samples): 5A, 2B → $G = 1 - (5/7)^2 - (2/7)^2 = 0,41$
> - Højre (3 samples): 1A, 2B → $G = 1 - (1/3)^2 - (2/3)^2 = 0,44$
>
> $$ G_{\text{split}} = \frac{7}{10} \cdot 0,41 + \frac{3}{10} \cdot 0,44 = 0,42 $$
>
> Sammenlign med andre splits og vælg laveste.

---

> [!question]- Overfitting og underfitting med Gini
> Gini styrer direkte, hvor dybt træet vokser — og dermed risikoen for overfitting/underfitting:
>
> | Situation | Gini-tærskel | Konsekvens |
> |:---|:---|:---|
> | **Underfitting** | Stopper for tidligt (Gini > 0,3 accepteres) | Split giver kun rene nok noder hvis Gini er meget lav → træet stopper for tidligt → fanger ikke mønstre |
> | **Overfitting** | Split indtil Gini = 0 i alle blade | Hver node bliver 100% ren → træet memorerer data → fejler på nye data |
>
> > [!TIP] I praksis
> > - Brug `min_samples_leaf` (minimum samples per blad) til at forhindre overfitting
> > - Brug `max_depth` til at forhindre både over- og underfitting
> > - Et blad med 1 sample er altid Gini=0, men det er **overfitting**

Se også: [[Entropy og Information Gain]] for alternativt split-kriterium.
