*Grundlæggende R-programmering til molekylær data science — datastrukturer, dplyr og visualisering.*

> [!tip] For en 5-årig: At snakke med computeren om tal
> Forestil dig at R er et sprog du kan bruge til at fortælle computeren: "Find gennemsnittet af alle disse tal" eller "Tegn en graf over de her målinger".
>
> Det er som at give instruktioner til en meget lydig (men uintelligent) assistent — du skal være helt præcis med hvad du mener.
>
> **Datastrukturer** er som forskellige kasser til at opbevare ting i:
> - **Vector:** En snor med perler (alle samme type)
> - **Data frame:** Et Excel-ark (kolonner med forskellige typer)
> - **List:** En skuffe med blandet indhold

---

## 01 Datastrukturer

### Vector — den grundlæggende byggesten

```r
# Numerisk vector
c(1, 2, 3, 4, 5)

# Character vector
c("hund", "kat", "mus")

# Sequence
1:10           # 1 2 3 4 5 6 7 8 9 10
seq(0, 100, by = 10)  # 0 10 20 ... 100

# Repetition
rep(c("A", "B"), each = 3)  # "A" "A" "A" "B" "B" "B"
```

### Data frame — Excel-arket

```r
# Opret data frame
data <- data.frame(
  navn = c("Mus1", "Mus2", "Mus3"),
  vaegt = c(22, 25, 19),
  behandling = c("kontrol", "drug", "kontrol")
)

# Se data
head(data)
View(data)

# Tilgå en kolonne
data$vaegt
data[, "vaegt"]
data[[2]]
```

### List — blandet indhold

```r
resultat <- list(
  model = lm(y ~ x, data = data),
  p_value = 0.003,
  data = data
)

resultat$model
resultat[[1]]
```

### Factor — kategoriske variable

```r
data$behandling <- factor(data$behandling,
                          levels = c("kontrol", "drug"))
```

---

## 02 dplyr — datamanipulation

`dplyr` er det vigtigste R-pakke til at arbejde med data frames.

```r
library(dplyr)
```

### filter — vælg rækker

```r
# Kun kontrol-mus
filter(data, behandling == "kontrol")

# Mus over 20 g OG behandlet
filter(data, vaegt > 20, behandling == "drug")
```

### select — vælg kolonner

```r
# Kun navn og vægt
select(data, navn, vaegt)

# Fjern en kolonne
select(data, -behandling)
```

### mutate — opret nye kolonner

```r
# Opret log2-transformeret vægt
mutate(data, vaegt_log2 = log2(vaegt))
```

### group_by + summarise — gruppering

```r
# Gennemsnit pr. behandlingsgruppe
data %>%
  group_by(behandling) %>%
  summarise(
    gennemsnit = mean(vaegt),
    sd = sd(vaegt),
    n = n()
  )
```

### arrange — sortering

```r
# Tungeste først
arrange(data, desc(vaegt))
```

### Pipe-operatoren `%>%`

```r
# Kæd flere operationer sammen
data %>%
  filter(behandling == "drug") %>%
  select(navn, vaegt) %>%
  arrange(desc(vaegt))
```

Læs: "tag data → filtrér → vælg → sortér"

> [!question]- Find tungeste kontrol-mus
> Find vægten af den tungeste mus i kontrolgruppen.
>
> ```r
> data %>%
>   filter(behandling == "kontrol") %>%
>   summarise(max_vaegt = max(vaegt))
> ```
>
> Eller hele rækken:
> ```r
> data %>%
>   filter(behandling == "kontrol") %>%
>   arrange(desc(vaegt)) %>%
>   slice(1)
> ```

---

## 03 Læs og skriv data

```r
# Læs CSV
data <- read.csv("file.csv")
data <- read.csv2("file.csv")  # semikolon-separeret (danske filer)

# Læs Excel (kræver readxl)
library(readxl)
data <- read_excel("file.xlsx", sheet = 1)

# Gem CSV
write.csv(data, "output.csv", row.names = FALSE)
```

---

## 04 Visualisering (base R)

```r
# Scatter plot
plot(x = data$alder, y = data$vaegt,
     main = "Alder vs. vægt",
     xlab = "Alder (uger)", ylab = "Vægt (g)")

# Tilføj regressionslinje
abline(lm(vaegt ~ alder, data = data), col = "red")

# Histogram
hist(data$vaegt, breaks = 10,
     main = "Fordeling af vægt", xlab = "Vægt (g)")

# Boxplot
boxplot(vaegt ~ behandling, data = data,
        main = "Vægt pr. behandling", ylab = "Vægt (g)")
```

### ggplot2

```r
library(ggplot2)

ggplot(data, aes(x = alder, y = vaegt, color = behandling)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "Alder vs. vægt",
       x = "Alder (uger)", y = "Vægt (g)") +
  theme_minimal()
```

---

## 05 Funktioner

```r
# Brugerdefineret funktion
mean_sd <- function(x) {
  m <- mean(x, na.rm = TRUE)
  s <- sd(x, na.rm = TRUE)
  return(c(mean = m, sd = s))
}

mean_sd(data$vaegt)
```

---

## 06 Overfitting/underfitting i R?

Det handler ikke om R-sproget, men om din model. R giver dig bare værktøjerne. Overfitting opstår når du tilføjer for mange variable eller for komplekse modeller (se [[Lineær regression]] og [[Decision Trees & Random Forests]]).

Se også: [[Statistik]] for t-test, ANOVA og chi² i R, [[Lineær regression]] for `lm()`.
