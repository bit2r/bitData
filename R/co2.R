
################################################################# ---
##                 국가 온실가스 종류별 배출량 추이
##                    개발자: 이광춘
##                최종수정일: 2022-09-02
## KOSIS 온실가스 데이터셋: https://kosis.kr/statHtml/statHtml.do?orgId=106&tblId=DT_106N_99_2800021&conn_path=I3
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

co2_raw <- read_excel("inst/extdata/국가_온실가스_종류별_배출량_추이_20220901230419.xlsx", sheet="데이터")

# 3. 데이터 가공 ------------

co2 <- co2_raw %>%
  mutate( 시점 = as.integer(시점))

# 4. 내보내기 ---------------------

co2 <- clean_varnames(co2)

write_csv(co2, here::here("data-raw", "co2.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(co2)

usethis::use_data(co2, overwrite = TRUE, compress = 'xz')


}  # end of if (FALSE)
