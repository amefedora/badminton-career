BWF_players = read.csv("BWF_players19.csv")

#check if any not available (NA) values.
is.na(BWF_players)

#get the NA data
na_dataNew = BWF_players[!complete.cases(BWF_players),]

#NA Height Change By Continent
#Asia
BWF_players$Height[BWF_players$Name == "Adnan Maulana"] <- 175
BWF_players$Height[BWF_players$Name == "Bagas Maulana"] <- 175
BWF_players$Height[BWF_players$Name == "Cheah Yee See"] <- 164
BWF_players$Height[BWF_players$Name == "Di Zi Jian"] <- 183
BWF_players$Height[BWF_players$Name == "Lu Guang Zu"] <- 183
BWF_players$Height[BWF_players$Name == "Muhammad Shohibul Fikri"] <- 175
BWF_players$Height[BWF_players$Name == "Nguyen Thuy Linh"] <- 165
BWF_players$Height[BWF_players$Name == "Pearly Tan"] <- 164
BWF_players$Height[BWF_players$Name == "Pitha Haningtyas Mentari"] <- 165
BWF_players$Height[BWF_players$Name == "Sim Yu-jin"] <- 170
BWF_players$Height[BWF_players$Name == "Siti Fadia Silva Ramadhanti"] <- 165
BWF_players$Height[BWF_players$Name == "Taichi Saito"] <- 170
BWF_players$Height[BWF_players$Name == "Wang Chang"] <- 183
BWF_players$Height[BWF_players$Name == "Yeremia Erich Yoche Yacob Rambitan"] <- 175
#Europe
BWF_players$Height[BWF_players$Name == "Nhat Nguyen"] <- 183
BWF_players$Height[BWF_players$Name == "Qi Xuefei"] <- 186
#Pan Am
BWF_players$Height[BWF_players$Name == "Ryan Chew"] <- 172


#NA Hand Change
BWF_players$Hand[BWF_players$Name == "Nguyen Thuy Linh"] <- "Right"
BWF_players$Hand[BWF_players$Name == "Ryan Chew"] <- "Right"
BWF_players$Hand[BWF_players$Name == "Sim Yu-jin"] <- "Right"
BWF_players$Hand[BWF_players$Name == "Wang ZhiYi"] <- "Right"


#NA Medal Change
BWF_players$Medals[BWF_players$Name == "Chang Tak Ching"] <- 4
BWF_players$Medals[BWF_players$Name == "Ekaterina Malkova"] <- 4
BWF_players$Medals[BWF_players$Name == "Kang Min-hyuk"] <- 4
BWF_players$Medals[BWF_players$Name == "Kim Jae-hwan"] <- 4
BWF_players$Medals[BWF_players$Name == "Ng Wing Yung"] <- 4
BWF_players$Medals[BWF_players$Name == "Ryan Chew"] <- 4


#change multiple
BWF_players$Multiple[BWF_players$Name == "Di Zi Jian"] <- 1


#change Age
BWF_players$Age[BWF_players$Name == "Vu Thi Trang"] <- 29
BWF_players$Age[BWF_players$Name == "Ayako Sakuramoto"] <- 25
BWF_players$Age[BWF_players$Name == "Cheung Ngan Yi"] <- 28
BWF_players$Age[BWF_players$Name == "Wakana Nagahara"] <- 25


#change Height
BWF_players$Height[BWF_players$Name == "Kang Min-hyuk"] <- 183


#change career
BWF_players$Career[BWF_players$Name == "Cheah Yee See"] <- 124
BWF_players$Career[BWF_players$Name == "Huang Yu Xiang"] <- 102
BWF_players$Career[BWF_players$Name == "Akira Koga"] <- 90
BWF_players$Career[BWF_players$Name == "Qi Xuefei"] <- 114
BWF_players$Career[BWF_players$Name == "Lee Yong-dae"] <- 810
BWF_players$Career[BWF_players$Name == "Fitriani Fitriani"] <- 112
BWF_players$Career[BWF_players$Name == "Zhang Yi Man"] <- 66


#change medals
BWF_players$Medals[BWF_players$Name == "Lin Dan"] <- 21
#asfactor
BWF_players$Gender = as.factor(BWF_players$Gender)
BWF_players$Hand = as.factor(BWF_players$Hand)
BWF_players$Category = as.factor(BWF_players$Category)
BWF_players$Continent = as.factor(BWF_players$Continent)
BWF_players$Multiple = as.factor(BWF_players$Multiple)
BWF_players$Country = as.factor(BWF_players$Country)
BWF_players$Age = as.integer(BWF_players$Age)
BWF_players$Medals= as.integer(BWF_players$Medals)
BWF_players$Height = as.integer(BWF_players$Height)
BWF_players$Medals = as.integer(BWF_players$Medals)
BWF_players$Career = as.integer(BWF_players$Career)


#Plot

#grafik univariat
ggplot(BWF_players, aes(x = Hand, fill=factor(Hand)))+
  geom_bar()+
  xlab("Jenis Hand")+
  ylab("Frequency")+
  ggtitle("Barplot Hand dalam Permainan Bulu Tangkis")+
  guides(fill=guide_legend("Hand"))+
  scale_fill_brewer(palette="Set2")+
  theme(panel.background = element_blank())
