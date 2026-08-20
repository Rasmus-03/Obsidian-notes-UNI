> [!tip] For en 5-årig:
> Ilt og nyrer handler om, hvordan kroppen får luft og skiller sig af med affald. Tænk på din krop som en motorcykel: den skal have frisk luft ind for at køre, og den sender røg ud. Dine lunger henter ilt fra luften, og dine nyrer filtrerer dit blod, så skidt kommer ud som tis.

> [!question]- Opgave 1
> **Spørgsmål:** 1
> a)
> ```r# Installation (bemærk ggplot2)
install.packages("grid")
install.packages("gridExtra")
install.packages("ggplot2")
> 
> library(grid)
library(gridExtra)
library(ggplot2)
> 
x <- data.frame(PP_mmHg = c(160, 160), Conc = c(210,7), 
O2 = c("Luft", "Vand") )# Plot for koncentration med titel
conc <- ggplot(x, aes(x = O2, y = Conc)) + 
  geom_col() +
> 
  labs(title = "Iltkoncentration i luft vs. vand")# Plot for partialtryk med titel
pp <- ggplot(x, aes(x = O2, y = PP_mmHg)) + 
#Vis dem begge
>
grid.arrange(conc, pp, nrow = 1)
>```
 !
 > 
 b) **Redegør for hvorfor gæller skal have mere effiktivt oxygen optag end lunger, herunder hvilke mekanismer der øger diffusion
   >
det vil jeg mene er fordi lungerne i menesker går fra lyft til blod, med samme patialtryk men forskellige koncentration, Luft har højere koncentration af o2 eng vand, derfor er koncentratioen højere i luft og blodet og luften prøver at danne end ligevægt, så blodet tager ildten, derved kan mængden af oxygen blive højere i blodet. i gæller er det fra vand til blod og man kan ikke hæve patial trykket på oxygen i vand så derfor er koncentrationen af oxygen ikke så høj. 

> [!question]- Opgave 2
> **Spørgsmål:** a: redegør for opbygningen af de humane lunger
> 
> Spørgsmålet er hvor mand starter fra, idltoptagelsen starter ved #nasalcavitys eller #pharynx og bevæger sig ned gennem #larnyx og ind i lungeorganet og først igennem den støre åbning #brunchus og længere ind i #brunchioles for til sidst at havne i #alviolerne som er her blodbanen ligger op ad, det er også her vi skal lave diffusion mellem luft og blod
> !
> [[Biology A Global Approach, Global Edition (2020,12th Edition).pdf#page=1019]]
> 
> 
>  **Spørgsmål:** b: diskuter #lungesufaktoren eller #surfactant ´s rolle 
> lungesufaktoren som er små phosphorlipider og proteiner som har til opgave at sænke overfalde spændingen i lingens #alvioler hvilket forhindre lunge kolaps 
> 
> 
> 

> [!question]- Opgave 3
> **Spørgsmål:** a: Angiv det humane resprationspigment og diskuter, hvordan det adskiller sig molekylært fra andre typer respiration 
> 
> det humane respirationspigment er hemoglobin 
> der findes andre i andre dyr som Hæmocyanin som er af kobber i stedet for jern
> 
> **Spørgsmål:** b: Diskuter hvilken effekt koporativ binding og borh shift har på vores evne til at optage ilt 
> 
> #Koporativ_binding er hvor når en ildt molekyle bundet til hemoglobin gør det nemmere for de efterfølgende ild molekyler at binde sig, som en sigmoid kurve. 
> #Bohr-effekten beskriver hvordan øget kuldioxid, of og lav pH, ændre hemoglobin struktur så det for lavere affinitet
> 
> 

 [!question]- Opgave 4
> **Spørgsmål:** a: redegør for nyerens opbygning og overordnede funktion, angiv følgende temaer på figuren ovenfor Renal aterie, renal-vene, nyrebarken, nyremaven, kortikal nefron, juxtamedullærnefron 
> 
> in humans the excretory system consists of the pair of kidneys and the bladder
> the kidney excist on of an outer #renal_cortex and the inner #renal_medulla and both regions get blood supplly from the #renal_arthery 
> 
> [[Biology A Global Approach, Global Edition (2020,12th Edition).pdf#page=1039]]
> 
> 
> **Spørgsmål:** b: