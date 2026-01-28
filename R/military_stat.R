################################################################################
# KOSIS - 1. 남북군사력 현황
# https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1ZGAB12
################################################################################
# NOTE: 이 스크립트는 Excel 파일을 처리하므로 수동으로 실행해야 합니다.
# devtools::document() 시에는 실행되지 않도록 조건부 처리되어 있습니다.

# 패키지 로딩 시에는 실행하지 않음
if (FALSE) {

library(tidyverse)
library(readxl)

source("R/util.R")

# 1. 데이터 읽기 ------------------------------------------------

military_raw <- read_excel("data-raw/남북군사력_현황_20220620183446.xlsx", sheet = "데이터") %>%
  janitor::clean_names(ascii = FALSE)

# 2. 데이터 가공 ------------

# Helper: 한글 숫자 파싱 함수
parse_korean_number <- function(x) {
  if (is.na(x) || x == "") return(NA_real_)

  # 불필요한 문자 제거
  x <- str_remove_all(x, "여|명|정도|약|대|척|기")
  x <- str_trim(x)

  # "110만" -> 1100000
  if (str_detect(x, "만")) {
    parts <- str_split(x, "만")[[1]]
    if (length(parts) == 2) {
      man_part <- parse_number(parts[1])
      rest_part <- ifelse(parts[2] == "" || is.na(parts[2]), 0, parse_number(parts[2]))
      return(man_part * 10000 + rest_part)
    } else {
      num <- parse_number(parts[1])
      return(num * 10000)
    }
  }

  parse_number(x)
}

# `남북한별` 열 forward fill
military_clean <- military_raw %>%
  fill(남북한별, .direction = "down")

# Tidy format으로 변환 (long format)
military_stat_tbl <- military_clean %>%
  pivot_longer(-c(남북한별, 시점),
               names_to = "항목",
               values_to = "값") %>%
  mutate(시점 = as.integer(시점)) %>%
  filter(!is.na(값)) %>%
  mutate(값_숫자 = map_dbl(값, possibly(parse_korean_number, NA_real_)))

# 3. 내보내기 ---------------------

military_stat <- clean_varnames(military_stat_tbl)
write_csv(military_stat, here::here("data-raw", "military_stat.csv"))

# 4. 문서화 -----------------------
# sinew::makeOxygen(military_stat)
usethis::use_data(military_stat, overwrite = TRUE, compress = 'xz')

}  # end of if (FALSE)



