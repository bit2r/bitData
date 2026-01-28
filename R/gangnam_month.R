
################################################################# ---
##                 서초 관측소 (401) 강수량: 월별
##                    개발자: 이광춘
##                최종수정일: 2022-09-02
## 데이터셋: https://data.kma.go.kr/data/grnd/selectAwsRltmList.do?pgmNo=56
################################################################# ---
# NOTE: 이 스크립트는 데이터를 생성하므로 수동으로 실행해야 합니다.
# devtools::document() 시에는 실행되지 않도록 조건부 처리되어 있습니다.

# 패키지 로딩 시에는 실행하지 않음
if (FALSE) {


# 1. 패키지 -------------

library(tidyverse)
library(readxl)

source("R/util.R")

# 2. 데이터 -------------

pr_month_raw <- read_excel("inst/extdata/OBS_AWS_MNH_20220902194208.xlsx", sheet="OBS_AWS_MNH_20220902194208")

# 3. 데이터 가공 ------------

pr_month <- pr_month_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  rename(월강수량 = 월강수량합_mm) %>%
  mutate(across(c(지점, 지점명), as.factor)) %>%
  mutate(일시 = lubridate::as_date(일시))

# 4. 내보내기 ---------------------

pr_month <- clean_varnames(pr_month)

write_csv(pr_month, here::here("data-raw", "pr_month.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(pr_month)

usethis::use_data(pr_month, overwrite = TRUE, compress = 'xz')


}  # end of if (FALSE)
