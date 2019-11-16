acs_data <- read.csv("/home/msc1/Documents/Academics/MY MSC-1 Rohit/SEM-2/R_Programming/acs_or.csv")
print(acs_data) #reading a csv data.

str(acs_data) #getting the structure of the data.

acs_data$income_husband #printing a variable individually.
  
acs_data[1:3] #printing the colums in the given range of the data set.

head(acs_data[c(1,3,5)])  #print the required columns.

acs_data[1:100,]  #printing 100 rows of all columns

rare_case = subset(acs_data , acs_data$age_husband < acs_data$age_wife) #taking the subset of the data by checking on a condition.
print(rare_case)
length(rare_case$age_husband) #printing the number of observations in the rare_case.

no_salary  = subset(acs_data , acs_data$income_wife < 0)
length(no_salary$income_husband)

max(acs_data$number_children)
max(acs_data$income_wife)

summary(acs_data$income_husband)
boxplot(acs_data$income_husband,acs_data$income_wife)
boxplot(acs_data$number_children)




