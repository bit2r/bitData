#
# ################################################################# ---
# ##                 전국 대기오염물질 배출량
# ##                    개발자: 이광춘
# ##                최종수정일: 2022-09-02
# ## 데이터셋: https://kosis.kr/statHtml/statHtml.do?orgId=106&tblId=DT_106N_03_0100007&conn_path=I3
# ################################################################# ---
#
# # 1. 패키지 -------------
#
# library(tidyverse)
# library(readxl)
#
# source("R/util.R")
#
# # 2. 데이터 -------------
#
# pollution_raw <- read_excel("inst/extdata/전국_대기오염물질_배출량_20220901230120.xlsx", sheet="데이터")
#
# # 3. 데이터 가공 ------------
#
# pollution_raw %>%
#   janitor::clean_names(ascii = FALSE) %>%
#   rename(시점 = 구분_1)
#   names()
#
# # 4. 내보내기 ---------------------
#
# co2 <- clean_varnames(co2)
#
# write_csv(co2, here::here("data-raw", "co2.csv"))
#
# # 5. 문서화 -----------------------
#
# # sinew::makeOxygen(co2)
#
# usethis::use_data(co2, overwrite = TRUE, compress = 'xz')
#