#Gender
ggplot(BWF_players, aes(x = "", y = Gender,fill=factor(Gender)))+
  geom_bar(stat = "identity", width = 1)+
  ggtitle("Piechart Gender Pemain Bulu Tangkis")+
  guides(fill=guide_legend("Gender"))+
  coord_polar("y",start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set2")
#Category
ggplot(BWF_players, aes(x = "", y = Category,fill=factor(Category)))+
  geom_bar(stat = "identity", width = 1)+
  ggtitle("Piechart Kategori Pemain Bulu Tangkis")+
  guides(fill=guide_legend("Kategori"))+
  coord_polar("y",start=0)+
  theme_void()+
  scale_fill_brewer(palette="Set2")
#Continent
ggplot(BWF_players, aes(x = Continent,fill=factor(Continent)))+
  geom_bar()+
  ggtitle("Barplot Asal Kontinent Pemain Bulu Tangkis")+
  guides(fill=guide_legend("Country"))+
  theme_void()
#Medal
par(mfrow = c(2,2))
h1 <- hist(BWF_players$Medals, 
           main = "Peraihan Medali Emas oleh Pemain",
           xlab = "Jumlah Medali")
xfit<-seq(min(BWF_players$Medals),max(BWF_players$Medals),length=40)
yfit<-dnorm(xfit,mean=mean(BWF_players$Medals),sd=sd(BWF_players$Medals))
yfit<-yfit*diff(h1$mids[1:2])*length(BWF_players$Medals)
lines(xfit, yfit, col="red", lwd=2)
#Bivariat Antara Age dan Height
ggplot(BWF_players, aes(x = Height, y = Age))+
  geom_point()+
  xlab("Height")+
  ylab("Umur")+
  ggtitle("Scatterplot Hubungan Height dan Age")+
  theme(panel.background = element_blank())
#Bivariat Antara Age dan Gender
ggplot(BWF_players, aes(x = Gender,y=Age))+
  geom_boxplot()+
  xlab("Gender")+
  ylab("Umur")+
  ggtitle("Boxplot Antara Age dan Gender dalam Permainan Bulu Tangkis")+
  theme(panel.background = element_blank())
#Bivariat Antara Age dan Category
ggplot(BWF_players, aes(x = Category,y=Age))+
  geom_boxplot()+
  xlab("Category")+
  ylab("Umur")+
  ggtitle("Boxplot Antara Age dan Category dalam Permainan Bulu Tangkis")+
  theme(panel.background = element_blank())
#grafik interaksi
interaction.plot(x.factor = continent, 
                 trace.factor = hand, 
                 response = career, 
                 main="Interaction Plot career dari Hand*Contintent", 
                 xlab = "continent", ylab = "career",
                 col=c("red","blue"))
interaction.plot(x.factor = hand, 
                 trace.factor = category, 
                 response = career, 
                 main="Interaction Plot career dari Hand*Category", 
                 xlab = "hand", ylab = "career",
                 col=c("red","blue"))
interaction.plot(x.factor = category, 
                 trace.factor = continent, 
                 response = career, 
                 main="Interaction Plot career dari Category*Continent", 
                 xlab = "category", ylab = "career",
                 col=c("red","blue"))
interaction.plot(x.factor = category, 
                 trace.factor = multiple, 
                 response = career, 
                 main="Interaction Plot career dari Category*Multiple", 
                 xlab = "category", ylab = "career",
                 col=c("red","blue"))

#Regresi model
str(BWF_players)
#regresi banyak variable
ols <- lm(Career~Age + Height + Country + Hand + Medals + HRank + Multiple + Category + Gender + Continent,data=BWF_players)
summary(ols)
AIC(ols)
stepwise <- step(ols,direction="both")
ols <- lm(Career~relevel(Country,ref="Indonesia")+ Multiple + Medals + Age + HRank*Medals+ HRank*Age,data=BWF_players)
AIC(ols)
summary(ols)
stepwise1 <- step(ols,direction="both")
library(broom)
model.diag.metrics <- augment(stepwise1)
head(model.diag.metrics,10)
head(stepwise1$residuals, 10)
head(stepwise1$fitted.values, 10)
plot(stepwise1,1)
plot(stepwise1,2)
resid <- stepwise1$residuals
shapiro.test(resid)
###Breusch-Pagan Test heteroskedastik (p-value < 0,05)
library(lmtest)
bptest(stepwise1) 
library(car)
vif(stepwise1)
library(corrplot)
career.num <- data.frame(BWF_players$Age, BWF_players$Height, BWF_players$Medals, BWF_players$HRank, BWF_players$Career)
mat <- cor(career.num) #matriks korelasi
corrplot(mat, method="square")
resid <- stepwise1$residuals
bon <- rstudent(stepwise1)
boxplot(resid)
boxplot.stats(resid)$out
library(car)
outlierTest(stepwise) 
#Lihat Lamda untuk menentukan transformasi
model1 <- lm(Career~ relevel(Country,ref="Indonesia") + Multiple + Age + Medals + HRank*Medals + HRank*Age, data=BWF_players)
stepwise1 <- step(model1,direction="both")
library(MASS)
box <- boxcox(stepwise1)
(lambda <- box$x[which.max(box$y)]) #0.54 --- boxcox
#Transformasi Box-Cox dengan full data (BWF_players)
model.sq <- lm(sqrt(Career)~ relevel(Country,ref="Indonesia") + Multiple + Age + Medals + HRank*Medals + HRank*Age, data=BWF_players)
stepwiseLog2 <- step(model.sq,direction="both")
summary(stepwiseLog2)
AIC(model.sq) #1238 #1259
model.sq <- lm(sqrt(Career) ~ relevel(Country, ref = "Indonesia") + Multiple + 
                 Medals + Age + HRank + Age*HRank, data=BWF_players)
stepwiseLog2 <- step(model.sq,direction="both")
summary(stepwiseLog2)
AIC(model.sq)
par(mfrow=c(2,2))
plot(stepwiseLog2)
library(car)
vif(stepwiseLog2)
library(lmtest)
resid2 <- stepwiseLog2$residuals
shapiro.test(resid2)
bptest(stepwiseLog2)
outlierTest(stepwiseLog2) 