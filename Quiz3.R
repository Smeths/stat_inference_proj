#
# question 1
#
# tdistribution follows dt,pt,qt and rt pattern as other distributions
mu <- 1100
n <- 9
sd <- 30
# finding 95% confidence interval
mu + c(-1,1)*qt(0.975,n-1)*sd/sqrt(n)
#
# question 2
#
n <- 9
mu <- -2
2*sqrt(9)/qt(0.975,n-1)
#
# question 4
#
n <- 10
muns <- 3
sns <- sqrt(0.6)
muos <- 5
sos <- sqrt(0.68)
sp <- sqrt((9*sns^2 + 9*sos^2)/18)
md <- muns - muos
md + c(-1,1)*sp*qt(0.975,18)*sqrt(0.2)
#
# question 6 rep question 4 but with unequal variances
#
n <- 100
muns <- 4
sns <- 0.5
muos <- 6
sos <- 2
dftop <- ((sns^2)/n + (sos^2)/n)^2
dfbot <- (((sns^2)/n)^2)/(n-1) + (((sos^2)/n)^2)/(n-1)
df <- dftop/dfbot
sp <-sqrt((sns^2)/n + (sos^2)/n)
mud <- muos - muns
mud + c(-1,1)*qt(0.975,df)*sp
mud + c(-1,1)*qnorm(0.975)*sp
#
# question 7 
#
n <- 9
muns <- -3
sns <- 1.5
muos <- 1
sos <- 1.8
sp <- sqrt((8*sns^2 + 8*sos^2)/16)
md <- muns -muos
md + c(-1,1)*sp*qt(0.95,16)*sqrt(2/9)


