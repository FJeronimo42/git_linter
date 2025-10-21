# Diretório
dir.create('Data')
dir.create('R')
dir.create('Figures')
#Volta Ale
# Biblioteca
library('tidyverse')
library("bipartite")
# Dados
data(iris)

str(iris)

# Manipulação
iris_data <- iris %>% 
  select(Species) %>% # Responsabilidade do Eduardo
  filter(Species != 'setosa') %>% # Responsabilidade do Bruno
  mutate(Sepal.Rate = Sepal.Length/Sepal.Width) %>% # Responsabilidada da Rafaela
  group_by(Species) %>% 
  summarise(Sepal.Rate.Mean = mean(Sepal.Rate)) %>% # Responsabilidade da Heloisa
  glimpse()

# Plot
ggplot