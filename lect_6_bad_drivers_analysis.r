b_drivers_data <- read.csv("/home/msc1/Documents/Academics/MY MSC-1 Rohit/SEM-2/R_Programming/bad_drivers.csv")
print(b_drivers_data)  #reading a csv data.

str(b_drivers_data) #getting the structure of the data.

b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles #printing a variable individually.

max_colls = max(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles)
highest_fatal_coll_per_billion_miles = subset(b_drivers_data , Number.of.drivers.involved.in.fatal.collisions.per.billion.miles == max_colls  ) #taking the subset of the data by checking on a condition.
highest_fatal_coll_per_billion_miles[0:2]

min_colls = min(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles)
least_fatal_coll_per_billion_miles = subset(b_drivers_data , Number.of.drivers.involved.in.fatal.collisions.per.billion.miles == min_colls  ) #taking the subset of the data by checking on a condition.
least_fatal_coll_per_billion_miles[0:2]

summary(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles)

mean(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles)  #For calculating mean of column
median(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles) #For calculating median of column 
quantile(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles)  #For calculating the Quantile
var(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles) #For measuring the variance
sd(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles)  #For calculating the Standard Deviance 


b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Speeding #printing a variable individually.
b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Alcohol.Impaired #printing a variable individually.
b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Not.Distracted #printing a variable individually.
b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Had.Not.Been.Involved.In.Any.Previous.Accidents #printing a variable individually.
b_drivers_data$Car.Insurance.Premiums.... #printing a variable individually.
b_drivers_data$Losses.incurred.by.insurance.companies.for.collisions.per.insured.driver.... #printing a variable individually.


boxplot(b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles)
hist(b_drivers_data$Car.Insurance.Premiums...., freq = 3,breaks = 10, col = 5) # To construct histogram of any variable
plot(x = b_drivers_data$Number.of.drivers.involved.in.fatal.collisions.per.billion.miles , y = b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Speeding, type = 'p')

hist(b_drivers_data$Losses.incurred.by.insurance.companies.for.collisions.per.insured.driver...., freq = 3,breaks = 10, col = 5) # To construct histogram of any variable

boxplot(b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Speeding,b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Alcohol.Impaired,b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Not.Distracted,b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Had.Not.Been.Involved.In.Any.Previous.Accidents,names=c("% collisions speeding","% collisions Alcohol.Impaired","% collisions Not Distracted","% collisions accident before"),
        col=c("yellow","orange","red","green"))
median(b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Not.Distracted) #For calculating median of column 
median(b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Had.Not.Been.Involved.In.Any.Previous.Accidents) #For calculating median of column 

get_table <- table(b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Alcohol.Impaired)# Get a distribution of a variable
print(get_table)


barplot(get_table, main="% of drivers in collisions Alcohol-Impaired", xlab="% of drivers",ylab="frequency") 
alco = subset(b_drivers_data,b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Alcohol.Impaired <= 24)
alco[c(1,4)]
alco = subset(b_drivers_data,b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Alcohol.Impaired == 29)
alco[c(1,4)]
alco = subset(b_drivers_data,b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Alcohol.Impaired >= 35)
alco[c(1,4)]
pie(get_table,x = get_table,edges = 5,main = "frequency of countries Alcohol-Impaired")


nor = rnorm(get_table, mean=0, sd=1)
hist(nor,prob = TRUE)
lines(density(nor),lty=1,col='red')

get_table1 <- table(b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Speeding)# Get a distribution of a variable
get_table1
summary(b_drivers_data$Percentage.Of.Drivers.Involved.In.Fatal.Collisions.Who.Were.Speeding)
barplot(get_table1, main="% of drivers in collisions speeding", xlab="% of drivers",ylab="frequency") 


per_driver_loss_company = subset(b_drivers_data,b_drivers_data$Losses.incurred.by.insurance.companies.for.collisions.per.insured.driver.... > 150)
per_driver_loss_company[1]
