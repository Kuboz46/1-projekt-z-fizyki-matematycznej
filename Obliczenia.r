286689 %% 7 # 4

setwd("C:/Users/user/Documents/Fizyka matematyczna/Projekt 1")

dyfr_1 <- read.table("fizyka2-projekt1-xrd1.txt")
dyfr_2 <- read.table("fizyka2-projekt1-xrd2.txt")
dyfr_3 <- read.table("fizyka2-projekt1-xrd3.txt")
dyfr_4 <- read.table("fizyka2-projekt1-xrd4.txt")
dyfr_5 <- read.table("fizyka2-projekt1-xrd5.txt")
dyfr_6 <- read.table("fizyka2-projekt1-xrd6.txt")
dyfr_7 <- read.table("fizyka2-projekt1-xrd7.txt")

View(dyfr_1)
View(dyfr_2)
View(dyfr_3)
View(dyfr_4)
View(dyfr_5)
View(dyfr_6)
View(dyfr_7)

library(ggplot2)

# Wczytanie maksimów dyfrakcyjnych wyznaczonych przy pomocy programu Excel.
max_dyfr <- read.csv("Wyniki_Platyna.txt", header = F)

ggplot(dyfr_1, aes(V1, V2)) + geom_line() + ggtitle("1 dyfraktogram")
ggplot(dyfr_2, aes(V1, V2)) + geom_line() + ggtitle("2 dyfraktogram")
ggplot(dyfr_3, aes(V1, V2)) + geom_line() + ggtitle("3 dyfraktogram") 
ggplot(dyfr_4, aes(V1, V2)) + geom_line() + ggtitle("4 dyfraktogram")
ggplot(dyfr_5, aes(V1, V2)) + geom_line() + ggtitle("5 dyfraktogram") # To ten pasuje do platyny.
ggplot(dyfr_6, aes(V1, V2)) + geom_line() + ggtitle("6 dyfraktogram")
ggplot(dyfr_7, aes(V1, V2)) + geom_line() + ggtitle("7 dyfraktogram")


# W³asciwy dyfraktogram z dopasowanymi punktami.
ggplot(dyfr_5, aes(V1, V2)) + geom_line() + ggtitle("Dyfraktogram 5") + geom_point(aes(x = max_dyfr[1, 1], y = -3000), size = 3, col = "blue") + geom_point(aes(x = max_dyfr[2, 1], y = -3000), size = 3, col = "blue") + geom_point(aes(x = max_dyfr[3, 1], y = -3000), size = 3, col = "blue") + geom_point(aes(x = max_dyfr[4, 1], y = -3000), size = 3, col = "blue") + geom_point(aes(x = max_dyfr[5, 1], y = -3000), size = 3, col = "blue")

