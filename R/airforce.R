
################################################################# ---
##             국방부 공군 남녀 신체측정정보
##                    개발자: 이광춘
##                최종수정일: 2022-09-01
# 국방부_공군 신체측정정보(남): https://www.data.go.kr/data/15090354/fileData.do
# 국방부_공군 신체측정정보(여): https://www.data.go.kr/data/15090359/fileData.do
################################################################# ---

# 1. 패키지 -------------

library(tidyverse)

source("R/util.R")

# 2. 데이터 -------------
## 2.1. 메타 데이터 -----

airforce_meta <- jsonlite::fromJSON("https://www.data.go.kr/catalog/15090359/fileData.json")

## 2.2. 원본 데이터 -----
af_male_raw <- read_csv("inst/extdata/국방부_공군 신체측정정보(남)_20210928.csv",
                        locale=locale('ko',encoding='euc-kr'))

af_female_raw <- read_csv("inst/extdata/국방부_공군 신체측정정보(여)_20210928.csv",
                        locale=locale('ko',encoding='euc-kr'))

# 3. 데이터 가공 ------------

af_raw <- bind_rows(af_male_raw, af_female_raw)

airforce <- af_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  select(-몸무게_오른쪽, -몸무게_왼쪽) %>%
  drop_na() %>%
  mutate(성별 = factor(성별, levels = c("남", "여")))

# 4. 내보내기 ---------------------

airforce <- clean_varnames(airforce)

write_csv(airforce, here::here("data-raw", "airforce.csv"))
write_rds(airforce_meta, here::here("data-raw", "airforce_meta.rds"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(airforce)

usethis::use_data(airforce, overwrite = TRUE, compress = 'xz')

