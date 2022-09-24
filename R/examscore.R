
################################################################# ---
##                 시험 성적 평가 데이터
##                    개발자: 이광춘/김동현
##                최종수정일: 2022-09-24
## 데이터셋 출처: 모대학 기초 영작문 과목
################################################################# ---

# 1. 패키지 -------------

library(tidyverse)

source("R/util.R")

# 2. 데이터 -------------

exam_score_raw <- read_csv("inst/extdata/examscore.csv")

# 3. 데이터 가공 ------------

exam_score <- exam_score_raw

# 4. 내보내기 ---------------------

exam_score <- clean_varnames(exam_score)

write_csv(exam_score, here::here("data-raw", "exam_score.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(exam_score)

usethis::use_data(exam_score, overwrite = TRUE, compress = 'xz')

