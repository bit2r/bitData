
################################################################# ---
##                 대한민국 참사 데이터
##                    개발자: 이광춘
##                최종수정일: 2022-10-31
##
################################################################# ---

# 1. 패키지 -------------

library(tidyverse)
library(readxl)
library(rvest)

source("R/util.R")

# 2. 데이터 -------------
## 2.1. 사고공화국(김영삼) -------------
### https://ko.wikipedia.org/wiki/사고_공화국
preside_14_html <- read_html(x = "https://ko.wikipedia.org/wiki/%EC%82%AC%EA%B3%A0_%EA%B3%B5%ED%99%94%EA%B5%AD")


preside_14_raw <- preside_14_html %>%
  html_element('#mw-content-text > div.mw-parser-output > ol') %>%
  html_text() %>%
  str_split(pattern = "\n")

preside_14_tbl <- preside_14_raw %>%
  enframe() %>%
  unnest(cols = c(value)) %>%
  mutate(날짜 = str_extract(value,
                          pattern = "\\d{4}년\\s?\\d{1,2}월\\s?\\d{1,2}일")) %>%
  separate(value, into = c("참사내역", "인명피해"), sep = "-") %>%
  select(날짜, 인명피해, 참사내역) %>%
  mutate(참사내역 = str_remove(참사내역,
                           pattern = "\\d{4}년\\s?\\d{1,2}월\\s?\\d{1,2}일") %>%
           str_trim(.)) %>%
  mutate(날짜 = lubridate::ymd(날짜)) %>%
  separate(인명피해, into = c("사망", "부상"), sep = ",") %>%
  filter(!is.na(사망)) %>%
  mutate(사망 = parse_number(사망),
         부상 = ifelse(is.na(parse_number(부상)), 0, parse_number(부상)))

preside_14_tbl

## 2.2. 사고공화국(김영삼) -------------
# https://www.sedaily.com/NewsView/26CJW8PC06

library(DataEditR)

# data_edit()
big_disaster_raw <- tribble(
~"날짜",~"사망",~"부상",~"참사내역",
"1994-10-21",32,17,"성수대교 붕괴",
"1995-06-29",502,937,"삼풍백화점 붕괴",
"2003-02-18",192,151,"대구 지하철 방화",
"2014-04-16",299,5,"세월호 침몰",
"2022-10-29",154,132,"이태원 압사")

big_disaster <- big_disaster_raw %>%
  mutate(날짜 = lubridate::ymd(날짜))

big_disaster


## 2.3. 자연재해연보(행정안전부) -------------
# https://www.mois.go.kr/frt/bbs/type001/commonSelectBoardArticle.do?bbsId=BBSMSTR_000000000014&nttId=89542

nature_raw <- read_excel("data-raw/(4.1.2) 원피해액 기준 총 피해액 순위.xlsx", skip = 3)

nature_tbl <- nature_raw %>%
  janitor::clean_names(ascii = FALSE) %>%
  select(contains(c("연도", "사망"))) %>%
  drop_na() %>%
  rename(연도 = 종목_연도, 사망 = 사망_실종_명) %>%
  arrange(desc(연도))

nature_tbl


