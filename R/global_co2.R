
################################################################# ---
##          전세계 온실가스 종류별 배출량 추이
##                    개발자: 이광춘
##                최종수정일: 2022-09-11
## NOAA CO2 데이터셋: https://gml.noaa.gov/ccgg/trends/data.html
################################################################# ---

# 1. 패키지 -------------

library(tidyverse)

source("R/util.R")

# 2. 데이터 -------------

global_co2_raw <- read_csv("https://gml.noaa.gov/webdata/ccgg/trends/co2/co2_annmean_mlo.csv",
                           skip = 55)

# 3. 데이터 가공 ------------

global_co2 <- global_co2_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  select(-unc)

# 4. 내보내기 ---------------------

global_co2 <- clean_varnames(global_co2)

write_csv(global_co2, here::here("data-raw", "global_co2.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(global_co2)

usethis::use_data(global_co2, overwrite = TRUE, compress = 'xz')

