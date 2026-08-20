2026-06-03

*R-kode til eksamen — kopier, indsæt, tilpas. Alle emner fra BMB547 samlet ét sted.*

#eksamen #BMB547 #R

> [!tip] Sådan bruger du denne note
> Søg efter **## [emne]** eller browse. Hver sektion er en selvstændig kodeblok.
> Du må bruge R under eksamen — kopier sektionen du skal bruge og tilpas variable.

---

## 01 Differentialligninger — Euler (numerisk)

```r
# 1. Definér parametre
k <- 0.1        # Vækst-/henfaldskonstant
y0 <- 100       # Startværdi
tau <- 0.5      # Tidsskridt
t_slut <- 10    # Sluttidspunkt

# 2. Opret tidsvektor og tom løsningsvektor
t <- seq(0, t_slut, by = tau)
y <- numeric(length(t))
y[1] <- y0

# 3. Euler-integration
for (i in 1:(length(t) - 1)) {
  dy <- k * y[i]            # f(t, y) — højre side af ODE
  y[i + 1] <- y[i] + tau * dy
}

# 4. Plot
plot(t, y, type = "b", col = "blue", pch = 16,
     main = "Euler-integration", xlab = "tid", ylab = "y(t)")

# 5. Sammenlign med analytisk løsning
lines(t, y0 * exp(k * t), col = "red", lty = 2)
legend("topleft", legend = c("Euler", "Analytisk"),
       col = c("blue", "red"), lty = c(1, 2))
```

## 02 Differentialligninger — Heun (mere præcis)

```r
# 1. Parametre (samme som Euler)
k <- -0.2       # Negativ = henfald
y0 <- 100
tau <- 0.5
t_slut <- 10

# 2. Initialisér
t <- seq(0, t_slut, by = tau)
y <- numeric(length(t))
y[1] <- y0

# 3. Heun-integration
for (i in 1:(length(t) - 1)) {
  k0 <- k * y[i]
  k1 <- k * (y[i] + tau * k0)
  y[i + 1] <- y[i] + (tau / 2) * (k0 + k1)
}

# 4. Plot
plot(t, y, type = "b", col = "blue", pch = 16,
     main = "Heun-integration", xlab = "tid", ylab = "y(t)")
```

## 03 Panserformel — indlæggelse + clearance

```r
# 1. Parametre
s <- 5          # Indlæggelsesrate (konstant input)
k <- 0.2        # Clearance-rate (proportionalt output)
y0 <- 0         # Startkoncentration
t_slut <- 30
tau <- 0.5

# 2. Løs ODE: dy/dt = s - k*y
t <- seq(0, t_slut, by = tau)
y <- numeric(length(t))
y[1] <- y0

for (i in 1:(length(t) - 1)) {
  dy <- s - k * y[i]
  y[i + 1] <- y[i] + tau * dy
}

# 3. Analytisk løsning (panserformel)
y_analytisk <- s/k + (y0 - s/k) * exp(-k * t)

# 4. Steady state
y_ss <- s/k
cat("Steady state (t → ∞):", round(y_ss, 3), "\n")

# 5. Plot
plot(t, y, type = "l", col = "blue", lwd = 2,
     main = "Indlæggelse + Clearance", xlab = "tid", ylab = "koncentration")
lines(t, y_analytisk, col = "red", lty = 2)
abline(h = y_ss, col = "green", lty = 3)
legend("bottomright", legend = c("Numerisk", "Analytisk", "Steady state"),
       col = c("blue", "red", "green"), lty = c(1, 2, 3))
```

## 04 AUC (areal under kurve) — trapezmetoden

```r
# 1. Dine data: tid og koncentration
tid <- c(0, 1, 2, 4, 6, 8, 12)
konc <- c(0, 15, 28, 22, 14, 8, 2)

# 2. Beregn AUC med trapezmetoden
AUC <- 0
for (i in 1:(length(tid) - 1)) {
  delta_t <- tid[i + 1] - tid[i]
  AUC <- AUC + (konc[i] + konc[i + 1]) / 2 * delta_t
}

cat("AUC (trapez):", round(AUC, 2), "\n")

# 3. Plot med trapez-arealer
plot(tid, konc, type = "o", pch = 16, col = "blue", lwd = 2,
     main = paste("AUC =", round(AUC, 2)),
     xlab = "Tid", ylab = "Koncentration")
for (i in 1:(length(tid) - 1)) {
  polygon(c(tid[i], tid[i], tid[i + 1], tid[i + 1]),
          c(0, konc[i], konc[i + 1], 0),
          col = rgb(0, 0, 1, 0.2), border = NA)
}
```

### Kompakt formel (ens intervaller)

Når $\Delta t$ er konstant, brug den kompakte trapez-formel:

