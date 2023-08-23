# ISEE: Bayesian Modeling for Environmental Health Workshop

## Introduction

GitHub repo through which we're developing and sharing materials for the ISEE Bayesian Modeling for Environmental Health Workshop, taking place in person in September 17 2023. This course is an adaptation of the [SHARP Bayesian Modeling for Environmental Health Workshop](https://www.publichealth.columbia.edu/research/programs/precision-prevention/sharp-training-program/bayesian-modeling#:~:text=The%20Bayesian%20Modeling%20for%20Environmental,with%20applications%20in%20Environmental%20Health.) that took place at Columbia University during 14-15 August 2023. We would like to acknowledge [Theo O. Rashid](https://www.imperial.ac.uk/people/theo.rashid15) and [Elizaveta Semenova](https://www.cs.ox.ac.uk/people/elizaveta.semenova/) for their contribution to the lecture material and r-code. 

## Notes for attendees

The workshop will be a series of lectures and interactive supervised lab sessions. We hope it's informative and fun!

We will be using `R` and `RStudio`. We will also ask you to pull the final versions of the `GitHub` repo to your local machine. The basics of doing this are found via [git-guide](https://github.com/git-guides/git-pull).

This workshop is written in [`NIMBLE`](https://r-nimble.org/).

Below is the set of labs to follow throughout the day:

### Programme

| Time         | Activity                 |
| ------------ | ------------------------ |
| 10:00 - 10:15  | [Welcome and Introduction](/lectures/welcome_and_introduction/welcome_and_introduction.qmd) |
| 10:15 - 11:00 | [Introduction to Bayesian Methods](/lectures/introduction_to_bayesian_methods/introduction_to_bayesian_methods.qmd) (Lecture) |
| 11:00  - 11:15 | Break / One-on-one questions
| 11:15  - 12:00 | [Introduction to Bayesian Methods](/labs/introduction_to_bayesian_methods/introduction_to_bayesian_methods.qmd) (Hands-on Lab) |
| 12:00 - 12:15 | Break / One-on-one questions |
| 12:15 - 13:00 | [Bayesian Regression and Temporal Modeling](/lectures/bayesian_regression_and_temporal_modelling/bayesian_regression_and_temporal_modelling.qmd) (Lecture) |
| 13:00  - 14:00 | Break / One-on-one questions |
| 14:00  - 14:45 | [Bayesian Regression and Temporal Modelling](/labs/bayesian_regression_and_temporal_modelling/bayesian_regression_and_temporal_modelling.qmd) (Hands-on Lab) |
| 14:45 - 15:00 | Break / One-on-one questions |
| 15:00 - 16:00 | [Spatial and Spatio-temporal Modeling](/lectures/spatiotemporal_models/sstmodels.qmd) (Lecture) |
| 16:00 - 16:15 | Break / One-on-one questions |
| 16:15 - 17:00 | [Spatial and Spatio-temporal Modelling](/labs/spatiotemporal_models/spatiotemporal_models.qmd) (Hands-on Lab) |
| 17:00 - 17:15 | Questions and Wrap-up |


### Using `Quarto` for presentations

Quarto is pretty cool. I won't bore you, but have a look at the [docs](https://quarto.org/docs/guide/). Here, we're using it for [presentations](https://quarto.org/docs/presentations/revealjs/). It's designed by the folks at `RStudio`, so you `R` folk will be happy. Make a `.qmd` file and run `quarto render *.qmd` to generate the `html`, which you can open in browser. We can get fancy and import our own `css` to have a consistent theme for out presentations.
