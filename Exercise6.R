#exercise 06, biocomputing 11-7
#Reilley Knott

#Part 1
#create R code that mimics the head function in linux

#prompt the user for the file name and number of lines to be output
inputfile<-readline(prompt="Enter file: ")
linenumber<-readline(prompt="Enter number of lines to be output: ")

#put the desired file into a data structure using the input file variable from above
wagecsv=read.csv(file=inputfile,header=TRUE,stringsAsFactors=FALSE)

#print the desired rows utilitzing indexing and the linenumber variable from above
print(wagecsv[1:linenumber,])


#Part 2
#load R code and do various things:

#load the csv file into a data structure
iriscsv=read.csv(file="iris.csv",header=TRUE,stringsAsFactors=FALSE)

#1)
#make the number of lines/number of columns its own variable
irislinerow<-dim(iriscsv)
#isolate the number of lines/number of columns
irislinenumber<-irislinerow[1]
iriscolumnnumber<-irislinerow[2]
#make a new variable that will refer to the second to last row/column (by indexing)
irislinenumberlow<-irislinenumber-1
iriscolumnnumberlow<-iriscolumnnumber-1
#using indexing, print the final two rows of the final 2 columns
print(iriscsv[irislinenumberlow:irislinenumber,iriscolumnnumberlow:iriscolumnnumber])

#2)
#Find the number of observations of eash species in the data

#make a data structure that refers to each species that contains the number of lines containing that species
virginica=iriscsv[iriscsv[,5]=="virginica",]
setosa=iriscsv[iriscsv[,5]=="setosa",]
versicolor=iriscsv[iriscsv[,5]=="versicolor",]

#get the dimensions of each species table
virginicadimensions<-dim(virginica)
setosadimensions<-dim(setosa)
versicolordimensions<-dim(versicolor)

#isolate the number of rows for each species
virginicacount<-virginicadimensions[1]
setosacount<-setosadimensions[1]
versicolorcount<-versicolordimensions[1]

#print each species name, followed by its count in the iris.csv file
print("Virginica count: " )
print(virginicacount)

print("Setosa count: ")
print(setosacount)

print("Versicolor count: ")
print(versicolorcount)

#3)
#get rows with Sepal.width > 3.5

sepalWidthCount=iriscsv[iriscsv$Sepal.Width>3.5,]

#print the rows with Sepal Width > 3.5
print(sepalWidthCount)

#4)
#write data for setosa species to a comma delimited file called "setosa.csv"

#isolate only the row concerning setosa observations
setosa=iriscsv[iriscsv[,5]=="setosa",]

#load data to a file called setosa.csv
write.table(setosa, file="setosa.csv", sep="," )

#5)
#Calculate mean, min, and max for Petal.Length observations of virginica

#isolate rows that ovserved virginica
virginica=iriscsv[iriscsv[,5]=="virginica",]

#get only the column that contained petal length
virginicapetallength<-virginica[,3]

#perform mean, min, and max calculations
meanpetallength<-mean(virginicapetallength)
minpetallength<-min(virginicapetallength)
maxpetallength<-max(virginicapetallength)

#print the calculated values to the screen
print("The average virginica petal length is: ")
print(meanpetallength)
print("The mean virginica petal length is: ")
print(minpetallength)
print("The max virginica petal length is: ")
print(maxpetallength)







