# activation functions 
sigmoid <- function(x) 1 / (1 + exp(-x))
tanh_fn <- function(x) tanh(x)
relu <- function(x) ifelse(x > 0, x, 0)

x <- seq(-10, 10, length.out = 1000)
y_sigmoid <- sigmoid(x)
y_tanh <- tanh_fn(x)
y_relu <- relu(x)

# Plot all three in one plot
plot(x, y_sigmoid, type = "l", col = "blue", lwd = 2, ylim = c(-1.1, 1.1),
     main = "Activation Functions", ylab = "f(x)", xlab = "x")
lines(x, y_tanh, col = "red", lwd = 2)
lines(x, y_relu, col = "darkgreen", lwd = 2)
legend("topleft", legend = c("Sigmoid", "Tanh", "ReLU"),
       col = c("blue", "red", "darkgreen"), lty = 1, lwd = 2)

# Plot each separately
par(mfrow = c(1, 3))  # 3 plots side by side

plot(x, y_sigmoid, type = "l", col = "blue", lwd = 2,
     main = "Sigmoid", ylab = "σ(x)", xlab = "x")

plot(x, y_tanh, type = "l", col = "red", lwd = 2,
     main = "Tanh", ylab = "tanh(x)", xlab = "x")

plot(x, y_relu, type = "l", col = "darkgreen", lwd = 2,
     main = "ReLU", ylab = "ReLU(x)", xlab = "x")

