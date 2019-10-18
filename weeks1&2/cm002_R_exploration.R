number <- 5 + 2
number * 2
a * 2

times <- c(60, 40, 33, 15, 20, 55, 35)
(times <- c(60, 40, 33, 15, 20, 55, 35))
times / 60
times <- times / 60

mean(times)
sqrt(times)
range(times)

times < 30
times == 20
times != 20

times > 20 & times < 50
times < 20 | times > 50

# this is an inline comment
which(times < 30)
sum(tims < 30)

# subsetting
times[3]
times[-3]
times[c(2, 4)]
times[c(4, 2)]
times[1:5]
times[times < 30]
times[times > 50] <- 50
times[8] <- NA
mean(times)
mean(times, na.rm=T)

mtcars
str(mtcars)
names(mtcars)
mtcars$mpg










