
################################################################# ---
##                 봉담고등학교 등교 데이터
##                    개발자: 이광춘
##                최종수정일: 2022-11-08
## 출처: 봉담고등학교 강우혁 선생님
################################################################# ---
# NOTE: 이 스크립트는 데이터를 생성하므로 수동으로 실행해야 합니다.
# devtools::document() 시에는 실행되지 않도록 조건부 처리되어 있습니다.

# 패키지 로딩 시에는 실행하지 않음
if (FALSE) {


# 1. 패키지 -------------

library(tidyverse)
library(lubridate)
library(readxl)

source("R/util.R")

# 2. 데이터 ------------

school_raw <- read_excel("inst/extdata/봉담고.xlsx")

# 3. 데이터 가공 ------------

school_tbl <- school_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  # 변수명 정리
  set_names(c("요일", "통학방식", "출발시간",
    "도착시간", "지각여부", "소요시간", "위도", "경도")) %>%
  # 자료형
  mutate(출발시간 = hms(출발시간),
         도착시간 = hms(도착시간)) %>%
  mutate(소요시간 = 도착시간 - 출발시간)  %>%
  # 범주형 연속형 변수 단순화
  mutate(통학방식 = case_when(str_detect(통학방식, "(버스.*도보)") ~ "버스+도보",
                          TRUE ~ 통학방식))

school_tbl

# 4. 내보내기 ---------------------
school <- clean_varnames(school_tbl)
write_csv(school, here::here("data-raw", "school.csv"))


# 5. 문서화 -----------------------
# sinew::makeOxygen(school)
usethis::use_data(school, overwrite = TRUE, compress = 'xz')



}  # end of if (FALSE)
