library(gapminder)
library(ggplot2)

gapminder_2005 <- subset(gapminder, year == 2005)

ggplot(gapminder_2005, aes(x=log(gdpPercap), y=lifeExp, color=continent)) +
  geom_point(aes(size=pop), alpha=0.7) +
  labs(title="GDP per capita vs. Life Expectancy (2005)",
       x="Log of GDP per capita",
       y="Life expectancy",
       subtitle="Data from Gapminder",
       caption="Colored by continent") +
  theme_minimal()
