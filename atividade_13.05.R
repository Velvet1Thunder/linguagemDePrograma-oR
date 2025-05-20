library(dplyr)
library(ggplot2)
airquality
#1
ggplot(data = airquality, aes(x = Ozone, y = Temp)) +
  geom_point()

#2
ggplot(data = airquality, aes(x= factor(Month), y = Ozone, fill = 'steelblue')) +
  geom_boxplot()

#3

ggplot(filter(airquality, Month == 7), aes(x = Day, y = Temp))+
  geom_line()

#4
ggplot(airquality, aes(x = Temp, y = Ozone, color = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

#5
ggplot(airquality, aes(x = Wind)) +
  geom_histogram(binwidth = 1, fill = "pink")

#6
ggplot(airquality, aes(x = factor(Month))) +
  geom_bar()

#7
ggplot(airquality, aes(x = Temp, y = Ozone)) +
  geom_point() +
  facet_wrap(- Month)

