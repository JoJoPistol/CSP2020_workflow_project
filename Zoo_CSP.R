# Zoo animal example
Zoo <- read.csv("zooAnimal_medianLifeExpectancy_Jul2018.csv", header=TRUE)
dim(Zoo)
colnames(Zoo)
table(Zoo$TaxonClass)
head(Zoo)

table(Zoo$TaxonClass)

# Drop arachnida
zoo1 <- subset(Zoo,TaxonClass!= "Arachnida")

# Boxplot MLE by taxon
boxplot(zoo1$Overall.MLE~zoo1$TaxonClass)

# Boxplot by gender
split.screen(c(1,2))
screen(1)
boxplot(zoo1$Male.MLE~zoo1$TaxonClass, main="Males")
screen(2)
boxplot(zoo1$Female.MLE~zoo1$TaxonClass, main="Males")


# Compare males and females by taxon
t.test(zoo1[zoo1$TaxonClass=="Aves", "Male.MLE"],zoo1[zoo1$TaxonClass=="Aves", "Female.MLE"] )
t.test(zoo1[zoo1$TaxonClass=="Mammalia", "Male.MLE"],zoo1[zoo1$TaxonClass=="Mammalia", "Female.MLE"] )
t.test(zoo1[zoo1$TaxonClass=="Amphibia", "Male.MLE"],zoo1[zoo1$TaxonClass=="Amphibia", "Female.MLE"] )
t.test(zoo1[zoo1$TaxonClass=="Reptilia", "Male.MLE"],zoo1[zoo1$TaxonClass=="Reptilia", "Female.MLE"] )



