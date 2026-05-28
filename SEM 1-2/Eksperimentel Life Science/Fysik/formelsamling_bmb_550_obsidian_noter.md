 BMB550 – Fysik Formelsamling 

Denne note er struktureret som et **Obsidian-system** med foreslåede filnavne, tags og interne links. Hver sektion nedenfor er tænkt som **sin egen note** (du kan splitte dem med *Split note* i Obsidian).

---
**Alle Kapiteler i Bogen:**[[Introduction_to Eksperimentel Life Science_Biological_Physics_for_the_Health_and_Life_Sciences.pdf#page=7]]
## 🗂️ Indeks

- [[01 Mekanik – Kinematik og Newton]]
- [[02 Cirkelbevægelse]]
- [[03 Centrifugering]]
- [[04 Elektriske kræfter og felter]]
- [[05 Bølger og Optik]]
- [[06 Massespektrometri]]
- [[07 Harmoniske svingninger og Orbitrap]]

---

# 01 Mekanik – Kinematik og Newton
#mekanik #kinematik #newton #formler

**Kapitel i Bog:**[[Introduction_to Eksperimentel Life Science_Biological_Physics_for_the_Health_and_Life_Sciences.pdf#page=15]]
## Kinematik
*Kinematik beskriver **bevægelse uden at forklare hvorfor**. Fokus er på position, hastighed og acceleration som funktion af tiden – ikke på kræfterne bag bevægelsen.*

### Position

$$
x(t)
$$

Forklaring: [[Position – forklaring]]

### Middelhastighed

$$
\langle v \rangle = \frac{\Delta x}{\Delta t}
$$

Forklaring: [[Middelhastighed – forklaring]]


### Øjeblikshastighed

$$
v(t) = \frac{dx}{dt}
$$

Forklaring: [[Øjeblikshastighed – forklaring]]


### Middelacceleration

$$
\langle a \rangle = \frac{\Delta v}{\Delta t}
$$

Forklaring: [[Middelacceleration – forklaring]]

### Øjebliksacceleration

$$
a(t) = \frac{d^2x}{dt^2}
$$

Forklaring: [[Øjebliksacceleration – forklaring]]

## Bevægelse med konstant acceleration
*Her antages accelerationen at være konstant (fx tyngdekraft tæt på Jordens overflade). Det giver simple og meget brugte formler til at forbinde tid, hastighed og position.*

### Hastighed som funktion af tid
$$
v_f = v_i + at
$$
Forklaring: [[Konstant acceleration – hastighed]]

### Position som funktion af tid
$$
x_f = x_i + v_i t + \tfrac12 at^2
$$
Forklaring: [[Konstant acceleration – position]]

### Hastighed–afstand
$$
v_f^2 = v_i^2 + 2ad
$$
Forklaring: [[Konstant acceleration – hastighed og afstand]]


Se også [[02 Cirkelbevægelse]]

## Newtons 2. lov
*Newtons 2. lov forbinder **årsag og virkning** i mekanik: kræfter (årsag) skaber acceleration (virkning). Det er fundamentet for al klassisk mekanik.*

$$
\vec F_{tot} = m\vec a
$$
Forklaring: [[Newtons 2. lov – forklaring]]

Komponentvis:

$$
F_x = ma_x
$$
Forklaring: [[Newtons 2. lov – x-komponent]]

$$
F_y = ma_y
$$
Forklaring: [[Newtons 2. lov – y-komponent]]

---

# 02 Cirkelbevægelse

**Kapitel i Bog:**[[Introduction_to Eksperimentel Life Science_Biological_Physics_for_the_Health_and_Life_Sciences.pdf#page=43]]

*Cirkelbevægelse beskriver bevægelse, hvor et objekt hele tiden ændrer retning, men ikke nødvendigvis fart. Selvom farten er konstant, er der altid en acceleration mod centrum.*
#mekanik #cirkelbevægelse #centripetal

$$
s = vt
$$
Forklaring: [[Strækning ved konstant fart – forklaring]]

$$
\theta = \omega t
$$
Forklaring: [[Vinkel som funktion af tid – forklaring]]

$$
\omega = \tfrac{v}{r}
$$
Forklaring: [[Vinkelhastighed – forklaring]]

### Centripetalacceleration
$$
a_c = \frac{v^2}{r} = r\omega^2
$$
Forklaring: [[Centripetalacceleration – forklaring]]

### Centripetalkraft
$$
F_c = \frac{mv^2}{r}
$$
Forklaring: [[Centripetalkraft – forklaring]]

### Centrifugalkraft (roterende system)
$$
F_g = \frac{mv^2}{r}
$$
Forklaring: [[Centrifugalkraft – forklaring]]

->Bruges direkte i [[03 Centrifugering]]

---

# 03 Centrifugering

**Kapitel i Bog:**[[Introduction_to Eksperimentel Life Science_Biological_Physics_for_the_Health_and_Life_Sciences.pdf#page=45]]

*Centrifugering udnytter cirkelbevægelse til at separere partikler i en væske. Tungere eller tættere partikler bevæger sig hurtigere udad og bundfældes.*
#centrifugering #biofysik #formler

### Kræfter på partikel

$$
F_g = \rho V \omega^2 r
$$
Forklaring: [[Centrifugalkraft på partikel – forklaring]]

$$
B = -\rho_0 V \omega^2 r
$$
Forklaring: [[Opdrift i centrifuge – forklaring]]

$$
F_D = -6\pi\eta R v
$$
Forklaring: [[Stokes drag – forklaring]]

### Sedimentationshastighed
$$
v_T = \frac{2}{9}\frac{R^2 \omega^2 r}{\eta}(\rho-\rho_0)
$$
Forklaring: [[Sedimentationshastighed – forklaring]]

->Relateret til [[02 Cirkelbevægelse]]

---

# 04 Elektriske kræfter og felter

**Kapitel i Bog:**[[Introduction_to Eksperimentel Life Science_Biological_Physics_for_the_Health_and_Life_Sciences.pdf#page=313]]


*Elektriske kræfter opstår mellem ladede partikler. Elektriske felter bruges til at beskrive, hvordan en ladning påvirker rummet omkring sig.*
#elektricitet #felter #coulomb

### Coulombs lov
$$
\vec F = k\frac{q_1 q_2}{r^2}\hat r
$$
Forklaring: [[Coulombs lov – forklaring]]

### Elektrisk felt
$$
\vec F = q\vec E
$$
Forklaring: [[Elektrisk felt – forklaring]]

->Anvendes i [[06 Massespektrometri]]

---

# 05 Bølger og Optik

**Kapitel i Bog:** [[Introduction_to Eksperimentel Life Science_Biological_Physics_for_the_Health_and_Life_Sciences.pdf#page=373]]

*Dette område beskriver periodiske fænomener som lyd og lys samt hvordan lys bevæger sig gennem materialer og linser.*
#optik #bølger #lys

$$
v = f\lambda
$$
- $$v = \dfrac{\lambda}{T}$$
- $$v = \dfrac{\omega}{k}$$
Forklaring: [[Bølgehastighed – forklaring]]

$$
T = \tfrac{1}{f}
$$
Forklaring: [[Periode og frekvens – forklaring]]

### Harmonisk bølge
$$
y = A\cos(kx-\omega t)
$$ 
Forklaring: [[Harmonisk bølge – forklaring]]

## Brydning

$$
n = \tfrac{c}{v}
$$
Forklaring: [[Brydningsindeks – forklaring]]

$$
n_1\sin\theta_1 = n_2\sin\theta_2
$$
Forklaring: [[Snells lov – forklaring]]

$$
\theta_c = \sin^{-1}\left(\tfrac{n_2}{n_1}\right)
$$
Forklaring: [[Totalrefleksion – forklaring]]

## Linser

$$
\tfrac{1}{d_o}+\tfrac{1}{d_i}=\tfrac{1}{f}
$$
Forklaring: [[Linseformlen – forklaring]]

$$
m=-\tfrac{d_i}{d_o}
$$
Forklaring: [[Forstørrelse – forklaring]]


### Brillemager
$$
\tfrac{1}{f}=(n-1)(\tfrac{1}{r_1}+\tfrac{1}{r_2})
$$
Forklaring: [[Brillemagerformlen – forklaring]]

### Lambert–Beer
$$
A=\varepsilon Lc
$$
Forklaring: [[Lambert–Beer – forklaring]]

---

# 06 Massespektrometri
*Massespektrometri bruges til at bestemme partiklens masse-over-ladning-forhold ved hjælp af elektriske og magnetiske felter.*
#massespektrometri #magnetfelter

### Magnetisk kraft
$$
\vec F_B = q\vec v \times \vec B
$$
Forklaring: [[Magnetisk kraft – forklaring]]

### Radius
$$
R = \tfrac{mv}{qB}
$$
Forklaring: [[Radius i magnetfelt – forklaring]]

## Bainbridge

$$
v = \tfrac{E}{B}
$$
Forklaring: [[Hastighedsselektor – forklaring]]

$$
\tfrac{m}{q} = \tfrac{B'BR}{E}
$$
Forklaring: [[Bainbridge-massespektrometer – forklaring]]

->Se også [[04 Elektriske kræfter og felter]]

---

# 07 Harmoniske svingninger og Orbitrap
*Harmoniske svingninger er gentagne bevægelser omkring en ligevægt. I Orbitrap-massespektrometri bruges svingningsfrekvensen direkte til at bestemme masse/ladning.*
#svingninger #orbitrap

### Fjeder
$$
f = \tfrac{1}{2\pi}\sqrt{\tfrac{k}{m}}
$$
Forklaring: [[Fjederoscillator – forklaring]]

### Orbitrap
$$
f_{OT}=\tfrac{1}{2\pi}\sqrt{\tfrac{q}{m}k_{OT}}
$$
Forklaring: [[Orbitrap-frekvens – forklaring]]

->Bruges til bestemmelse af $$ m/q $$
