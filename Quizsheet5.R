#reading sheet 2 and seperating the variable gender into 2 excel documents for 
#male and female

library(readxl)
library(openxlsx)

heart_rate_data <- read_excel("Dataset_Heart Rate.xlsx", sheet = 4)
heart_rate_data <- na.omit(heart_rate_data)

colnames(heart_rate_data) <- c("A", "B", "C")

# Subset the data frame to only include male participants
runner_participants <- heart_rate_data[heart_rate_data$A == "Female", heart_rate_data$B == "Control"]

# Create a new data frame with only the male participants and their heart rates
df_fcont <- data.frame(C = runner_participants$A, D = runner_participants$B)

# Subset the original data frame to only include female participants
control_participants <- heart_rate_data[heart_rate_data$A == "Control",]

write.xlsx(df_runner, "Runner Participants.xlsx")
write.xlsx(control_participants, "Control Participants.xlsx")
