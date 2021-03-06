# reading filtered data into R
fcaRmNAs121314_75.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\FilteredCA121314RmNA&nos_75%.csv", header = T)
attach(fcaRmNAs121314_75.csv)

# define variables
Y <- cbind(LCA_CASE_WAGE_RATE_FROM)
X <- cbind(LCA_CASE_EMPLOYER_CITY)


# correlation among varibales
cor(Y,X)

#Plotting data on a scatter diagram
plot(Y ~ X,data=fcaRmNAs121314_75.csv)

# simple linear regression
olsreg1 <- lm(Y ~ X)

olsreg1

plot(olsreg1)
termplot(olsreg1)
summary(olsreg1).LCA_CASE_WAGE_RATE_FROM

summary(olsreg1)
confint(olsreg1, level = 0.95)
anova(olsreg1)

#plotting regression line
abline(olsreg1)

# predicted values for dependent variable
Y1hat <- fitted (olsreg1)
summary(Y1hat)
plot(Y1hat ~ X)