$$
\text{AUC} = \frac{\Delta t}{2} \cdot \left(y_0 + 2y_1 + 2y_2 + \cdots + 2y_{n-1} + y_n\right)
```

```r
# Eksempel: AUC = 93,5 med Δt = 0,50
dt <- 0.50
konc <- c(8.00, 10.75, 14.00, 17.75, 22.00,
          26.75, 32.00, 37.75, 44.00)

AUC <- dt / 2 * (konc[1] + 2 * sum(konc[2:(length(konc) - 1)]) + konc[length(konc)])
cat("AUC =", AUC)  # 93.5
```

## 05 Markov-kæde — stationær fordeling

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

# 6. Udskriv resultatet
print("Præcis ligevægtsfordeling:")
print(ligevaegt)
print("Afrundet til 2 decimaler:")
print(round(ligevaegt, 2))

# 7. Simulér Markov-kæde over tid
n_step <- 100
start <- c(1, 0, 0)  # Start i tilstand 1
tilstand <- numeric(n_step)
tilstand[1] <- which.max(start)

for (i in 2:n_step) {
  nuv <- tilstand[i - 1]
  tilstand[i] <- sample(1:3, 1, prob = A_tilde[, nuv])
}

# 8. Plot simulering
plot(tilstand, type = "s", col = "blue", lwd = 2,
     main = "Markov-kæde simulering",
     xlab = "Tidsskridt", ylab = "Tilstand", yaxt = "n")
axis(2, at = 1:3, labels = paste("Tilstand", 1:3))
```

## 06 Logistisk regression

```r
# 1. Simulér data
set.seed(42)
alder <- rnorm(100, mean = 50, sd = 15)
sygdom <- rbinom(100, 1, prob = plogis(-3 + 0.05 * alder))
data <- data.frame(alder, sygdom = factor(sygdom))

# 2. Træn model
model <- glm(sygdom ~ alder, data = data, family = binomial)

# 3. Se resultater
summary(model)

# 4. Forudsig sandsynlighed for ny observation
ny_patient <- data.frame(alder = c(30, 50, 70))
forudsig <- predict(model, ny_patient, type = "response")
print(cbind(ny_patient, sandsynlighed = round(forudsig, 3)))

# 5. Plot sigmoid-kurve
alder_range <- seq(10, 90, length = 100)
pred_range <- predict(model, data.frame(alder = alder_range), type = "response")
plot(alder_range, pred_range, type = "l", col = "red", lwd = 2,
     main = "Logistisk regression — sigmoid", xlab = "Alder", ylab = "P(sygdom)")
points(alder, sygdom, pch = 16, col = rgb(0, 0, 0, 0.3))
```

## 07 Decision Tree

```r
# 1. Installer (kør kun første gang)
# install.packages("rpart")
library(rpart)

# 2. Træn beslutningstræ
data(iris)
trae <- rpart(Species ~ ., data = iris, method = "class")

# 3. Visualisér træet
plot(trae, main = "Decision Tree — Iris")
text(trae, pretty = 0)

# 4. Forudsig
forudsig <- predict(trae, iris, type = "class")
print(cbind(sand = iris$Species, forudsig = as.character(forudsig)))
```

## 08 Random Forest + OOB

```r
# 1. Installer og indlæs
# install.packages("randomForest")
library(randomForest)

# 2. Simulér data
set.seed(42)
patient_data <- data.frame(
  Alder = rnorm(100, mean = 50, sd = 15),
  BMI = rnorm(100, mean = 28, sd = 5),
  Blodtryk = rnorm(100, mean = 130, sd = 20),
  Diagnosis = factor(sample(c("Syg", "Rask"), 100, replace = TRUE))
)

# 3. Træn Random Forest (OOB aktiveres automatisk)
rf <- randomForest(Diagnosis ~ ., data = patient_data,
                   ntree = 500, importance = TRUE)

# 4. OOB fejlrate
print(rf)

# 5. Plot OOB error vs antal træer
plot(rf, main = "OOB Error")

# 6. Variable importance
varImpPlot(rf, main = "Variable Importance")
```

## 09 t-test

```r
# 1. Simulér to grupper
set.seed(42)
kontrol <- rnorm(20, mean = 10, sd = 2)
behandling <- rnorm(20, mean = 12, sd = 2)

# 2. Uafhængig t-test
t_test <- t.test(behandling, kontrol, var.equal = TRUE)
print(t_test)

# 3. Boxplot
boxplot(kontrol, behandling, names = c("Kontrol", "Behandling"),
        col = c("lightblue", "lightcoral"),
        main = paste("t-test p =", round(t_test$p.value, 4)))

# 4. Paired t-test (før/efter)
foer <- rnorm(15, mean = 10, sd = 2)
efter <- foer + rnorm(15, mean = 1.5, sd = 1)
t.test(efter, foer, paired = TRUE)
```

