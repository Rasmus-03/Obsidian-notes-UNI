*Fourier-transformation — at oversætte mellem tidsdomæne og frekvensdomæne. Anvendt i massespektrometri (Orbitrap) og signalanalyse.*

> [!tip] For en 5-årig: At dele en sang op i toner
> Forestil dig at du hører en sang. Du kan ikke umiddelbart se hvilke noder den består af — du hører bare lyden som en bølge over tid.
>
> Fourier-transformation er som at få udskriften: "Sangen består af: 2 sekunder C, 1 sekund D, 3 sekunder G..." Den fortæller **hvilke frekvenser** der er i signalet, og **hvor stærke** de er.
>
> I massespektrometri: Ioner svinger i en Orbitrap med en frekvens der afhænger af deres masse. Fourier-transformation oversætter svingningerne til et massespektrum.

---

## 01 Tidsdomæne vs. frekvensdomæne

### Tidsdomæne
Signalet $f(t)$ viser amplityde som funktion af **tid**:
- x-akse: tid (s)
- y-akse: signalstyrke

### Frekvensdomæne
Fourier-transformationen $\hat{f}(\omega)$ viser amplityde som funktion af **frekvens**:
- x-akse: frekvens (Hz)
- y-akse: amplityde (hvor stærk denne frekvens er)

### Eksempel: Ren tone
- Tidsdomæne: $f(t) = \sin(2\pi \cdot 440 \cdot t)$ — en sinusbølge (440 Hz = kammertone A)
- Frekvensdomæne: En enkelt spids ved 440 Hz

### Eksempel: To toner + støj
- Tidsdomæne: kompliceret bølge, svær at tolke
- Frekvensdomæne: To tydelige peaks + lavt støjgulv

---

## 02 Fourier-serien (periodiske signaler)

Ethvert periodisk signal $f(t)$ med periode $T$ kan skrives som en sum af sinus- og cosinusfunktioner:

$$
f(t) = a_0 + \sum_{n=1}^{\infty} \left[ a_n \cos\left(\frac{2\pi n t}{T}\right) + b_n \sin\left(\frac{2\pi n t}{T}\right) \right]
$$

- $n = 1$: **grundfrekvens** $f_0 = 1/T$
- $n = 2, 3, \dots$: **overtoner** (harmoniske)
- $a_n, b_n$: hvor meget hver frekvens bidrager

---

## 03 Fourier-transformationen (ikke-periodiske signaler)

$$
\hat{f}(\omega) = \int_{-\infty}^{\infty} f(t) e^{-i\omega t} \, dt
$$

hvor $\omega = 2\pi f$ er vinkelfrekvensen.

Den inverse transformation (tilbage til tidsdomæne):

$$
f(t) = \frac{1}{2\pi} \int_{-\infty}^{\infty} \hat{f}(\omega) e^{i\omega t} \, d\omega
$$

---

## 04 Diskret Fourier-transformation (DFT)

I computeren har vi ikke kontinuerte funktioner — vi har samplede målepunkter.

$$
\hat{f}_k = \sum_{n=0}^{N-1} f_n e^{-2\pi i k n / N}, \quad k = 0, 1, \dots, N-1
$$

**Fast Fourier Transform (FFT):** En hurtig algoritme til at beregne DFT — $O(N \log N)$ i stedet for $O(N^2)$.

> [!question]- Hvad er frekvensopløsningen?
> Du sampler et signal i 1 sekund med 1000 Hz samplerate ($N = 1000$ punkter).
>
> (a) Hvad er frekvensopløsningen?
> (b) Kan du skelne 440 Hz fra 441 Hz?
>
> **Løsning:**
>
> (a) Frekvensopløsning: $\Delta f = \frac{\text{samplerate}}{N} = \frac{1000}{1000} = 1 \text{ Hz}$
>
> (b) Ja — 440 Hz og 441 Hz er 1 Hz fra hinanden, hvilket er præcis opløsningen.
>
> **Generel regel:** Længere måletid → bedre frekvensopløsning. For at skelne 440.0 fra 440.1 Hz skal du måle i 10 sekunder.

---

## 05 Anvendelse: Orbitrap massespektrometri

I Orbitrap:

1. **Ioner sættes i bane** — de oscillerer harmonisk langs aksen
2. **Frekvensen måles** — den afhænger af ionens masse/ladning:
   $$
   \omega = \sqrt{\frac{k}{m/q}} \quad\Rightarrow\quad f = \frac{1}{2\pi} \sqrt{\frac{q}{m} k_{OT}}
   $$
3. **Fourier-transformation** af det målte signal giver **massespektret** — et peak for hver $m/q$

**Fordel:** Mange frekvenser (= mange ioner) måles samtidigt. Det er derfor Orbitrap er både hurtig og præcis.

Se: [[Image Analysis BMB 547]] for filtrering (Fourier bruges også til billedfiltre), [[Eksamensguide – BMB547]] for overblik.

---

## 06 FFT i R

```r
# Simuleret signal med to frekvenser
t <- seq(0, 1, length.out = 1000)
signal <- sin(2 * pi * 50 * t) + 0.5 * sin(2 * pi * 120 * t)

# FFT
fft_result <- fft(signal)
amplitude <- Mod(fft_result)
freq <- (0:999) / 1  # frekvensakse (samplerate = 1000 Hz)

# Plot kun den relevante halvdel (symmetrisk)
plot(freq[1:500], amplitude[1:500], type = "l",
     xlab = "Frekvens (Hz)", ylab = "Amplitude")
```

---

## 07 Overfitting/underfitting i Fourier?

Ikke direkte — men **sampling**-relaterede fælder:

| Problem | Hvad sker der | Løsning |
|:---|:---|:---|
| **Aliasing** | Høje frekvenser "foldes" ned i lave hvis sampleraten er for lav | Sampler med $f_s > 2 \cdot f_{\text{max}}$ (Nyquist) |
| **Lækage** | Diskontinuiteter i signalet giver falske peaks | Brug window-funktion (Hann, Hamming) |
| **For lidt data** | Dårlig frekvensopløsning | Mål i længere tid |
