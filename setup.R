library(gt)
library(survey)
library(srvyr)
library(srvyrexploR)
library(forcats)
library(ggplot2)
library(tidyr)
library(dplyr)

anes_des <- anes_2024 %>%
  filter(InterviewMode_Post != "3. Paper (PAPI)") %>%
  mutate(Weight = V240108b / sum(V240108b) * 232449541) %>%
  as_survey_design(
    weights = Weight,
    strata = V240108d,
    ids = V240108c,
    nest = TRUE
  )