# add comments

library(gapminder)
library(ggplot2)
library(tidyverse)
library(tidytext)

gapminder_2000 <- subset(gapminder, year == 2000)

ggplot(gapminder_2000, aes(x=log(gdpPercap), y=lifeExp, color=continent)) +
  geom_point(aes(size=pop), alpha=0.7) +
  labs(title="GDP per capita vs. Life Expectancy (2000)",
       x="Log of GDP per capita",
       y="Life expectancy",
       subtitle="Data from Gapminder",
       caption="Colored by continent") +
  theme_minimal()
