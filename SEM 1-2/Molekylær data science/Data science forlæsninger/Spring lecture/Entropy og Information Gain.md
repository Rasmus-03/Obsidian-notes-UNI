2026-06-01

*Entropi og Information Gain — split-kriterium baseret på informationsteori.*

> [!tip] For en 5-årig: Hvor overrasket bliver du?
> Forestil dig at du skal gætte, hvad der er i en lukket æske.
>
> Hvis du **ved** at der er en rød LEGO-klods (kun én mulighed), bliver du slet ikke overrasket — entropi = 0.
>
> Hvis der kan være rød, blå, grøn eller gul (4 muligheder), er du mere usikker — entropi er høj.
>
> Information Gain måler hvor meget **mindre overrasket** du bliver, når du får et svar på et spørgsmål. Træet vælger det spørgsmål der giver den største overraskelses-reduktion!

---

## Entropi

Entropi måler **usikkerhed/kaos** i en node. For $K$ klasser:

$$ H = -\sum_{k=1}^{K} p_k \log_2(p_k) $$

- **Minimum (0):** Kun én klasse (100% sikker)
- **Maksimum:** Ensartet fordeling ($\log_2 K$)

> [!NOTE] Eksempel: 6A, 4B
> $$ H = -\frac{6}{10}\log_2\!\left(\frac{6}{10}\right) - \frac{4}{10}\log_2\!\left(\frac{4}{10}\right) \approx 0,97 $$

---

## Information Gain

Forskellen i entropi før og efter et split:

$$ IG = H_{\text{parent}} - \left( \frac{n_{\text{venstre}}}{n_{\text{total}}} H_{\text{venstre}} + \frac{n_{\text{højre}}}{n_{\text{total}}} H_{\text{højre}} \right) $$

Træet vælger det split med **højest** Information Gain — hvilket svarer til at **minimere entropien i child nodes** (da $H_{\text{parent}}$ er konstant, giver max IG = min vægtet $H_{\text{child}}$).

> [!INFO] MCQ: Hvorfor splitter et beslutningstræ?
> **Korrekt svar:** To minimize the entropy of the child nodes.
>
> - At maksimere entropi ville gøre child nodes *mere* blandede → modsat målet
> - At balancere klasser (50/50) giver *maksimal* entropi — træet vil **adskille** klasser, ikke blande dem
> - At få lige mange objekter er irrelevant — træet er ligeglad med om child A får 5 og child B får 95, så længe grupperne bliver mere rene

---

## Gini vs Entropi

| Kriterium | Formel | Interval | Split-vælger |
| :--- | :--- | :--- | :--- |
| **Gini** | $1 - \sum p_k^2$ | $[0, 1-1/K]$ | Minimer Gini |
| **Entropi** | $-\sum p_k \log_2 p_k$ | $[0, \log_2 K]$ | Maksimer IG |

I praksis giver de oftest samme split. Gini er lidt hurtigere at beregne; Entropi giver mere "balancerede" træer.

---

> [!question]- Overfitting og underfitting med Information Gain
> Information Gain styrer split-valget, men kan også misbruges:
>
> | Problem | Hvad sker der | Eksempel |
> |:---|:---|:---|
> | **Overfitting** | En kontinuert feature med mange unikke værdier giver høj IG, fordi den kan splitte data i næsten rene grupper — selv når sammenhængen er tilfældig | Feature "sample-ID" har $n$ unikke værdier → perfekt split med IG = $H_{\text{parent}}$ |
> | **Underfitting** | Stopper split for tidligt (minimum IG for lille) → mønstre opdages ikke | Træet vokser kun 2 lag, men data kræver 6 lag for at separere klasserne |
>
> > [!WARNING] Feature selection bias
> > Information Gain har en **bias** mod features med mange unikke værdier. En kontinuert feature med 100 værdier har 99 kandidat-thresholds — større sandsynlighed for at ramme et godt split ved en tilfældighed. Løsning: brug **Gain Ratio** (normaliseret IG) eller sæt `min_samples_leaf`.

Se også: [[Gini Impurity]] for det andet split-kriterium.
