#################Fordøjelsen######################


#Først laver vi data.frame:

x <- data.frame(Time_hours= 0:20,
                pH=c(7.3,	4.6, 3.4,	3.1,	7.8,	6.8,	6.9,
                     6.8,	6.1,	6.5,	6.5,	6.3,	6.3,	6.2,	6.3,	6.1,	6,	5.9,
                     5.8,	6.1,	6.2))

# Så ser vi, hvordan data.frame ser ud:
View(x)

#Pakkerne, vi skal bruge, installeres og hentes:
install.packages("ggplot2")
library(ggplot2)

#Så bruger vi ggplot til at plotte data:

ggplot(data=x, aes(x=Time_hours, y=pH)) +
  geom_line()+
  geom_point(aes(size = pH, col = Time_hours))


# data = x er vores data.frame
# Med aes() sætter vi hhv. x og y som Time_hours og pH
#geom_line angiver, at vi vil vise linjer.
#geom_point angiver, at vi også vil vise punkter
# Med aes() i geom_point angiver vi, at størrelsen på punkterne skal angives som funktion af pH, 
#mens farven skal angives som funktion af Time_hours

# I dette tilfælde viser vi ikke mere information med dette, men hvis vi nu havde flere data (fx hvor langt i tarmen maden var)
# kunne man tilføje dette.