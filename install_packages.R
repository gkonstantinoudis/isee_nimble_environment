# Welcome to the Bayesian Modeling for Environmental Health Workshop!

# To install the packaged required for the tutorials please follow the steps bellow:

# INLA is weird so do the following

# install INLA
if (("INLA" %in% installed.packages()) == F) {
  install.packages("INLA", repos = c(getOption("repos"), INLA = "https://inla.r-inla-download.org/R/testing"), dep = TRUE)
}

# For the other packages:

# install packages:
list.of.packages <- c(
  "here", "tidyverse", "bayesplot", "posterior", "hrbrthemes",
  "colorspace", "readr", "ggplot2", "rgeos", "patchwork",
  "coda", "ggmcmc", "lubridate", "fastDummies", "nimble"
)
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[, "Package"])]
if (length(new.packages)) install.packages(new.packages)

