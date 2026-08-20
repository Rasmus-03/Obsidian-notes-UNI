```r  
# Set seed for random numbers to obtain the same results
set.seed(10)
# Create a vector of patient IDs
patient_id <- c("P1", "P2", "P3", "P4", "P5", "P6", "P7", "P8", "P9", "P10")
# Create a vector of blood pressure before treatment
bp_before <- c(140, 150, 160, 145, 155, 165, 135, 125, 130, 120)
# Create a vector of blood pressure after treatment
bp_after <- c(130, 140, 150, 135, 145, 155, 125, 115, 120, 110) + rnorm(10)
# Create a data frame with patient ID and blood pressure
bp_data <- data.frame(patient_id = patient_id,
bp_before = bp_before,
bp_after = bp_after)

m_bp_before <- mean(bp_before)
m_bp_after <- mean(bp_after)
STD_bp_before<- sd(bp_before)
STD_bp_after <- sd(bp_after)

m_bp_before
m_bp_after
STD_bp_before
STD_bp_after

bp_data$bp_change <- (bp_before - bp_after) 
bp_data$bp_change

t.test(bp_before, bp_after, paired = T)

plot(bp_before, bp_after, xlab = "x akse", ylab = "y akse")

