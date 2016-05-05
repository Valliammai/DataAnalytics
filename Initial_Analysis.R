# reading initial data into R
h1b.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\H-1B_Disclosure_Data_FY15_Q4.csv", header = T)
str(h1b.csv)

# reading filtered data into R
ca.csv <- read.csv("C:\\Users\\nat17_000\\ValliSchoolWork\\Second Semester\\DA\\California_Certified_Data.csv", header = T)

#structuring the file
str(ca.csv)

# creating table for employer_city
EMPLOYER_CITY.freq <- table(ca.csv$EMPLOYER_CITY)

# reading about barplot
? barplot

# installing dplyr package
library(dplyr)
install.packages("dplyr")
help.search("graphs")

# plotting cities based on frequencies
barplot(EMPLOYER_CITY.freq[order(EMPLOYER_CITY.freq, decreasing = T)])

# plotting cities with frequency greater than 4000
barplot(EMPLOYER_CITY.freq)
barplot(subset(EMPLOYER_CITY.freq, EMPLOYER_CITY.freq>4000))


# selecting top 5 cities with high frequency for a particular job title
top5Cities <- select(ca.csv, EMPLOYER_CITY, JOB_TITLE) %>%
group_by(JOB_TITLE, EMPLOYER_CITY) %>%
summarize(frequency=length(EMPLOYER_CITY)) %>%
top_n(n = 5)

# selecting top 5 highest paid cities for a particular job title
Top5HighestPaidCitiesPerJobTitle <- 
  ca.csv %>%
  group_by(JOB_TITLE) %>%
  select(EMPLOYER_CITY, WAGE_RATE_OF_PAY) %>%
  top_n(5) %>%
  arrange(JOB_TITLE, desc(WAGE_RATE_OF_PAY))

# selecting top 5 highest paid companies for a particular job title
Top5HighestPaidCompaniesPerJobTitle <- 
  ca.csv %>%
  group_by(JOB_TITLE) %>%
  select(EMPLOYER_NAME, WAGE_RATE_OF_PAY) %>%
  top_n(5) %>%
  arrange(JOB_TITLE, desc(WAGE_RATE_OF_PAY))


