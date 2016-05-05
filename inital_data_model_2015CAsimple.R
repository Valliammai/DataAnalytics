# reading filtered data into R
ca.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\California_Certified_Data.csv", header = T)
attach(ca.csv)

# define variables
Y <- cbind(WAGE_RATE_OF_PAY)
X <- cbind(EMPLOYER_CITY)


# correlation among varibales
cor(Y,X)

#Plotting data on a scatter diagram
plot(Y ~ X,data=ca.csv)

# simple linear regression
olsreg1 <- lm(Y ~ X)

olsreg1

plot(olsreg1)
termplot(olsreg1)
summary(olsreg1).WAGE_RATE_OF_PAY

summary(olsreg1)
confint(olsreg1, level = 0.95)
anova(olsreg1)

#plotting regression line
abline(olsreg1)

# predicted values for dependent variable
Y1hat <- fitted (olsreg1)
summary(Y1hat)
plot(Y1hat ~ X)
