# reading filtered data into R
ca.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\California_Certified_Data.csv", header = T)
attach(ca.csv)

# Produce plots for some explanatory variables
plot(WAGE_RATE_OF_PAY~EMPLOYER_CITY,ca.csv)
plot(WAGE_RATE_OF_PAY~JOB_TITLE,ca.csv)

coplot(WAGE_RATE_OF_PAY~EMPLOYER_CITY|JOB_TITLE,panel=panel.smooth,ca.csv)

model2=lm(Ozone~Solar.R*Wind,airquality)
plot(model2)

summary(model2)
termplot(model2)

summary(airquality$Solar.R)

# Min. 1st Qu. Median Mean 3rd Qu. Max. NA's
# 7.0 115.8 205.0 185.9 258.8 334.0 7

summary(airquality$Wind)

Min. 1st Qu. Median Mean 3rd Qu. Max.
1.700 7.400 9.700 9.958 11.500 20.700

Solar1=mean(airquality$Solar.R,na.rm=T)
Solar2=100
Solar3=300

predict(model2,data.frame(Solar.R=100,Wind=10))

p1=predict(model2,data.frame(Solar.R=Solar1,Wind=1:20))
p2=predict(model2,data.frame(Solar.R=Solar2,Wind=1:20))
p3=predict(model2,data.frame(Solar.R=Solar3,Wind=1:20))

plot(Ozone~Wind,airquality)
lines(1:20,p1)
lines(1:20,p2)
lines(1:20,p3)