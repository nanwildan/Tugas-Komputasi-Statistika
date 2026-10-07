#Soal 1
pexp(5, rate = 1/5, lower.tail = FALSE)
1-pexp(5, rate = 1/5)
# Eksponensial dengan lambda = 0.2 (E[X] = 5)
x_dexp1 <- seq(1, 30, by = 1)
y_dexp1 <- dexp(x_dexp1, rate = 0.2)
plot(x_dexp1, y_dexp1, type="l", col="blue", lwd=2,
     main="PDF Distribusi Eksponensial (λ=0.2)",
     xlab="x", ylab="f(x)")

#Soal 2
# Uniform pada interval [0, 20]
set.seed(2025)
n2 <- 1000
a <- 0
b <- 20

# Menghitung varians teoritis: (b - a)^2 / 12
var_teoritis <- (b - a)^2 / 12
cat("Varians waktu tunggu:", var_teoritis, "menit^2\n")

# Generate sampel
x2 <- runif(n2, min = a, max = b)

# Plot: Histogram sampel + Overlay PDF teoritis
hist(x2, breaks = 30, probability = TRUE,
     main = "Histogram Sampel U(0,20) dengan PDF Teoritis",
     xlab = "Waktu Tunggu (menit)")
curve(dunif(x, min = a, max = b), from = a, to = b, add = TRUE, col = "red", lwd = 2)

#Soal 3
pexp(5, rate = 1/10, lower.tail = TRUE)
1-pexp(5, rate = 1/10)

# Eksponensial dengan lambda = 0.1
x_dexp3 <- seq(1, 30, by = 1)
y_dexp3 <- dexp(x_dexp3, rate = 0.1)
plot(x_dexp3, y_dexp3, type="l", col="green", lwd=2,
     main="PDF Distribusi Eksponensial (λ=0.1)",
     xlab="x", ylab="f(x)")

#Soal 4
# Normal dengan mu = 2, sigma = 5
n <- 100
mu <- 250
sigma <- 5

# Generate sampel
x <- rnorm(n, mean = mu, sd = sigma)

#Statistik sampel
(x_bar <- mean(x4))

(mle_sigma2 <- mean((x - x_bar)^2)) #MLE untuk sigma^2 (denominator n)

(sd_sample <- sd(x)) # sqrt untuk unbiased (R menggunakan n-1)

#Plot : histogram + overlay PDF teoritis (dengan parameter sebenarnya)
hist(x4, breaks = 30, probability = TRUE,
     main = "Histogram sampel N(250, 5^2) dengan PDF teoritis",
     xlab = "Berat Bersih Kopi (gram)")
curve(dnorm(x, mean = mu, sd = sigma), from = mu-4*sigma, to = mu+4*sigma, add = TRUE, lwd = 2)
abline(v = x_bar, col = "blue", lwd = 2)     # mean sampel
abline(v = mu, col = "red", lwd = 2, lty = 2)   # mean sebenarnya
legend("topright", legend = c("PDF teoritis", "mean sampel", "mean true"),
       lty = c(1,1,2), col = c("black","blue","red"), bty = "n")