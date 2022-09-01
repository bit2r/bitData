#' bitData
#'
#' @name bitData
#' @docType package
#' @import dplyr tibble purrr tidyr readr jsonlite
NULL

#' @title 국방부 공군 남녀 신체측정 데이터
#' @description 공군 장병 초도 보급을 위한 3차원 전신스캐너 운영에 따른 계측값 데이터. 1년동안 운영된 체형측정정보이며 3차원 스캐너의 정확성의 부족으로 실제 개인의 인체 정보와는 다소 차이가 존재함.
#' @format 22개 측정변수와 남녀 총 834명을 측정한 데이터프레임
#' \describe{
#'   \item{\code{성별}}{factor 성별 (남, 여)}
#'   \item{\code{측정일자}}{double 측정일자}
#'   \item{\code{키}}{double 키 cm}
#'   \item{\code{몸무게}}{double 몸무게 kg}
#'   \item{\code{머리둘레}}{double 머리둘레}
#'   \item{\code{희망치수머리}}{double 희망치수머리}
#'   \item{\code{목둘레}}{double 목둘레}
#'   \item{\code{화장}}{double 화장}
#'   \item{\code{젖가슴둘레}}{double 젖가슴둘레}
#'   \item{\code{배꼽수준허리둘레}}{double 배꼽수준허리둘레}
#'   \item{\code{엉덩이둘레}}{double 엉덩이둘레}
#'   \item{\code{샅높이}}{double 샅높이}
#'   \item{\code{발길이}}{double 발길이}
#'   \item{\code{발폭}}{double 발폭}
#'   \item{\code{희망치수신발}}{double 희망치수신발}
#'   \item{\code{윗가슴둘레_겨드랑이}}{double 윗가슴둘레_겨드랑이}
#'   \item{\code{허리둘레_윗허리}}{double 허리둘레_윗허리}
#'   \item{\code{어깨가쪽사이길이}}{double 어깨가쪽사이길이}
#'   \item{\code{팔길이}}{double 팔길이}
#'   \item{\code{등길이}}{double 등길이}
#'   \item{\code{다리가쪽길이}}{double 다리가쪽길이}
#'   \item{\code{총장}}{double 총장}
#'}
#' @details 공공데이터포털 국방부 공군 남녀 신체측정정보로 육군 신체측정정보도 있음.
#' @source \url{https://www.data.go.kr/data/15090354/fileData.do}
#' @source \url{https://www.data.go.kr/data/15090359/fileData.do}
"airforce"


#' 남극 파머 연구소 인근 펭귄 측정 데이터
#'
#' 남극 파머 연구소 인근 서식하고 있는 성체 펭귄을 관측한 데이터로
#' 펭귄종, 파머 제도 서식섬, 측정크기(물갈퀴 길이, 체중, 부리 길이와 깊이), 성별에
#' 대한 정보가 포함되어 있다.
#'
#' \describe{
#'   \item{\code{종명칭}}{factor 펭귄종 명칭 ("아델리", "젠투", "턱끈")}
#'   \item{\code{섬이름}}{factor 남극 파머 제도 섬이름 ("드림", "비스코", "토르거센")}
#'   \item{\code{부리_길이}}{double 부리 길이 (밀리미터)}
#'   \item{\code{부리_깊이}}{double 부리 깊이 (밀리미터)}
#'   \item{\code{물갈퀴_길이}}{integer 물갈퀴 길이 (밀리미터)}
#'   \item{\code{체중}}{integer 체중 (그램)}
#'   \item{\code{성별}}{factor 성별 (수컷, 암컷)}
#'   \item{\code{연도}}{integer 측정 연도 (2007, 2008, or 2009)}
#' }
#' @source {Horst AM, Hill AP, Gorman KB (2020). palmerpenguins: Palmer Archipelago (Antarctica) penguin data. R package version 0.1.0.} \doi{10.5281/zenodo.3960218}
#' @source \url{https://allisonhorst.github.io/palmerpenguins/}
#' @source {Adélie penguins: Palmer Station Antarctica LTER and K. Gorman. 2020. Structural size measurements and isotopic signatures of foraging among adult male and female Adélie penguins (Pygoscelis adeliae) nesting along the Palmer Archipelago near Palmer Station, 2007-2009 ver 5. Environmental Data Initiative.} \doi{10.6073/pasta/98b16d7d563f265cb52372c8ca99e60f}
#' @source {Gentoo penguins: Palmer Station Antarctica LTER and K. Gorman. 2020. Structural size measurements and isotopic signatures of foraging among adult male and female Gentoo penguin (Pygoscelis papua) nesting along the Palmer Archipelago near Palmer Station, 2007-2009 ver 5. Environmental Data Initiative.} \doi{10.6073/pasta/7fca67fb28d56ee2ffa3d9370ebda689}
#' @source {Chinstrap penguins: Palmer Station Antarctica LTER and K. Gorman. 2020. Structural size measurements and isotopic signatures of foraging among adult male and female Chinstrap penguin (Pygoscelis antarcticus) nesting along the Palmer Archipelago near Palmer Station, 2007-2009 ver 6. Environmental Data Initiative.} \doi{10.6073/pasta/c14dfcfada8ea13a17536e73eb6fbe9e}
#' @source {Originally published in: Gorman KB, Williams TD, Fraser WR (2014) Ecological Sexual Dimorphism and Environmental Variability within a Community of Antarctic Penguins (Genus Pygoscelis). PLoS ONE 9(3): e90081. doi:10.1371/journal.pone.0090081}
"penguins"
