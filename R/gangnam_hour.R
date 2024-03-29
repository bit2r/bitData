
################################################################# ---
##                 서초 관측소 (401) 강수량: 시간별
##                    개발자: 이광춘
##                최종수정일: 2022-09-02
## 데이터셋: https://data.kma.go.kr/data/grnd/selectAwsRltmList.do?pgmNo=56
################################################################# ---

# 1. 패키지 -------------

library(tidyverse)
library(readxl)

source("R/util.R")

# 2. 데이터 -------------

pr_hour_raw <- read_excel("inst/extdata/OBS_AWS_TIM_20220902195636.xlsx", sheet="OBS_AWS_TIM_20220902195636")

# 3. 데이터 가공 ------------

pr_hour <- pr_hour_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  rename(강수량 = 강수량_mm) %>%
  mutate(across(c(지점, 지점명), as.factor))

# 4. 내보내기 ---------------------

pr_hour <- clean_varnames(pr_hour)

write_csv(pr_hour, here::here("data-raw", "pr_hour.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(pr_hour)

usethis::use_data(pr_hour, overwrite = TRUE, compress = 'xz')

