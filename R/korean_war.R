################################################################################
# 국가기록원 - 6.25 전쟁
# https://theme.archives.go.kr/next/625/viewMain.do
################################################################################
# NOTE: 이 스크립트는 웹 스크래핑을 수행하므로 수동으로 실행해야 합니다.
# devtools::document() 시에는 실행되지 않도록 조건부 처리되어 있습니다.

# 패키지 로딩 시에는 실행하지 않음
if (FALSE) {

library(tidyverse)
library(httr)
library(rvest)

source("R/util.R")

war_url <- "https://theme.archives.go.kr/next/625/damageStatistic.do"

# 1. 한국군 및 유엔군 인명 피해 ------------------------------------------------

인명피해_raw <- read_html(war_url) %>%
  html_elements(css = ".statistic01") %>%
  html_table(fill = TRUE) %>%
  .[[1]]

한국군UN피해_tbl <- 인명피해_raw %>%
  rename( 국적 = 구분) %>%
  slice(2:n()) %>%
  pivot_longer(-국적, names_to = "피해구분", values_to = "군인수") %>%
  filter(피해구분 != "계")

# 2.  육·해·공군 전/사망·실종자·부상자 현황  ----------------------------------

육해공피해_raw <- read_html(war_url) %>%
  html_elements(css = ".statistic02") %>%
  html_table(fill = TRUE) %>%
  .[[1]]

육해공피해_tbl <- 육해공피해_raw %>%
  slice(2:n()) %>%
  pivot_longer(-구분, names_to = "육해공", values_to = "군인수") %>%
  filter(육해공 != "계")

# 3. 북한군 인명 피해 ----------------------------------

북한군_raw <- read_html(war_url) %>%
  html_elements(css = ".statistic03") %>%
  html_table(fill = TRUE) %>%
  .[[1]]

북한군피해_tbl <- 북한군_raw %>%
  pivot_longer(-출처문헌, names_to = "구분", values_to = "군인수") %>%
  filter(! 구분 %in% c("총계", "비고") )

# 4. 중공군 인명 피해 (한국군 추정) ----------------------------------

중공군_raw <- read_html(war_url) %>%
  html_elements(css = ".statistic04") %>%
  html_table(fill = TRUE) %>%
  .[[1]]

중공군피해_tbl <- 중공군_raw %>%
  pivot_longer(-구분, names_to = "손실구분", values_to = "군인수") %>%
  filter(! 손실구분 %in% c("계"),
         구분 != "계")

# 5. 피난민 현황 ----------------------------------

피난민_raw <- read_html(war_url) %>%
  html_elements(css = ".statistic05") %>%
  html_table(fill = TRUE) %>%
  .[[1]]

피난민_tbl <- 피난민_raw %>%
  pivot_longer(-구분, names_to = "시기", values_to = "난민수") %>%
  filter(! 구분 %in% c("계") ) %>%
  separate(시기, into = c("시기", "기타"), sep = " 현재") %>%
  mutate(시기 = lubridate::ym(시기)) %>%
  select(시기, 시도=구분, 난민수) %>%
  mutate(난민수 = parse_number(난민수))

# 6. 인명 피해현황(1950. 6. 25~53. 7. 27) ----------------------------------

인명피해_raw <- read_html(war_url) %>%
  html_elements(css = ".statistic06") %>%
  html_table(fill = TRUE) %>%
  .[[1]]

민간인피해_tbl <- 인명피해_raw %>%
  rename(시도 = 구분) %>%
  pivot_longer(-시도, names_to = "구분", values_to = "사람수") %>%
  filter(! 구분 %in% c("계"),
         시도 != "총계") %>%
  mutate(사람수 = parse_number(사람수))

# 7. 리스트로 결합 ----------------------------------

war_casualty <- list(
  한국군UN피해 = 한국군UN피해_tbl,
  육해공피해 = 육해공피해_tbl,
  북한군피해 = 북한군피해_tbl,
  중공군피해 = 중공군피해_tbl,
  피난민 = 피난민_tbl,
  민간인피해 = 민간인피해_tbl
)

# 8. 내보내기 ----------------------------------

korean_war <- clean_varnames(war_casualty)

usethis::use_data(korean_war, overwrite = TRUE, compress = 'xz')

}  # end of if (FALSE)

