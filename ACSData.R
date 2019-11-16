#Exploratory Data Analysis
ACS_data <- read.csv("acs_or.csv")
#http://stat511.cwick.co.nz/homeworks/acs_or.csv
print(ACS_data)
str(ACS_data)#to know the structure of the data
ACS_data$age_husband   #Access the  variable age_husband
ACS_data[1:2]    #Access data in columns 1 and 2
ACS_data[1:2,]#Access data in rows 1 ans 2
#To retrive the data in which
#the age_husband is greater than lable age_wife 
greater = subset(ACS_data , age_husband > age_wife) 
head(greater)
no_salary=subset(ACS_data, income_wife<=0)
head(no_salary)
summary(ACS_data$income_husband)
boxplot(ACS_data$age_husband)
mean(ACS_data$age_husband)  #For calculating mean of column
median(ACS_data$age_husband) #For calculating median of column 
quantile(ACS_data$age_wife)  #For calculating the Quantile
var(ACS_data$age_wife) #For measuring the variance
sd(ACS_data$age_wife)  #For calculating the Standard Deviance 
summary(ACS_data)
sub = ACS_data[1:100, ] #First 100 row of ACS_data
plot(x = sub$age_husband , y = sub$age_wife, type = 'p')
hist(ACS_data$number_children) # To construct histogram of any variable
get_table <- table(ACS_data$bedrooms)# Get a distribution of a variable
barplot(get_table, main="Bedrooms Distribution", xlab="Bedroom Count") 
get_table_children<-table(ACS_data$number_children)
barplot(get_table_children, main="Distribution of children", xlab="Children Count") 
