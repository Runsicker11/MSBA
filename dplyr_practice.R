library(dplyr)
library(gapminder)
library(ggplot2)

gapminder

gap <- gapminder %>%
  filter(year == 1952) %>%
  group_by(continent) %>%
  summarize(minlifeExp = min(lifeExp))

ggplot(gap, aes(x = continent, y = minlifeExp)) +
  geom_point()
