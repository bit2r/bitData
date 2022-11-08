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

#' @title 전국 대기오염물질 배출량
#' @description 환경부 국가미세먼지정보센터 배출량조사팀에서 연도별로 제공하는 시도별 대기오염물질 배출량
#' @format 350개 행과 11개 변수를 갖는 데이터프레임
#' \describe{
#'   \item{\code{시도}}{integer 시도}
#'   \item{\code{연도}}{integer 연도}
#'   \item{\code{일산화탄소}}{double 일산화탄소, CO2}
#'   \item{\code{질소산화물}}{double 질소산화물, NOx}
#'   \item{\code{황산화물}}{double 황산화물, SOx}
#'   \item{\code{총부유먼지}}{double 총부유먼지, TSP}
#'   \item{\code{미세먼지}}{double 미세먼지, PM-10}
#'   \item{\code{초미세먼지}}{character 초미세먼지, PM-2.5}
#'   \item{\code{블랙카본}}{character 블랙카본, BC}
#'   \item{\code{휘발성유기화합물}}{double 휘발성유기화합물, VOCs}
#'   \item{\code{암모니아}}{double 암모니아, NH3}
#'}
#' @details KOSIS 전국 대기오염물질 배출량으로 해상선박 일부는 바다로 구분되고 비산먼지 및 생물성 연소 부문 배출량 포함.
#' @source \url{https://kosis.kr/statHtml/statHtml.do?orgId=106&tblId=DT_106N_03_0100007&conn_path=I3}
"pollution"

#' @title 서초관측소 1년 시간당 강수량
#' @description 강남역 인근 서초관측소에서 2021년 8월부터 1년간 시간단위로 측정한 강수량
#' @format 8,725 관측시간과 4개 변수를 갖는 데이터프레임:
#' \describe{
#'   \item{\code{지점}}{integer 지점, 서초관측소 번호 401}
#'   \item{\code{지점명}}{integer 지점명, 서초관측소명 서초}
#'   \item{\code{일시}}{POSIXct 일시, 관측시간 YYYY-MM-DD HH:MM}
#'   \item{\code{강수량}}{double 강수량, 단위 mm}
#'}
#' @details 기상현상에 따른 자연재해를 막기 위해 실시하는 지상관측인 방재기상관측자료로 전국 약 510여 지점에 자동기상관측장비(AWS)를 설치하여 자동으로 관측.
#' @source \url{https://data.kma.go.kr/data/grnd/selectAwsRltmList.do?pgmNo=56}
"pr_hour"

#' @title 서초관측소 10년 일별 강수량
#' @description 강남역 인근 서초관측소에서 2012년 9월부터 10년간 일단위로 측정한 강수량
#' @format 3,653 관측일과 4개 변수를 갖는 데이터프레임:
#' \describe{
#'   \item{\code{지점}}{integer 지점, 서초관측소 번호 401}
#'   \item{\code{지점명}}{integer 지점명, 서초관측소명 서초}
#'   \item{\code{일시}}{Date 일시, 관측일 YYYY-MM-DD}
#'   \item{\code{일강수량}}{double 강수량, 단위 mm}
#'}
#' @details 기상현상에 따른 자연재해를 막기 위해 실시하는 지상관측인 방재기상관측자료로 전국 약 510여 지점에 자동기상관측장비(AWS)를 설치하여 자동으로 관측.
#' @source \url{https://data.kma.go.kr/data/grnd/selectAwsRltmList.do?pgmNo=56}
"pr_day"

#' @title 서초관측소 월별 강수량
#' @description 강남역 인근 서초관측소에서 1997년 1월부터 2022년 8월까지 월단위로 측정한 강수량
#' @format 307 관측월과 4개 변수를 갖는 데이터프레임:
#' \describe{
#'   \item{\code{지점}}{integer 지점, 서초관측소 번호 401}
#'   \item{\code{지점명}}{integer 지점명, 서초관측소명 서초}
#'   \item{\code{일시}}{Date 일시, 관측월 YYYY-MM-01}
#'   \item{\code{월강수량}}{double 강수량, 단위 mm}
#'}
#' @details 기상현상에 따른 자연재해를 막기 위해 실시하는 지상관측인 방재기상관측자료로 전국 약 510여 지점에 자동기상관측장비(AWS)를 설치하여 자동으로 관측.
#' @source \url{https://data.kma.go.kr/data/grnd/selectAwsRltmList.do?pgmNo=56}
"pr_month"

