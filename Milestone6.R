Causes$Deaths<-as.numeric(gsub("[\\.,]","",Causes$Deaths))
Causes$Deaths
Causes<-na.omit(Causes)
Causes
Causes2<-subset(Causes,Deaths<4000)
# Mean
mean(Causes2$Deaths)
# Mean trimmed
mean(Causes2$Deaths,trim = 0.1)
# Median
median(Causes2$Deaths)
# Variance
var(Causes2$Deaths)
#Standard deviation
sd(Causes2$Deaths)


Causes$`Age Adjusted Death Rate`<-as.numeric(gsub("[\\.,]","",Causes$`Age Adjusted Death Rate`))
Causes$`Age Adjusted Death Rate`

Causes3<-subset(Causes,`Age Adjusted Death Rate`<3000)
# Mean
mean(Causes3$`Age Adjusted Death Rate`)
# Mean trimmed
mean(Causes3$`Age Adjusted Death Rate`,trim = 0.2)
# Median
median(Causes3$`Age Adjusted Death Rate`)
# Variance
var(Causes3$`Age Adjusted Death Rate`)
#Standard deviation
sd(Causes3$`Age Adjusted Death Rate`)

plot(Deaths~`Age Adjusted Death Rate` ,data = Causes)
cor(Causes$Deaths, Causes$`Age Adjusted Death Rate`)
