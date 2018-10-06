data <- read.csv("C:/Users/Kether/Documents/MATLAB/integralR.csv",header = F);
colnames(data) <- c("H_value",
                    "M_CostTime","M_value","M_Error",
                    "T_CostTime","T_value","T_Error",
                    "S_CostTime","S_value","S_Error") 

url <- "https://drive.google.com/uc?authuser=0&id=1jkIAfZ8J76MQYitD-0TWuQNW7I1k3B4z&export=download"




destfile <- "myfile.csv"
download.file(url, destfile, mode="wb")

data <- read.csv("https://drive.google.com/uc?authuser=0&id=1jkIAfZ8J76MQYitD-0TWuQNW7I1k3B4z&export=download",header = F)