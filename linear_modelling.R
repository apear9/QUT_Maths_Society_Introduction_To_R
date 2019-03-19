### Running statistical models

# Plot data to determine relationship

meuse_plot <- ggplot(data = meuse, aes(x = dist, y = log_zinc)) +
  geom_point() +
  theme_bw()
meuse_plot

# Run model 

model <- lm(
  log_zinc ~ dist, # Formula: y ~ x1 + x2 + x3 + ...
  data = meuse     # The data set
)

# Visualise model

meuse_plot + 
  geom_smooth(method = lm, lty = 2, col = "red")

# Summarise model output

summary(model)

# Model diagnostics

par(mfrow = c(1, 2))
plot(model, which = 1:2)