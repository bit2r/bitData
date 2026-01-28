
################################################################# ---
##        남극 파머 연구소 인근 펭귄 측정정보
##                    개발자: 이광춘
##                최종수정일: 2022-09-01
## Palmer Penguins 데이터셋: https://github.com/allisonhorst/palmerpenguins
################################################################# ---
# NOTE: 이 스크립트는 데이터를 생성하므로 수동으로 실행해야 합니다.
# devtools::document() 시에는 실행되지 않도록 조건부 처리되어 있습니다.

# 패키지 로딩 시에는 실행하지 않음
if (FALSE) {

# 1. 패키지 -------------

library(tidyverse)

source("R/util.R")

# 2. 데이터 -------------

penguins_eng <- palmerpenguins::penguins

# 3. 데이터 가공 ------------

penguins <- penguins_eng %>%
  # 영어 변수명 한글 변환
  set_names(c("종명칭", "섬이름", "부리_길이", "부리_깊이", "날개_길이",
              "체중", "성별", "연도")) %>%
  # 영어 값 한글 값으로 변환 (NA는 유지)
  mutate(성별 = case_when(
           성별 == "male" ~ "수컷",
           성별 == "female" ~ "암컷",
           TRUE ~ NA_character_
         ),
         섬이름 = case_when( str_detect(섬이름, "Biscoe") ~ "비스코",
                          str_detect(섬이름, "Dream") ~ "드림",
                          str_detect(섬이름, "Torgersen") ~ "토르거센"),
         종명칭 = case_when( str_detect(종명칭, "Adelie") ~ "아델리",
                          str_detect(종명칭, "Chinstrap") ~ "턱끈",
                          str_detect(종명칭, "Gentoo") ~ "젠투")
  ) %>%
  # 자료형 변환
  mutate(성별   = factor(성별, levels = c("수컷", "암컷")),
         섬이름 = factor(섬이름, levels = c("비스코", "드림", "토르거센")),
         종명칭 = factor(종명칭, levels = c("아델리", "턱끈", "젠투")))

# 4. 내보내기 ---------------------

penguins <- clean_varnames(penguins)

write_csv(penguins, here::here("data-raw", "penguins.csv"))

# 5. 문서화 -----------------------

# sinew::makeOxygen(penguins)

usethis::use_data(penguins, overwrite = TRUE, compress = 'xz')

}  # end of if (FALSE)

