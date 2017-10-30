mammal_data <- read.csv("Mammal_lifehistories_v2.txt", header = TRUE, sep = "\t", na.strings = c("-999", "-999.00"), nrows = 1440)


ggplot(data = mammal_data, aes(x= mass.g., y = newborn.g.)) + 
  labs(x = "adult mass", y = "newborn mass") +
  geom_point()

ggplot(data = mammal_data, aes(x= mass.g., y = newborn.g.)) + 
  labs(x = "adult mass", y = "newborn mass") +
  scale_x_log10() +
  scale_y_log10() +
  geom_point()


ggplot(data = mammal_data, aes(x= mass.g., y = newborn.g., color = order)) + 
  labs(x = "adult mass", y = "newborn mass") +
  scale_x_log10() +
  scale_y_log10() +
  geom_point() +
  
  
  
  ggplot(data = mammal_data, aes(x= mass.g., y = newborn.g., color = order)) + 
  labs(x = "adult mass", y = "newborn mass") +
  scale_x_log10() +
  scale_y_log10() +
  geom_point() + 
  facet_wrap(~ order)

ggplot(data = mammal_data, aes(x= mass.g., y = newborn.g., color = order)) + 
  labs(x = "adult mass", y = "newborn mass") +
  scale_x_log10() +
  scale_y_log10() +
  geom_smooth(method = "lm") + 
  facet_wrap(~ order)