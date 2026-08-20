2026-06-01

*Hvordan beslutningstræer håndterer kontinuerte og kategoriske variable.*

> [!tip] For en 5-årig: Tal og ord i træet
> Forestil dig at du skal sortere frugt.
>
> **Kontinuerte tal** (f.eks. vægt): "Er æblet tungere end 150 gram?" — du finder en grænse og deler i "tung" og "let".
>
> **Kategorier** (f.eks. farve): "Er det rødt?" — du stiller ja/nej-spørgsmål.
>
> Problemet er når der er **mange muligheder**: 100 forskellige vægte giver 99 måder at dele på (overfitting-risiko!), mens 20 frugtfarver giver over 500.000 måder at dele på!

---

## Kontinuerte variable (fx alder, længde, koncentration)

Beslutningstræer kan ikke bruge kontinuerte værdier direkte som split-betingelser. I stedet finder de en **tærskelværdi (threshold)**.

### Fremgangsmåde

1. Sortér værdierne af den kontinuerte feature
2. Test hvert **midtpunkt mellem to på hinanden følgende værdier** som kandidat-threshold
3. Vælg det threshold der giver bedst split (lavest Gini eller højest IG)

> [!NOTE] Eksempel: Alder
> Alder: [22, 25, 30, 35, 40, 45]
> Kandidat-thresholds: 23,5 | 27,5 | 32,5 | 37,5 | 42,5
>
> Split-forespørgsler:
> - ${\text{alder}} \leq 27,5$?
> - ${\text{alder}} \leq 32,5$?
> - ...
>
> Beregn Gini/IG for hver og vælg bedste.

---

## Kategoriske variable (fx farve, køn, by)

### Mulighed 1: Binary split (anbefales)

Split på én specifik kategori vs. resten:

$$ \text{farve} = \text{"blå"}? \quad (\text{Ja/Nej}) $$

### Mulighed 2: Multi-way split (sjældnere)

Én gren per kategori:

$$ \text{farve} \in \{\text{blå}, \text{rød}, \text{grøn}\} $$

**Ulempe:** Færre samples per gren → overfitting-risiko, især ved mange kategorier.

---

## Praktiske overvejelser

| Feature-type | Split-eksempel | Antal kandidat-splits |
| :--- | :--- | :--- |
| Kontinuert (n unikke værdier) | $x \leq t$ | $n-1$ thresholds |
| Binær (Ja/Nej) | $x = \text{Ja}$ | 1 |
| Kategorisk (m kategorier) | $x = \text{"kategori"}$ | $m$ (binary) eller $2^{m-1}-1$ (multi-way) |

Se også: [[Gini Impurity]] og [[Entropy og Information Gain]] for split-kriterier.

---

> [!question]- Overfitting og underfitting med variable typer
> Valget af feature-type påvirker overfitting/underfitting direkte:
>
> | Feature-type | Underfitting-risiko | Overfitting-risiko |
> |:---|:---|:---|
> | **Kontinuert (få værdier)** | Lav — træet kan finde præcise thresholds | Lav — få kandidat-splits |
> | **Kontinuert (mange værdier)** | Lav — nok muligheder for split | **Høj** — 99 thresholds giver nemt et "heldigt" split |
> | **Kategorisk (binær)** | Lav-middel | Lav — kun 1 split-mulighed |
> | **Kategorisk (mange klasser)** | Lav | **Meget høj** — $2^{m-1}-1$ split-muligheder → risiko for at ramme et tilfældigt godt split |
>
> > [!TIP] Undgå overfitting
> > - Kontinuerte features med mange unikke værdier: sæt `min_samples_leaf` højt
> > - Kategoriske features med mange klasser: brug **binary split** (ikke multi-way) eller groupér sjældne klasser
> > - Overvej Random Forest i stedet for et enkelt træ
