#Nomor 1

p_x_ge_5 <- 1 - ppois(4, lambda)
p_x_ge_5

#Nomor 2
N <- 100
K <- 20
n <- 10

x <- 0:10
P_X <- dhyper(x, K, N - K, n)
data.frame(X = x, P_X = P_X)
dhyper(x, 20, 80, 10)

#Nomor 3
set.seed(123)
n <- 15
p <- 0.4
B <- 1000

hasil <- rbinom(B, size = n, prob = p)
x <- 0:n

pmf <- dbinom(x, size = n, prob = p)
hist(
  hasil,
  breaks = seq(-0.5, 15.5, by = 1),
  probability = TRUE,
  main = "Histogram Simulasi vs PMF Teoritis",
  xlab = "X",
  ylab = "Probabilitas",
  xaxt = "n"
)

axis(1, at = 0:15)
points(
  x,
  pmf,
  type = "h",
  lwd = 3
)

points(
  x,
  pmf,
  pch = 19
)

prop <- table(factor(hasil, levels = x)) / B
data.frame(
  X = x,
  Simulasi = as.numeric(prop),
  Teoritis = pmf
)