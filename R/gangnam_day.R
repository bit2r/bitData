
################################################################# ---
##                 서초 관측소 (401) 강수량: 일별
##                    개발자: 이광춘
##                최종수정일: 2022-09-02
## 데이터셋: https://data.kma.go.kr/data/grnd/selectAwsRltmList.do?pgmNo=56
################################################################# ---

# 1. 패키지 -------------

library(tidyverse)
library(readxl)

source("R/util.R")

# 2. 데이터 -------------

pr_day_raw <- read_excel("inst/extdata/OBS_AWS_DD_20220902194002.xlsx", sheet="OBS_AWS_DD_20220902194002")

# 3. 데이터 가공 ------------

pr_day <- pr_day_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  rename(일강수량 = 일강수량_mm) %>%
  mutate(across(c(지점, 지점명), as.factor)) %>%
  mutate(일시 = lubridate::as_date(일시)) %>%
  filter(일시 != max(일시))

# 4. 내보내기 ---------------------

pr_day <- clean_varnames(pr_day)

write_csv(pr_day, here::here("data-raw", "pr_day.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(pr_day)

usethis::use_data(pr_day, overwrite = TRUE, compress = 'xz')

