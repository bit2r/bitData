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

#' @title 대한민국 인구 데이터
#' @description 1981년 이후 연도별 총인구수와 출생아수와 사망자수를 담은 데이터셋
#' @format 관측점으로 총 41년, 변수로 4개를 갖는 데이터프에임:
#' \describe{
#'   \item{\code{시점}}{integer 시점, 연도 1년 단위}
#'   \item{\code{총인구}}{double 총인구, 단위 (명)}
#'   \item{\code{출생아수}}{double 출생아수, 단위 (명)}
#'   \item{\code{사망자수}}{integer 사망자수, 단위 (명)}
#'}
#' @details KOSIS로부터 통계청 "장래인구추계" 주요인구지표 및 인구동향조사 통계표를 근간으로 제작됨.
#' @source \url{https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1B8000G&conn_path=I3}
#' @source \url{https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1BPA002&conn_path=I3}
"population"

#' @title 국가 온실가스 종류별 배출량
#' @description 환경부 온실가스종합정보센터 (국가 온실가스 인벤토리 보고서)에서
#' @format A data frame with 30 rows and 10 variables:
#' \describe{
#'   \item{\code{시점}}{integer 시점 1년 단위 연도}
#'   \item{\code{총배출량}}{double 총배출량, 단위: 백만tCO₂}
#'   \item{\code{순배출량}}{double 순배출량, 단위: 백만tCO₂}
#'   \item{\code{CO2}}{double CO2, 이산화탄소}
#'   \item{\code{CH4}}{double CH4, 메테인}
#'   \item{\code{N2O}}{double N2O, 이산화질수}
#'   \item{\code{HFCs}}{double HFCs, (에어컨 냉매) 수소불화탄소}
#'   \item{\code{PFCs}}{character (오존층 파괴) 과불화탄소}
#'   \item{\code{SF6}}{double SF6, 육불화황}
#'   \item{\code{LULUCF}}{double 토지이용, 토지이용 변화 및 임업(LULUCF: Land Use, Land Use Change and Forestry)}
#'}
#' @details 저탄소 녹색성장 기본법(제45조)에 따라 매년 국가 온실가스 통계 관리위원회 심의를 거쳐 공표하고 있는 통계표로 KOSIS에서 출처(환경부 온실가스종합정보센터, 국가 온실가스 인벤토리 보고서)를 밝히고 통계표로 제공되고 있다.
#' @source \url{https://kosis.kr/statHtml/statHtml.do?orgId=106&tblId=DT_106N_99_2800021&conn_path=I3}
"co2"


