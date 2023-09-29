#1. Create a vector using : operator

#a. Sequence from -5 to 5. Write the R code and its output. 
#  Sequence from -5 until 5
new_seq <- seq(-5,5)
new_seq

#b. x <- 1:7. What will be the value of x
x <- 1:7
x

#2. Create a vector using seq() function
# Start 1 add .2 until it reaches 3
vector <-seq(1,3,by = 0.2)
vector

#3. A factory has a census of its workers. There are 50 workers in total. The following list shows their ages:
new_helo <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,18)
length(new_helo)

#a. Access 3rd element, what is the value
third_element <- new_helo[3]
third_element
#b. Access 2nd and 4th element, what are the values
seconfor <- new_helo[c(2,4)]
seconfor
#c. Access all but the 4th and 12th element is not included. Write the R script and its output.
seconfor <- new_helo[-c(4,12)]
seconfor

#4. Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
new_seq <- c("first"=3, "second"=0, "third"=9)
new_seq

#a. Print the results. Then access x[c("first", "third")].
# just like in number 4 I remove the second 
firthir <- new_seq[c("first", "third")]
firthir

#5
x <- seq(-3,2)
x
#a We change the value of the second sequence of x into 0
#b
x[2] <- 0
x

#6.*The following data shows the diesel fuel purchased by Mr. Cruz.
#a.Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts andits output.
Purchfuel <- data.frame(
 
   Month = c("Jan","Feb","March","Apr","May","June"),
  PricePerLiter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  Purchasequantity = c(25,30,40,50,10,45)
 
)
  Purchfuel
  View(Purchfuel)
    
#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘. Write the R scripts and its output.
PricePerLiter = c(52.50,57.25,60.00,65.00,74.25,54.00)
Purchasequantity = c(25,30,40,50,10,45)
weighted.mean(PricePerLiter, Purchasequantity)

#7.R has actually lots of built-in datasets. For example, the rivers data “gives the lengths(in miles) of 141 “major” rivers in North America, as compiled by the US GeologicalSurvey”.
#a.
Rivers <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
                sd(rivers), min(rivers), max(rivers))
#b.What are the results?
Rivers

#8. The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.
#a.Create vectors according to the above table. Write the R scripts and its output.
ForRank <- data.frame(
 
  PowerRanking = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25),
  Celebrity = c("Tom Cruise","Roling Stones","Oprah Winfey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Supranos","Dan Brown","Bruce Springteen","Donald Trump","Muhhamad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant"),
  Pay = c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31)
 
)
ForRank
View(ForRank)

#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90. Write the R scripts and its output.
ForRank$PowerRanking[ForRank$PowerRanking == "J.K Rowling"] <- 15
ForRank$Pay[ForRank$Pay == "J.K Rowling"] <- 90
ForRank
#c. Create an excel file from the table above and save it as csv file(PowerRanking). Import the csv file into the RStudio. What is the R script?
PowerRanking = read.csv('/cloud/project/PowerRanking.csv')
PowerRanking
AccessPowerRanking = PowerRanking[c(10:20),]
AccessPowerRanking

#d. Access the rows 10 to 20 and save it as Ranks.RData. Write the R script and its output.

#e. Its output is the 10-20 row information in the csv file


#9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna

#a. install.package("readxl")
library(readxl)
hotviena <- read_excel("hotels-vienna.xlsx")
hotviena
View(hotviena)
#b.How many dimensions does the dataset have? What is the R script? WHat is its output?
Dimenset <- dim(hotviena)
Dimenset
#c. Select columns country, neighbourhood, price, stars, accomodation_type, and ratings. Write the R script.
colnames(hotviena)
cnpsa <- hotviena[,c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
View(cnpsa)
#d. Save the data as **new.RData to your RStudio. Write the R script.
save(cnpsa, file="new.RData")
View(cnpsa)
#e. Display the first six rows and last six rows of the new.RData. What is the R script?
load("new.RData")
cnpsa

hedsix <- head(cnpsa)
talsix <- tail(cnpsa)
View(hedsix)
View(talsix)


#10.Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.

#a. Write the R scripts and its output.
VegeAte <- list("Potato","Carrot","BellPepper","Chili","Brocoli","Cauliflower","Brocolli","Garlic","Pea","Onion")
#b. Add 2 additional vegetables after the last vegetables in the list. What is the R script and its output?
VegeAte <- list("Potato","Carrot","BellPepper","Chili","Brocoli","Cauliflower","Brocolli","Garlic","Pea","Onion")
Additwo <- append(VegeAte,c("Corn","Kale"))
Additwo
#c. Add 4 additional vegetables after index 5. How many datapoints does your vegetable list have? What is the R script and its output?
VegeAte <- list("Potato","Carrot","BellPepper","Chili","Brocoli","Cauliflower","Brocolli","Garlic","Pea","Onion","Corn","Kale")
Additwo <- append(VegeAte,c("BokChoy","Artichoke","Corn","Kale"),after = 5)
Additwo
#d.Remove the vegetables in index 5, 10, and 15. Howmany vegetables were left? Write the codes and its output.
VegeAte <- list("Potato","Carrot","BellPepper","Chili","Brocoli","BokChoy","Artichoke","Corn","Kale","Cauliflower","Brocolli","Garlic","Pea","Onion","Corn","Kale")
RemoVeg <- VegeAte [c(-5, -10, -15)]
RemoVeg

