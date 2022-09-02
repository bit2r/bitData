
################################################################# ---
##                 전국 대기오염물질 배출량
##                    개발자: 이광춘
##                최종수정일: 2022-09-02
## 데이터셋: https://kosis.kr/statHtml/statHtml.do?orgId=106&tblId=DT_106N_03_0100007&conn_path=I3
################################################################# ---

# 1. 패키지 -------------

library(tidyverse)
library(readxl)

source("R/util.R")

# 2. 데이터 -------------

pollution_raw <- read_excel("inst/extdata/전국_대기오염물질_배출량_20220901230120.xlsx", sheet="데이터")

# 3. 데이터 가공 ------------

pollution <- pollution_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  fill(구분_1, .direction = "down") %>%
  rename(시도 = 구분_1,
         연도 = 시점) %>%
  rename_with( ~ str_remove(., pattern = "_")) %>%
  rename_with( ~ str_extract(., pattern = '[가-힣]+') ) %>%
  mutate(연도 = as.integer(연도),
         시도 = factor(시도,
                       levels = c("서울특별시",
                                  "인천광역시", "부산광역시", "울산광역시", "대구광역시", "광주광역시", "대전광역시",
                                  "세종특별자치시","제주특별자치도",
                                  "강원도", "경기도", "경상남도", "경상북도", "전라남도", "전라북도", "충청남도", "충청북도",
                                  "바다")))

# 4. 내보내기 ---------------------

pollution <- clean_varnames(pollution)

write_csv(pollution, here::here("data-raw", "pollution.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(pollution)

usethis::use_data(pollution, overwrite = TRUE, compress = 'xz')

