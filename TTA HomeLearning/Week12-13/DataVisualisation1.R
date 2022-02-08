# HomeLearning Data visualisation
# 1 Data visualisation using mpg dataset
data()
data(package=.packages(all.available=TRUE))
#library(tidyverse)
mpg

#displ on the x-axis and hwy on the y-axis:
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#adding colour to data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


#chaning size of data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#aplha changes transparency of points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#changin data points shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))




#Bar Chart
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", width=0.5)

# Change colors
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", color="blue", fill="white")

# Minimal theme + red fill color
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
geom_bar(stat="identity", fill="red")+
theme_minimal()

###2. Data visualisation using economics dataset
data(economics)
economics

ggplot(data=economics, aes(x=date, y=pop))
+ geom_line()


ggplot(economics, aes(date, unemploy / pop)) +
  geom_line()


ggplot(data=economics) +
  geom_point(mapping = aes(x = date, y = unemploy, color=pop))

ggplot(data=economics,aes(x = date, y = unemploy)) + geom_path(size = 0.7)

# plot personal savings rate (psavert).
ggplot(economics, aes(x = date, y = psavert)) +
  geom_line() +
  labs(title = "personal savings rate", x = "date", y = "personal savings rate")


