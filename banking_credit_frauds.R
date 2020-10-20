# Importing data
data = read.csv("C:\\Users\\mxp comps\\Desktop\\Educba\\Machine Learning Projects\\Banking and Credit Frauds\\creditloandata.csv")

summary(data)

str(data)

# The data set comprises of of the following variabe 
# Loan Amount
# Interest Rate
# Loan Grade
# Length in Employment
# Nature of Home ownership
# Annual income 
# Age

xtabs(~ loan_status-grade, data = data)

data$grade <- factor(data$grade)

# Spliting between test and training dataset
datasort <- sort(sample(nrow(data),nrow(data)*0.75)) # 75% of the data will be used for trainign and the rest will be used for testing 

train <- data[datasort,]
test <- data[-datasort,]

# Checking the number of rows for test and train datasets
nrow(train)
nrow(test)
