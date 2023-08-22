library(sf)
library(ggplot2)

read_sf("swissBOUNDARIES3D_1_3_TLM_HOHEITSGEBIET.shp") -> tmp
plot(tmp$geometry)


rnorm(n = nrow(tmp), mean = 0, sd = 0.5) %>% exp() -> SIR
SIR[sample(x = 1:length(SIR), size = 10)] <- SIR[sample(x = 1:length(SIR), size = 10)] + rexp(n = 10, rate = 0.05)

tmp$SIR <- SIR

ggplot() +
  geom_sf(data = tmp, aes(fill = SIR), col = NA) +
  scale_fill_viridis_c()


# Lets try to mimick the distribution

n <- 3000

zeros <- rep(0, 1500)
q1 <- runif(n / 4, 0.14, 0.8) + rnorm(n / 4, mean = 0, 0.1)
q2 <- runif(n / 4, 0.8, 1.17) + rnorm(n / 4, mean = 0, 0.2)
q3 <- runif(n / 4, 1.17, 1.76) + rnorm(n / 4, mean = 0, 0.2)
q4 <- runif(n / 4, 1.16, 10) + rnorm(n / 4, mean = 0, 1)
q5 <- rexp(10, rate = 0.03)

SIR <- c(zeros, q1, q2, q3, q4, q5)
SIR %>% hist()
SIR <- SIR[sample(1:length(SIR), size = length(SIR))]
SIR <- SIR[1:nrow(tmp)]
tmp$SIR <- SIR

ggplot() +
  geom_sf(data = tmp, aes(fill = SIR), col = NA) +
  scale_fill_viridis_c() +
  theme_void() -> p1


SIR_CAT <- SIR

sir_leq0 <-
  cut(SIR_CAT[SIR_CAT > 0],
    breaks = quantile(SIR_CAT[SIR_CAT > 0],
      probs = seq(from = 0, to = 1, length.out = 5)
    ),
    include.lowest = TRUE
  ) %>% as.character()
SIR_CAT <- rep("0", times = length(SIR))
SIR_CAT[SIR > 0] <- sir_leq0
SIR_CAT <- factor(SIR_CAT, levels = c("0", "(0.719,1.14]", "(1.14,1.82]", "[0.0154,0.719]", "(1.82,68.5]"))
tmp$SIR_CAT <- SIR_CAT

ggplot() +
  geom_sf(data = tmp, aes(fill = SIR_CAT), col = NA) +
  scale_fill_viridis_d() +
  theme_void() -> p2



getwd()
png("crudeSIR.png", width = 12, height = 8, units = "cm", res = 300)
p1
dev.off()

png("crudeSIRcat.png", width = 12, height = 8, units = "cm", res = 300)
p2
dev.off()
