2026-06-01

*Introduction to Machine Learning — Decision Trees, Evaluation, and Random Forests.*

> [!tip] For en 5-årig: 20 spørgsmål
> Forestil dig at du leger "20 spørgsmål" — du stiller ja/nej-spørgsmål for at gætte et dyr:
>
> "Har det pels?" → Ja → "Kan det svømme?" → Nej → "Er det en kat?" → JA!
>
> Et beslutningstræ gør præcis det samme! Det stiller spørgsmål som "er indkomsten over 50.000?" og "er personen over 30 år?" for at afgøre, om nogen har høj eller lav kreditrisiko.
>
> Random Forest er når du spørger **mange venner** (mange træer) og tager flertallets svar — det er mere præcist end at spørge én ven.

> [!INFO] Course info
> BMB547, Richard Röttger, 2026. Slides based on Radu Ionescu, University of Bucharest.

---

## Recap: Logistic Regression

Logistic regression kan kun lære **lineære beslutningsgrænser**. For mere komplekse sammenhænge har vi brug for ikke-lineære modeller som decision trees.

---

## Decision Trees

### Hvad er et decision tree?

Et træ-lignende model hvor:
- **Interne knuder (nodes):** Test/decision på en feature
- **Grene (branches):** Udfald af testen
- **Blade (leaves):** Endelig forudsigelse/klassifikation

> [!EXAMPLE] Eksempel: Credit scoring
> ```
> Er personen studerende?
> ├── Ja → Er indkomsten høj?
> │   ├── Ja → Lav risiko
> │   └── Nej → Høj risiko
> └── Nej → Er alder > 30?
>     ├── Ja → Lav risiko
>     └── Nej → Medium risiko
> ```

### Fordele
- **Menneskeligt fortolkbare** — kan sanity-tjekkes
- Kan lære **ikke-lineære beslutningsgrænser**
- Kræver minimal data-forbehandling
- `They are directly interpretable

### Ulemper
- **Overfitting** — træet kan vokse sig så dybt at det memorerer træningsdata og fejler på nye data. Kræver pruning eller Random Forest
- **Høj varians** — små ændringer i data kan give et helt andet træ (træet er ustabilt)
- **Greedy split** — træet vælger det bedste split lige nu og her, hvilket ikke altid giver det globale optimale træ
- **Bias mod features med mange værdier** — kontinuerte features og variable med mange kategorier prioriteres højere af Gini/IG, selv når de er irrelevante
- **Dårlig til regression** — beslutningstræer kan kun forudsige konstante værdier i blade, ikke glatte kurver

### Hvordan lærer man dem?

1. Vælg en feature og split data baseret på dens værdier
2. Gentag rekursivt for hver delmængde
3. Stop når bladene er "rene" (alle samples har samme label)

Split-kvalitet måles med [[Gini Impurity]] (minimer Gini i child nodes) eller [[Entropy og Information Gain]] (minimer entropi i child nodes / maximer IG).

> [!INFO] MCQ: Hvorfor splitter et beslutningstræ?
> Målet med at splitte er at gøre child nodes **så rene som muligt** — dvs. minimere entropi (eller Gini). Dette svarer til at maximere Information Gain.

Se [[Kontinuerte vs kategoriske variable i beslutningstræer]] for hvordan forskellige feature-typer håndteres ved split.

---

## Model Tradeoffs

| Tradeoff | Beskrivelse |
| :--- | :--- |
| **Accuracy vs interpretability** | Lineære modeller er lette at fortolke; deep neural networks er svære |
| **Good fit vs over-fit** | For kompleks model → overfitting (husker data, generaliserer ikke) |
| **Parsimony vs black-box** | Simpel model med få variable foretrækkes ofte |

> [!WARNING] Overfitting
> Et decision tree kan vokse sig meget dybt og perfekt klassificere træningsdata — men generaliserer dårligt til nye data. Brug **pruning** (beskæring) eller **Random Forests**.

> [!question]- Overfitting vs underfitting i beslutningstræer
> **Underfitting (træet er for lavt):**
> - Kun få split — modellen fanger ikke mønstre i data
> - Høj fejl på **både** trænings- og testdata
> - Eksempel: Et træ med max-depth=2 på et problem der kræver 5 split
>
> **Overfitting (træet er for dybt):**
> - Træet splitter indtil hvert blad har én sample — det **husker** data frem for at lære
> - Lav fejl på træningsdata, men høj fejl på testdata
> - Eksempel: Et træ med max-depth=20 på 50 samples
>
> **Illustration (credit scoring):**
> ```
> Underfittet (1 split):             Overfittet (dybde 6):
> Er indkomst > 50k?                 Er indkomst > 50k?
> ├── Ja → Lav risiko                ├── Ja → Er alder = 32?
> └── Nej → Høj risiko               │   ├── Ja → Er postnr=5230?
>                                    │   │   ├── Ja → Lav risiko (kun 1 sample!)
>                                    │   │   └── Nej → ...
>                                    └── Nej → ...
> ```
> Det overfittede træ memorerer tilfældige detaljer (præcis alder 32, præcist postnummer) og fejler på nye kunder.
>
> **Løsning:**
> - Underfitting → øg dybde, tillad flere split
> - Overfitting → pruning (beskær bladene), sæt min_samples_leaf, brug Random Forest

---

## Random Forests

Et Random Forest er en **samling** (ensemble) af mange decision trees.

### Hvordan virker det?

1. Træn mange trees, hver på en **tilfældig delmængde** af data og features
2. Hvert tree "stemmer" på en klassifikation
3. Flertalsafgørelse (majority vote) bestemmer resultatet

### Fordele
- Meget mere præcist end et enkelt tree
- Robust over for overfitting
- Håndterer høj-dimensionelle data godt

### Ulemper
- Mindre fortolkbart end et enkelt tree
- Kræver mere beregning

---

## Sammenligning

| Model | Lineær | Fortolkbar | Overfitting-risiko | Præcision |
| :--- | :--- | :--- | :--- | :--- |
| Logistic Regression | Ja | Høj | Lav | Lav på komplekse data |
| Decision Tree | Nej | Høj | Høj | Medium |
| Random Forest | Nej | Medium | Lav | Høj |

Se også: [[Logistic Regression]] for lineær klassifikation, og [[Ordinære differentialligninger]] for kontinuerte modeller i biologi.
