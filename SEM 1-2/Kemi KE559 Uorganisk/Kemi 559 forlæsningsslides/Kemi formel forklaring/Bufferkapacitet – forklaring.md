# Bufferkapacitet (Tilsætning til buffer)
*Hvordan ændrer pH sig, når man tilsætter en stærk syre eller base til en buffer?*

---

## 1. Begreber og enheder
Når du tilsætter syre/base, sker der en reaktion, før du kan bruge pufferligningen.

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$n_{\text{syre}}$** | Mol syre | $\text{mol}$ | Stofmængden af syre i bufferen. |
| **$n_{\text{base}}$** | Mol base | $\text{mol}$ | Stofmængden af base i bufferen. |
| **$x$** | Tilsat mængde | $\text{mol}$ | Stofmængden af tilsat stærk syre ($H^+$) eller base ($OH^-$). |
| **$pH_{ny}$** | Ny pH-værdi | (Enhedsløs) | pH efter reaktionen er forløbet. |

---

## 2. Strategi (Før og Efter)
Du må **aldrig** bare smide tallene ind i pufferligningen med det samme. Du skal først tænke:

1. **Hvis du tilsætter stærk syre ($H^+$):**
   Den stærke syre reagerer med buffer-basen og laver den om til buffer-syre.
   - $n_{\text{base, ny}} = n_{\text{base, start}} - x$
   - $n_{\text{syre, ny}} = n_{\text{syre, start}} + x$

2. **Hvis du tilsætter stærk base ($OH^-$):**
   Den stærke base reagerer med buffer-syren og laver den om til buffer-base.
   - $n_{\text{syre, ny}} = n_{\text{syre, start}} - x$
   - $n_{\text{base, ny}} = n_{\text{base, start}} + x$

---

## 3. Eksempler

> [!example] **Opgave: Beregn den nye pH-værdi efter tilsætning af en stærk syre ($HCl$) til en buffer**
> Buffer: $0,10 \text{ M}$ eddikesyre og $0,15 \text{ M}$ acetat ($pK_a = 4,76$).
> 
> 1. **Find start-mol:** $n_{\text{syre}} = 0,10 \text{ mol}$, $n_{\text{base}} = 0,15 \text{ mol}$.
> 2. **Reaktion:** HCl is en syre, så den fjerner base og laver mere syre.
>    - $n_{\text{base}} = 0,15 - 0,01 = 0,14 \text{ mol}$
>    - $n_{\text{syre}} = 0,10 + 0,01 = 0,11 \text{ mol}$
> 3. **Indsæt i [[Pufferligningen – forklaring]]:**
>    $$pH = 4,76 + \log\left(\frac{0,14}{0,11}\right) = \mathbf{4,86}$$

> [!example] **Opgave: Beregn den nye pH-værdi efter tilsætning af en stærk base ($NaOH$) til en buffer**
> Samme buffer som før ($0,10\text{ M syre} / 0,15\text{ M base}$, $pK_a = 4,76$).
> 
> 1. **Find start-mol:** $n_{\text{syre}} = 0,10\text{ mol}$, $n_{\text{base}} = 0,15\text{ mol}$.

> 2. **Reaktion:** NaOH er en base, så den fjerner syre og laver mere base.
>    - $n_{\text{syre, ny}} = 0,10 - 0,02 = 0,08\text{ mol}$
>    - $n_{\text{base, ny}} = 0,15 + 0,02 = 0,17\text{ mol}$
> 3. **Indsæt i Pufferligningen:**
>    $$pH = 4,76 + \log\left(\frac{0,17}{0,08}\right) = \mathbf{5,09}$$
> 
> **Konklusion:** pH stiger, da vi har tilsat en base.

---

## 4. Eksamens-tip (WordMat)
Hvis du skal finde ud af, **hvor meget** syre ($x$) du skal tilsætte for at ramme en bestemt pH, så opstil ligningen sådan her:
$$pH_{\text{ønsket}} = pK_a + \log\left(\frac{n_{\text{base}} - x}{n_{\text{syre}} + x}\right)$$
Tryk **alt+b** for at finde $x$.