## 10 Chi²-test

```r
# 1. Indtast din kontingenstabel
# Eksempel: Sygdom × Genotype
tabel <- matrix(c(30, 10,   # Rask: Genotype A, B
                  20, 40),  # Syg:  Genotype A, B
                nrow = 2, byrow = TRUE)
rownames(tabel) <- c("Rask", "Syg")
colnames(tabel) <- c("Genotype A", "Genotype B")

print(tabel)

# 2. Udfør chi²-test
chi <- chisq.test(tabel)
print(chi)

# 3. Forventede værdier (under H₀)
print("Forventede værdier:")
print(chi$expected)
```

## 11 ANOVA

```r
# 1. Simulér 3 grupper
set.seed(42)
kontrol <- rnorm(15, mean = 10, sd = 2)
dosis_lav <- rnorm(15, mean = 12, sd = 2)
dosis_hoj <- rnorm(15, mean = 15, sd = 2)

data <- data.frame(
  vaerdi = c(kontrol, dosis_lav, dosis_hoj),
  gruppe = factor(rep(c("Kontrol", "Lav dosis", "Høj dosis"), each = 15))
)

# 2. En-vejs ANOVA
anova_model <- aov(vaerdi ~ gruppe, data = data)
summary(anova_model)

# 3. Post-hoc (hvilke grupper er forskellige?)
TukeyHSD(anova_model)

# 4. Boxplot
boxplot(vaerdi ~ gruppe, data = data,
        col = c("lightblue", "lightgreen", "lightcoral"),
        main = "ANOVA — sammenligning af 3 grupper")
```

## 12 Lineær regression

```r
# 1. Simulér data
set.seed(42)
alder <- rnorm(50, mean = 50, sd = 10)
blodtryk <- 80 + 0.8 * alder + rnorm(50, sd = 8)

# 2. Enkel lineær regression (SLR)
model <- lm(blodtryk ~ alder)
summary(model)

# 3. Plot med regressionslinje
plot(alder, blodtryk, pch = 16, col = "blue",
     main = "Lineær regression", xlab = "Alder", ylab = "Blodtryk")
abline(model, col = "red", lwd = 2)

# 4. Forudsig
ny <- data.frame(alder = c(30, 50, 70))
forudsig <- predict(model, ny, interval = "confidence")
print(cbind(ny, forudsig))

# 5. Multipel lineær regression (MLR)
vaegt <- 50 + 0.5 * alder + rnorm(50, sd = 5)
mlr <- lm(blodtryk ~ alder + vaegt)
summary(mlr)
```

## 13 PCA

```r
# 1. Simulér højdimensionelle data
set.seed(42)
data <- matrix(rnorm(100 * 10), nrow = 100, ncol = 10)
colnames(data) <- paste0("Gen", 1:10)

# 2. Standardisér (vigtigt — ellers dominerer store tal)
data_std <- scale(data)

# 3. Udfør PCA
pca_result <- prcomp(data_std, center = FALSE, scale. = FALSE)

# 4. Se variance forklaret
variance <- pca_result$sdev^2
prop_var <- variance / sum(variance)
print(cbind(PC = 1:10, Variance = round(variance, 3),
            Prop = round(prop_var, 3), Cum = round(cumsum(prop_var), 3)))

# 5. Scree plot
plot(prop_var, type = "b", pch = 16, col = "blue",
     main = "Scree plot — PCA", xlab = "Principal Component", ylab = "Proportion of Variance")

# 6. Biplot (PC1 vs PC2)
biplot(pca_result, main = "PCA — PC1 vs PC2")
```

## 14 Fourier-transformation (FFT)

```r
# 1. Opret signal med kendte frekvenser
fs <- 100          # Samplingsfrekvens (Hz)
T <- 1             # Varighed (sekund)
t <- seq(0, T, length.out = fs * T)
f1 <- 5            # 5 Hz
f2 <- 15           # 15 Hz
signal <- sin(2 * pi * f1 * t) + 0.5 * sin(2 * pi * f2 * t)

# 2. Plot signal i tidsdomæne
plot(t, signal, type = "l", col = "blue",
     main = "Signal i tidsdomæne", xlab = "Tid (s)", ylab = "Amplitude")

# 3. FFT
fft_signal <- fft(signal)
freq <- (0:(length(signal) - 1)) * fs / length(signal)
amplitude <- Mod(fft_signal) / length(signal)

# 4. Plot frekvensspektrum (kun positive frekvenser)
halv <- 1:(length(signal) / 2)
plot(freq[halv], amplitude[halv], type = "h", col = "red", lwd = 2,
     main = "Frekvensspektrum (FFT)", xlab = "Frekvens (Hz)", ylab = "Amplitude")
```

## 15 Kombinatorik

