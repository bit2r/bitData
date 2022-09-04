
################################################################# ---
##                 챕(Chip) 데이터셋
##                    개발자: 이광춘
##                최종수정일: 2022-09-04
## 데이터셋: https://chip-dataset.vercel.app/
################################################################# ---
# agreement.txt
# 1. The dataset is provided as-is. The authors do not guarantee that the dataset is correct and any consequence resulting from the use of this dataset is at the user's own risk.
# 2. Users cannot modify or re-distribute the dataset. But generated summaries and figures can be distributed.
# 3. The authors must be acknowledged in any publication (as a citation) that uses this dataset.

# 1. 패키지 -------------

library(tidyverse)
library(readxl)

source("R/util.R")

# 2. 데이터 -------------

chips_raw <- read_csv("inst/extdata/chip_dataset.csv")

# 3. 데이터 가공 ------------

chips <- chips_raw %>%
  # 변수명 정제과정
  janitor::clean_names(ascii = FALSE) %>%
  set_names(c("x1", "제품", "유형", "출시일", "공정선폭",
              "열설계전원", "다이크기", "트랜지스터수", "주파수",
              "파운드리", "공급사", "fp16_gflops", "fp32_gflops", "fp64_gflops")) %>%
  select(matches("[가-힣]+")) %>%
  # 자료형 맞춤과정
  mutate(출시일 = lubridate::ymd(출시일)) %>%
  mutate(출시연도 = lubridate::year(출시일)) %>%
  # 결측값 제거
  drop_na()

# 4. 내보내기 ---------------------

# chips <- clean_varnames(chips)
#
# write_csv(chips, here::here("data-raw", "chips.csv"))
#
# # 5. 문서화 -----------------------
#
# # sinew::makeOxygen(pr_month)
#
# usethis::use_data(chips, overwrite = TRUE, compress = 'xz')

