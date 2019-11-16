employee_data = data.frame(emp_id=c(1:5),
                           emp_name=c("Ashwin","Ravi Teja","Bharath","Durgesh","Dilesh"),
                           emp_salary=c(17.5,10.2,13.3,14.2,12.5),
                           doj = as.Date(c("2021-01-01","2021-01-02","2021-01-03","2021-01-04","2021-01-05")),
                           stringsAsFactors = FALSE
                           )

print(employee_data)  #prints the DataFrame

str(employee_data)    #gives the structure of the data

summary(employee_data)  #summary of the data is provided

extract1 = data.frame(employee_data$emp_name,employee_data$emp_salary)
print(extract1)

extract2  = employee_data[1:3,]
print(extract2)

extract3 = employee_data[c(2,4),c(2,4)]
print(extract3)

employee_data$company = c("amazon","infosys","amazon","google","Microsoft")
print(employee_data)

employee_newdata = data.frame(emp_id=c(6:8),
                              emp_name=c("Vinod","Rohit","Adithya"),
                              emp_salary=c(20.0,50.0,50.0),
                              doj = as.Date(c("2021-01-01","2021-01-02","2021-01-03")),
                              company = c("apple","apple","apple"),
                              stringsAsFactors = FALSE
                             )
print(employee_newdata)


employee_finaldata = rbind(employee_data,employee_newdata)
print(employee_finaldata)
