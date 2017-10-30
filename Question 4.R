size_data <- read.csv("data_2.txt", header = TRUE, sep = "\t", na.strings = c("-999", "-999.00"))

ggplot(data = size_data, aes(x= F_mass)) + 
  labs(x = "Female Mass(g)") +
  geom_histogram()
  





ggplot(data = size_data, aes(x= F_mass)) + 
  labs(x = "Female Mass(g)") +
  scale_x_log10()+
  geom_histogram(fill = "blue")
  



ggplot(data = size_data, aes(x= F_mass)) + 
  labs(x = "Female Mass(g) vs Male Mass(g)") +
  scale_x_log10() +
  geom_histogram(fill ="blue", alpha = 0.3)+
  geom_histogram(aes(x = M_mass), alpha = 0.3)

ggplot(data = size_data, aes(x= F_mass)) + 
  labs(x = "Female Mass(g) vs Male Mass(g)") +
  scale_x_log10() +
  geom_histogram(fill ="blue", alpha = 0.3)+
  geom_histogram(aes(x = M_mass), alpha = 0.3)+
  facet_wrap(~ Family)

ggplot(data = size_data, aes(x= F_wing)) + 
  labs(x = "Female Wing vs Male Wing") +
  scale_x_log10() +
  geom_histogram(fill ="blue", alpha = 0.3)+
  geom_histogram(aes(x = M_wing), alpha = 0.3)+
  facet_wrap(~ Family)
