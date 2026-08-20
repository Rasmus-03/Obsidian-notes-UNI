# Eksamen – Sheet (Data Science)
---

##  Python vs R

| Emne | Python | R |
|------|--------|---|
| **Dataframes** | `pandas.DataFrame` | `data.frame` |
| **Arrays** | `numpy.array` | `vector`, `matrix` |
| **Kategoriske** | `pd.Categorical` | `factor` |
| **Statistik** | `scipy.stats` | Indbygget |
| **Plot** | `matplotlib`, `seaborn` | `ggplot2`, `base R` |

---

##  Data Distributioner

| Fordeling | Nøgleord | Form |
|-----------|----------|------|
| **Normal** | μ, σ, klokkeform | Symmetrisk |
| **Binomial** | n, p, success/failure | Diskret |
| **Poisson** | λ, sjældne hændelser | Tælledata |
| **Uniform** | a, b, lige sandsynlighed | Rektangelform |

---

## Descriptive Statistics

| Mål | Formel | Kommentar |
|-----|--------|-----------|
| **Mean** | μ = Σx/n | Følsom overfor outliers |
| **Median** | Midterste værdi | Robust overfor outliers |
| **Mode** | Hyppigste værdi | For kategoriske data |
| **Variance** | σ² = Σ(x-μ)²/n | Spredning² |
| **SD** | σ = √σ² | Spredning i samme enhed |
| **IQR** | Q3 - Q1 | Robust spredning |
| **Range** | Max - Min | Følsom |

---

## Hypothesis Testing

| Test | Hvornår? | H0 forkastes hvis |
|-----|----------|-------------------|
| **t-test** | Sammenlign 2 grupper, normalfordelt | p < 0.05 |
| **Chi²-test** | Kategoriske variable, forventet vs observeret | p < 0.05 |
| **ANOVA** | Sammenlign ≥3 grupper | p < 0.05 |
| **Wilcoxon** | Ikke-parametrisk, 2 grupper | p < 0.05 |

---

##  R Funktioner til Eksamen

```r
# Data frames
df <- read.csv("file.csv")
head(df, 10)
str(df)
summary(df)

# Factors
df$col <- factor(df$col, levels = c("a", "b"))

# Statistik
mean(df$col)           # Gennemsnit
median(df$col)         # Median
sd(df$col)             # Standardafvigelse
quantile(df$col)       # Kvartiler
IQR(df$col)            # Interquartile range

# Test
t.test(df$a, df$b)     # t-test
chisq.test(table(df$a, df$b))  # Chi²-test
aov(y ~ x, data = df)  # ANOVA

# Plot
boxplot(df$col)        # Boxplot
hist(df$col)           # Histogram
plot(df$x, df$y)       # Scatter plot
```

---

## Chapter 1: Intro to Data Science

| Begreb | Forklaring |
|--------|------------|
| **EDA** | Exploratory Data Analysis – udforsk data før analyse |
| **Tidy Data** | Hver række = observation, hver kolonne = variabel |
| **Missing Data** | NA, NaN – hvordan håndteres? `na.omit()`, `dropna()` |
| **Outliers** | Ekstreme værdier – kan påvirke mean, men ikke median |
| **Correlation ≠ Causation** | Sammenhæng betyder ikke årsagssammenhæng |

---



---


