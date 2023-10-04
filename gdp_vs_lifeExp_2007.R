library(gapminder)
library(ggplot2)

gapminder_2007 <- subset(gapminder, year == 2007)

ggplot(gapminder_2007, aes(x=log(gdpPercap), y=lifeExp, color=continent)) +
  geom_point(aes(size=pop), alpha=0.7) +
  labs(title="GDP per capita vs. Life Expectancy (2007)",
       x="Log of GDP per capita",
       y="Life Expectancy",
       subtitle="Data from Gapminder",
       caption="Colored by continent") +
  theme_minimal()
