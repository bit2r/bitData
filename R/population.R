
################################################################# ---
##                 대한민국 인구데이터
##                    개발자: 이광춘
##                최종수정일: 2022-09-02
## KOSIS 인구 데이터셋: https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1BPA002&conn_path=I3
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

pop_raw <- read_excel("inst/extdata/KOSIS_인구데이터.xlsx", sheet="데이터")

# 3. 데이터 가공 ------------

population <- pop_raw %>%
  mutate( 시점 = as.integer(시점),
          사망자수 = as.integer(사망자수))

# 4. 내보내기 ---------------------

population <- clean_varnames(population)

write_csv(population, here::here("data-raw", "population.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(population)

usethis::use_data(population, overwrite = TRUE, compress = 'xz')


}  # end of if (FALSE)
