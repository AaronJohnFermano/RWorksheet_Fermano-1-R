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

#5. Create a sequence x from -3:2
extreto 

#a. Modify 2nd element and change it to 0;

 

