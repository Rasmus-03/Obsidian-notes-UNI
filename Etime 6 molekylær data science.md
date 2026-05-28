![[image.png]]
## Opgave 1

$\frac{dS_{1}}{dt}=v_{1}-v_{2}-v_{3}=(k_{1}\cdot(S_{_{0}}-S_{1}))-(k_{2}\cdot S_{1})-(k\cdot S_{1})$

$\frac{dS_{2}}{dt}=(v_{1}+v_{4})-v_{5}=((k_{1}\cdot(S_{_{0}}-S_{1}))+k_{4}\cdot S_{3})-k_{5}\cdot S_{2}$

$\frac{dS_{3}}{dt}=v_{3}-v_{4}=(k\cdot S_{1})-(k_{4}\cdot S_{3})$


## Opgave 2
Solve the system using a range of Runge kutta method in R. the intitial amount of all the substances apart from $S_0$ is zero as parameters use 

```r   
 K1 <- 1.1
K2 <- 0.1
K3 <- 0.1
K4 <- 0.3
K5 <- 2.0
v0 <- 0.01

trin = function(S_init, delta_t){
  S_after = array(NA, c(1,4))
  #S1
  S_after[1] <- S_init[1] + (v0 - (K1 + K2 + K3) * S_init[1]) * delta_t
  #S2
  S_after[2] <- S_init[2] + (K2 * S_init[1] + K4 * S_init[3] - K5 * S_init[2]) * delta_t
                              #S3
  S_after[3] <- S_init[3] + (K3 * S_init[1] - K4 * S_init[3]) * delta_t
                              #S4
  S_after[4] <- S_init[4] + (K5 * S_init[2]) * delta_t
                              
      
     return(S_after)
}

#Time
t <- seq(0,100,by = 0.1)
#Data storage 
S <- matrix(NA, length(t),ncol = 4)
#intsæt t = 0 data 
S[1,] = c(0,0,0,0)
#Run RK
for (i in 2: length(t)){
  S[i,] = trin(S[i-1,],0.1)
} 
#Plot resultat
P <-(t,S[,1], type = "l",col = "green", xlab = "Tid [s]", ylab = "koncentration") +
lines(t,S[,2], type = "l",col = "red") +
lines(t,S[,3], type = "l",col = "blue") +
lines(t,S[,4], type = "l",col = "pink")

plot(P)



```
