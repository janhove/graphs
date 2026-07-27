# Load tidyverse package
# (this is a comment, by the way -- use them liberally)
library(tidyverse)

# Load here package
library(here)

# Load iris dataset
data(iris)

# Show dataset
iris

ggplot(data = iris,             # Specify the name of the dataset
       aes(x = Sepal.Length,    # Variable for x axis (aes = 'aesthetics')
           y = Petal.Length)) + # Variable for y axis (don't forget the '+')
  geom_point()                  # Plot the data as points

# This saves the plot to the figures subdirectory.
ggsave(here("figures", "01_first_scatterplot.png"))

devtools::session_info()