```r
# 1. Fakultet
fakultet <- factorial(5)
cat("5! =", fakultet, "\n")

# 2. Kombination: vælg k uden n (n over k)
komb <- choose(10, 3)
cat("C(10,3) =", komb, "\n")

# 3. Binomialsandsynlighed: P(X = k) for n forsøg
n <- 10
k <- 3
p <- 0.4
sands <- dbinom(k, n, p)
cat("P(X =", k, ") for n =", n, ", p =", p, "=", round(sands, 4), "\n")

# 4. Hele binomialfordelingen
x <- 0:n
px <- dbinom(x, n, p)
barplot(px, names.arg = x, col = "steelblue",
        main = paste("Binomial(n =", n, ", p =", p, ")"),
        xlab = "Antal succeser (k)", ylab = "P(X = k)")
```

## 16 dplyr — data manipulation

```r
# 1. Installer (kør kun første gang)
# install.packages("dplyr")
library(dplyr)

# 2. Opret eller indlæs data
data <- data.frame(
  patient = 1:20,
  behandling = rep(c("Kontrol", "Drug"), each = 10),
  alder = round(rnorm(20, mean = 50, sd = 12)),
  respons = round(rnorm(20, mean = 10, sd = 3), 1)
)

# 3. Filter — vælg rækker
data %>%
  filter(alder > 50)

# 4. Group + summarise — statistik per gruppe
data %>%
  group_by(behandling) %>%
  summarise(
    n = n(),
    gennemsnit = mean(respons),
    sd = sd(respons),
    min = min(respons),
    max = max(respons)
  )

# 5. Mutate — opret ny kolonne
data %>%
  mutate(alder_group = ifelse(alder >= 50, "50+", "<50"))

# 6. Arrange — sorter
data %>%
  arrange(desc(respons))
```

## 17 Venn-diagram

```r
# 1. Indlæs pakke (kør kun første gang)
# install.packages("VennDiagram")
library(VennDiagram)

# 2. Indtast størrelser
behandling_A <- 150
behandling_B <- 120
faelles <- 50

# 3. Tegn 2-sætters Venn
venn.plot <- draw.pairwise.venn(
  area1 = behandling_A,
  area2 = behandling_B,
  cross.area = faelles,
  category = c("Behandling A", "Behandling B"),
  fill = c("lightblue", "lightcoral"),
  cat.cex = 1.2,
  cex = 1.5
)
grid.draw(venn.plot)
```

## 18 Heatmap

```r
# 1. Indlæs pakke (kør kun første gang)
# install.packages("pheatmap")
library(pheatmap)

# 2. Simulér gene expression data (10 gener × 6 samples)
set.seed(42)
eksp <- matrix(rnorm(60, mean = 0, sd = 2), nrow = 10, ncol = 6)
rownames(eksp) <- paste0("Gen", 1:10)
colnames(eksp) <- paste0("Sample", 1:6)

# 3. Opret heatmap med clustering
pheatmap(eksp,
         scale = "row",
         clustering_method = "ward.D2",
         cutree_rows = 3,
         color = colorRampPalette(c("blue", "white", "red"))(100),
         main = "Gene Expression Heatmap")
```

## 19 Dendrogram

```r
# 1. Brug iris datasæt
data(iris)
X <- iris[, 1:4]

# 2. Afstandsmatrix + clustering
d <- dist(X, method = "euclidean")
hc <- hclust(d, method = "ward.D2")

# 3. Plot dendrogram
plot(hc, main = "Dendrogram — Iris", xlab = "", ylab = "Distance")

# 4. Cut-off ved 3 klynger
rect.hclust(hc, k = 3, border = c("red", "blue", "green"))
klynger <- cutree(hc, k = 3)

# 5. Sammenlign med sand art
print(table(klynger, iris$Species))
```

---

> [!tip] Eksamen — genvej
> Brug **Ctrl+F / Cmd+F** og søg efter emnetavlen:
> - `Euler` → numerisk ODE
> - `Heun` → mere præcis ODE
> - `panserformel` → indlæggelse + clearance
> - `AUC` → areal under kurve
> - `Markov` → stationær fordeling
> - `glm` → logistisk regression
> - `rpart` → decision tree
> - `randomForest` → Random Forest + OOB
> - `t.test` → t-test
> - `chisq.test` → chi²-test
> - `aov` → ANOVA
> - `lm` → lineær regression
> - `prcomp` → PCA
> - `fft` → Fourier
> - `factorial` / `choose` / `dbinom` → kombinatorik
> - `dplyr` → data manipulation
> - `pheatmap` → heatmap
> - `hclust` → dendrogram
> - `VennDiagram` → Venn-diagram

Se også: [[Eksamensguide – BMB547]] for metodevalg, [[Formelsamling – Matematik & Data Science]] for formler.
