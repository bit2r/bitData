################################################################################
# KOSIS - 1. 남북군사력 현황
# https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1ZGAB12
################################################################################

library(tidyverse)
library(readxl)

# 1. 한국군 및 유엔군 인명 피해 ------------------------------------------------

military_raw <- read_excel("data-raw/남북군사력_현황_20220620183446.xlsx", sheet = "데이터") %>%
  janitor::clean_names(ascii = FALSE)



