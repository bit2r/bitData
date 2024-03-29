% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bitData.R
\docType{data}
\name{pr_month}
\alias{pr_month}
\title{서초관측소 월별 강수량}
\format{
307 관측월과 4개 변수를 갖는 데이터프레임:
\describe{
\item{\code{지점}}{integer 지점, 서초관측소 번호 401}
\item{\code{지점명}}{integer 지점명, 서초관측소명 서초}
\item{\code{일시}}{Date 일시, 관측월 YYYY-MM-01}
\item{\code{월강수량}}{double 강수량, 단위 mm}
}
}
\source{
\url{https://data.kma.go.kr/data/grnd/selectAwsRltmList.do?pgmNo=56}
}
\usage{
pr_month
}
\description{
강남역 인근 서초관측소에서 1997년 1월부터 2022년 8월까지 월단위로 측정한 강수량
}
\details{
기상현상에 따른 자연재해를 막기 위해 실시하는 지상관측인 방재기상관측자료로 전국 약 510여 지점에 자동기상관측장비(AWS)를 설치하여 자동으로 관측.
}
\keyword{datasets}