#' @title 대기 이산화탄소 추세
#' @description 미국 해양대기청(NOAA)에서 하와이 마우나로아(Mauna Loa)산에서 측정한 대기중 이산화탄소 농도 추세
#' @format 변수 2개와 63개 관측점으로 구성된 데이터프레임:
#' \describe{
#'   \item{\code{year}}{double 연도 (1959~2021) }
#'   \item{\code{mean}}{double 이산화탄소 농도 WMO 척도 }
#'}
#' @details Global Monitoring Laboratory 웹사이트에서 지구온난화에 따른 이산화탄소 추세를 공개하고 있는 데이터셋.
#' @source Trends in Atmospheric Carbon Dioxide \url{https://gml.noaa.gov/ccgg/trends/data.html}
#' @source Carbon Dioxide (CO2) WMO Scale \url{https://gml.noaa.gov/ccl/co2_scale.html}
"global_co2"

#' @title 영어작문 시험성적
#' @description 국내 모대학 영어작문 수강생 시험 평가 점수 데이터셋
#' @format 수강생 72명에 대한 8개 변수를 갖는 데이터프레임
#' \describe{
#'   \item{\code{id}}{double 학번}
#'   \item{\code{department}}{character 전공}
#'   \item{\code{year}}{double 대학 학년(1~4)}
#'   \item{\code{attendance}}{double 출석횟수}
#'   \item{\code{participation}}{double 참여횟수, 발표 등}
#'   \item{\code{homework}}{double 과제 점수}
#'   \item{\code{midterm}}{double 중간고사 점수}
#'   \item{\code{final}}{double 기말고사 점수}
#'}
#' @details Seoul R Meetup 워크샵에서 참여자들이 직접 제출한 데이터
"exam_score"

#' @title 대한민국 참사 데이터
#' @description 대한민국 건국이후 참사에 대한 기록
#' @format 19개 대형참사에 대한 3가지 변수를 갖는 데이터프레임:
#' \describe{
#'   \item{\code{날짜}}{date 참사발생일자}
#'   \item{\code{사망}}{double 사망/희생자 수}
#'   \item{\code{참사내역}}{character 참사 명칭} #'}
#' @details 헤럴드경제 뉴스기사(2014)와 10.29 참사(이태원) 서울경제 실린 참사 데이터
#' @source 헤럴드 경제, [데이터랩] 역대 대형참사…최악은 502명 사망 삼풍 붕괴 \url{http://news.heraldcorp.com/view.php?ud=20140417000274}
#' @source 서울경제, 성수대교 붕괴서 이태원 압사까지…잊을만 하면 터지는 '후진국형 대형참사' \url{https://www.sedaily.com/NewsView/26CJW8PC06}
"disaster"

#' @title 자연재해 태풍 희생자
#' @description 대한민국을 강타해서 많은 희생자가 발생한 태풍 기록
#' @format 10개 태풍에 대한 5개 변수를 갖는 데이터프레임:
#' \describe{
#'   \item{\code{시작일}}{date 태풍 영향 시작일자}
#'   \item{\code{종료일}}{date 태풍 영향 종료일자}
#'   \item{\code{사망}}{double 태풍으로 인한 인명피해(명)}
#'   \item{\code{태풍명}}{character 태풍명칭}
#'   \item{\code{지속일수}}{double 한반도에 태풍이 영향을 미친 일수}
#'}
#' @details 한반도를 강타한 대표적인 자연재해 태풍으로 인한 희생자수와 태풍 주요 기록
#' @source 나무위키 태풍/대한민국/각종 기록 순위 \url{https://namu.wiki/w/태풍/대한민국/각종 기록 순위}
"typhoon"

#' @title 대한민국 대통령 재임기간
#' @description 역대 대통령 재임기간
#' @format 대통령 13명에 대한 5개 변수를 갖는 데이터프레임:
#' \describe{
#'   \item{\code{이름}}{character 대통령 이름}
#'   \item{\code{시작일}}{date 대통령 임기 시작일}
#'   \item{\code{종료일}}{date 대통령 임기 종료일}
#'   \item{\code{임기}}{interval 재임기간}
#'   \item{\code{재임기간}}{double 재임기간 년도숫자 표시}
#'}
#' @details 해방이후 대한민국 대통령 재임기간을 시작일, 종료일, 임기, 재임기간(년도)로 기록
#' @source 위키백과 대한민국의 대통령 목록 \url{https://ko.wikipedia.org/wiki/대한민국의_대통령_목록}
"terms"


