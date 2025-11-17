#Education Counts

library(censusapi)

acs2020<-getCensus(
  name = "acs/acs5/subject",
  vintage = 2020,
  vars = "group(S1501)",
  region = "state")

acs2020 %>%
  summarize(pop = sum(S1501_C01_001E)+sum(S1501_C01_006E),
            ltHS = (sum(S1501_C01_002E)+sum(S1501_C01_007E)+sum(S1501_C01_008E))/pop,
            HS = (sum(S1501_C01_003E)+sum(S1501_C01_009E))/pop,
            someCollege = (sum(S1501_C01_004E)+sum(S1501_C01_010E)+sum(S1501_C01_011E))/pop,
            gtBS = (sum(S1501_C01_005E)+sum(S1501_C01_015E))/pop)

acs2024<-getCensus(
  name = "acs/acs1/subject",
  vintage = 2024,
  vars = "group(S1501)",
  region = "state")

acs2024 %>%
  summarize(pop = sum(S1501_C01_001E)+sum(S1501_C01_006E),
            ltHS = (sum(S1501_C01_002E)+sum(S1501_C01_007E)+sum(S1501_C01_008E))/pop,
            HS = (sum(S1501_C01_003E)+sum(S1501_C01_009E))/pop,
            someCollege = (sum(S1501_C01_004E)+sum(S1501_C01_010E)+sum(S1501_C01_011E))/pop,
            gtBS = (sum(S1501_C01_005E)+sum(S1501_C01_015E))/pop)