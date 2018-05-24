Beerwings<-read.csv("C:/Users/Brandon/Desktop/Statistics/Data/Beerwings.csv")
Beer<-Beerwings$Beer
Wings<-Beerwings$Hotwings
plot(Beer,Wings)
cor(Beer,Wings)
reg<-lm(Wings~Beer)
res<-resid(reg)
plot(Beer,res)
abline(0,0)
rsquared<-cor(Beer,Wings)^2
Beer <- Beer[-1] 
Wings <- Wings[-1]
Beer <- Beer[-28] 
Wings <- Wings[-28]
reg<-lm(Wings~Beer)
