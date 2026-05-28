# Varme ($Q$) – forklaring
*Varme beskriver energien, der overføres til eller fra et stof pga. temperaturændring.*

---

## 1. Begreber og enheder
Hold styr på om du bruger den *specifikke* varmekapacitet (pr. gram) eller den *totale* (for hele objektet).

| Symbol | Navn | Enhed | Forklaring |
| :--- | :--- | :--- | :--- |
| **$Q$** | Varme (Energi) | $\text{J}$ (Joule) | Den mængde energi der overføres. |
| **$m$** | Masse | $\text{g}$ | Mængden af stof der opvarmes/køles. |
| **$c$** | Specifik varmekap. | $\text{J/(g} \cdot ^\circ\text{C)}$ | Energi pr. gram pr. grad (f.eks. 4,18 for vand). |
| **$C$** | Varmekapacitet | $\text{J/}^\circ\text{C}$ | Energi pr. grad for et *helt* objekt ($C = m \cdot c$). |
| **$\Delta T$** | Temperaturændring | $^\circ\text{C}$ eller $\text{K}$ | Sluttemperatur minus starttemperatur. |

---

## 2. Grundformel
$$
Q = m \cdot c \cdot \Delta T
$$
Eller hvis du kender den totale varmekapacitet $C$:
$$
Q = C \cdot \Delta T
$$
---
## 3. Vigtigste punkter
1. **Varme er energi**: Tilført energi ($Q > 0$) medfører temperaturstigning. Afgivet energi ($Q < 0$) medfører temperaturfald.  
2. **Masse betyder mere energi**: Jo større masse, jo mere varme kræves for samme temperaturændring.  
3. **Specifik varmekapacitet ($c$)**: En stofspecifik konstant, der angiver, hvor meget energi pr. gram der skal til for at ændre temperaturen $1 \text{ } °C$.  
4. **Temperaturændring**: $\Delta T = T_{\text{slut}} - T_{\text{start}}$.  
---
## 4. Anvendelse
- Beregning af energi til opvarmning af stoffer  
- Laboratorieeksperimenter: kalorimetriske målinger  
- Ingeniørvidenskab: energibehov til opvarmning/køling
---
## 5. Eksempler

> [!example] Opvarmning af vand (Find $Q$)
> **Opgave: Beregn den tilførte varme ($Q$)**
> Hvor meget energi kræves der for at opvarme $250 \text{ g}$ vand fra $20^\circ\text{C}$ til $80^\circ\text{C}$?
> Givet: $c_{\text{vand}} = 4,18 \frac{\text{J}}{\text{g} \cdot ^\circ\text{C}}$.
> 
> 1. **Find $\Delta T$:** $\Delta T = 80^\circ\text{C} - 20^\circ\text{C} = 60^\circ\text{C}$
> 2. **Brug formlen $Q = m \cdot c \cdot \Delta T$:**
> $$ Q = 250 \text{ g} \cdot 4,18 \frac{\text{J}}{\text{g} \cdot ^\circ\text{C}} \cdot 60^\circ\text{C} = 62.700 \text{ J} = 62,7 \text{ kJ} $$

> [!example] Blanding af to væsker (Find slut-T)
> **Opgave: Find sluttemperaturen ved blanding af to væsker**
> $100 \text{ g}$ vand ved $20^\circ\text{C}$ blandes med $100 \text{ g}$ vand ved $80^\circ\text{C}$ i en isoleret beholder. Hvad bliver sluttemperaturen ($T_f$)?
> 
> Da masserne og varmekapaciteterne er ens, vil $T_f$ være gennemsnittet, men her er beregningen:
> $$ -Q_{\text{varm}} = Q_{\text{kold}} $$
> $$ -(m \cdot c \cdot (T_f - T_{\text{varm}})) = m \cdot c \cdot (T_f - T_{\text{kold}}) $$
> Da $m$ og $c$ er ens på begge sider:
> $$ -(T_f - 80^\circ\text{C}) = T_f - 20^\circ\text{C} $$
> $$ 80^\circ\text{C} - T_f = T_f - 20^\circ\text{C} \implies 2 T_f = 100^\circ\text{C} \implies T_f = 50^\circ\text{C} $$