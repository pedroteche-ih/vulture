library(depmixS4)
library(arrow)
library(ggplot2)
library(moveHMM)
library(httpgd)
tb_ts_clu <- read_parquet("data_output/tb_day.parquet")
summary(tb_ts_clu)
tb_ts_clu$ID <- tb_ts_clu$"individual-local-identifier"
prep_ts_clu <- prepData(
    subset(tb_ts_clu, select = c(
        "ID", "location-long",
        "location-lat",
        "torgos"
    )),
    type = "LL",
    coordNames = c("location-long", "location-lat")
)

ggplot(prep_ts_clu, aes(x = step)) +
    geom_histogram(bins = 100) +
    theme_bw()
ggplot(prep_ts_clu, aes(x = angle)) +
    geom_histogram(bins = 100) +
    theme_bw()
ggplot(prep_ts_clu, aes(x = step, y = angle)) +
    geom_bin2d() +
    theme_bw()
# Indices of steps of length zero
whichzero <- which(prep_ts_clu$step == 0)
# Proportion of steps of length zero in the data set
length(whichzero) / nrow(prep_ts_clu)

summary(prep_ts_clu)
plot(prep_ts_clu, compact = TRUE, ask = FALSE)

# Fit a 2-state HMM with a von Mises angle distribution
# using multiple initial parameters
n_iter <- 50
fit_2_hmm <- vector("list", n_iter)
for (i in 1:n_iter) {
    print(i)
    mu0_1 <- runif(1, 5, 45)
    mu0_2 <- mu0_1 * runif(1, min = 5, max = 10)
    # step mean (two parameters: one for each state)
    mu0 <- c(mu0_1, mu0_2)
    sigma0 <- c(mu0_1, mu0_2) # step SD
    step_par0 <- c(mu0, sigma0)


    angle_mean0 <- c(
        runif(1, min = -1 * pi, max = pi),
        runif(1, min = -1 * pi, max = pi)
    )
    kappa0 <- c(
        runif(1, 0.1, 0.9),
        runif(1, 0.1, 0.9)
    ) # angle concentration
    angle_par0 <- c(angle_mean0, kappa0)
    m <- fitHMM(
        data = prep_ts_clu, nbStates = 2, stepPar0 = step_par0,
        anglePar0 = angle_par0, formula = ~torgos
    )
    fit_2_hmm[[i]] <- m
}
final_model <- fit_2_hmm[[which.min(unlist(lapply(fit_2_hmm, function(x) {
    x$mod$minimum
})))]]

# Fit a 3-state HMM with a von Mises angle distribution
# using multiple initial parameters
n_iter <- 50
fit_3_hmm <- vector("list", n_iter)
for (i in 1:n_iter) {
    mu0_1 <- runif(1, 5, 45)
    mu0_2 <- mu0_1 * runif(1, min = 1, max = 5)
    mu0_3 <- mu0_2 * runif(1, min = 1, max = 5)
    # step mean (two parameters: one for each state)
    mu0 <- c(mu0_1, mu0_2, mu0_3)
    sigma0 <- c(mu0_1, mu0_2, mu0_3) # step SD
    step_par0 <- c(mu0, sigma0)


    angle_mean0 <- c(
        runif(1, min = -1 * pi, max = pi),
        runif(1, min = -1 * pi, max = pi),
        runif(1, min = -1 * pi, max = pi)
    )
    kappa0 <- c(
        runif(1, 0.1, 0.9),
        runif(1, 0.1, 0.9),
        runif(1, 0.1, 0.9)
    ) # angle concentration
    angle_par0 <- c(angle_mean0, kappa0)
    m <- fitHMM(
        data = prep_ts_clu, nbStates = 3, stepPar0 = step_par0,
        anglePar0 = angle_par0, formula = ~torgos
    )
    fit_3_hmm[[i]] <- m
}
final_model <- fit_3_hmm[[which.min(unlist(lapply(fit_3_hmm, function(x) {
    x$mod$minimum
})))]]
# Fit a 4-state HMM with a von Mises angle distribution
# using multiple initial parameters
n_iter <- 10
fit_4_hmm <- vector("list", n_iter)
for (i in 1:n_iter) {
    mu0_1 <- rnorm(1, 5, 2)
    mu0_2 <- mu0_1 * runif(1, min = 1, max = 5)
    mu0_3 <- mu0_2 * runif(1, min = 1, max = 5)
    mu0_4 <- mu0_3 * runif(1, min = 1, max = 5)
    # step mean (two parameters: one for each state)
    mu0 <- c(mu0_1, mu0_2, mu0_3, mu0_4)
    sigma0 <- c(mu0_1, mu0_2, mu0_3, mu0_4) # step SD
    step_par0 <- c(mu0, sigma0)


    angle_mean0 <- c(
        runif(1, min = -1 * pi, max = pi),
        runif(1, min = -1 * pi, max = pi),
        runif(1, min = -1 * pi, max = pi),
        runif(1, min = -1 * pi, max = pi)
    )
    kappa0 <- c(
        runif(1, 0.1, 0.9),
        runif(1, 0.1, 0.9),
        runif(1, 0.1, 0.9),
        runif(1, 0.1, 0.9)
    ) # angle concentration
    angle_par0 <- c(angle_mean0, kappa0)
    m <- fitHMM(
        data = prep_ts_clu, nbStates = 4, stepPar0 = step_par0,
        anglePar0 = angle_par0
    )
    fit_4_hmm[[i]] <- m
}
