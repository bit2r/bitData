
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bitData <a href='https://bit2r.github.io/bitData/'><img src="man/figures/logo.png" align="right" height="134" /></a>

`bitData` 데이터 패키지의 목표는 통계 대중화와 디지털 불평등 해소를
위해서 누구나 쉽게 즉시 사용할 수 있는 통계, 데이터 과학, 기계학습,
딥러닝에 사용될 데이터셋을 모아 제공하는 것입니다.

## 설치방법

[GitHub](https://github.com/)에 `bitData` 데이터 패키지 관련 소스코드와
원천 데이터를 포함한 모든 정보가 저장되어 있습니다. 다음 명령어를
사용해서 데이터셋을 설치하여 즉시 사용할 수 있습니다.

``` r
# install.packages("remotes")
remotes::install_github("bit2r/bitData")
```

## 데이터셋

한국인이면 누구나 체감할 수 있는 직관적이고 현실감있는 데이터를 모아
제공하고 있고 `bitData` 데이터 패키지 설치 후 다음 명령어를 통해서 즉시
사용할 수 있습니다.

``` r
library(bitData)
# data(package = 'bitData')

bitData_list <- data(package = 'bitData')
bitData_list$results %>%
  as_tibble() %>%
  select(Item, Title)
#> # A tibble: 2 × 2
#>   Item     Title                                               
#>   <chr>    <chr>                                               
#> 1 airforce 국방부 공군 남녀 신체측정 데이터                    
#> 2 penguins 남극 파머 연구소 근처 야생 성인 펭귄 신체측정 데이터
```

### 남극 팔머 펭귄

붓꽃 데이터(Iris Data) 를 대신해 시각화와 데이터 과학, 기계학습에
전세계적으로 많이 사용되고 있는 데이터셋으로 파머 펭귄(Palmer Penguins)
데이터셋을 번역하여 순 한글로 제공된다.

``` r
head(penguins)
#> # A tibble: 6 × 8
#>   종명칭 섬이름   부리_길이 부리_깊이 물갈퀴_길이  체중 성별   연도
#>   <fct>  <fct>        <dbl>     <dbl>       <int> <int> <fct> <int>
#> 1 아델리 토르거센      39.1      18.7         181  3750 수컷   2007
#> 2 아델리 토르거센      39.5      17.4         186  3800 암컷   2007
#> 3 아델리 토르거센      40.3      18           195  3250 암컷   2007
#> 4 아델리 토르거센      36.7      19.3         193  3450 암컷   2007
#> 5 아델리 토르거센      39.3      20.6         190  3650 수컷   2007
#> 6 아델리 토르거센      38.9      17.8         181  3625 암컷   2007
```

### 공군 신체정보

대한민국 공군 남녀 신체정보를 공공데이터 포털에서 다운로드 받아 분석이
가능한 형태로 데이터가 결측값을 제거하여 정제했다.

``` r
head(airforce)
#> # A tibble: 6 × 22
#>   성별  측정일자      키 몸무게 머리둘레 희망치수…¹ 목둘레  화장 젖가…² 배꼽수…³
#>   <fct> <date>     <dbl>  <dbl>    <dbl>      <dbl>  <dbl> <dbl>  <dbl>    <dbl>
#> 1 남    2021-06-16  169.   55.6     54.1          0   34.7  60.3   86.4     67.5
#> 2 남    2021-06-16  183.   66.6     55.8          0   36.3  87.5   90.6     75.7
#> 3 남    2021-06-16  178.   79.7     58.5          0   38.3  77     98.6     85.2
#> 4 남    2021-06-16  171.   69.4     56.3          0   37    77     93.9     78.5
#> 5 남    2021-06-16  174.   63.9     55.5          0   36.1  62.3   89.9     74.2
#> 6 남    2021-06-16  172.   81.5     58.9          0   39.2   0    101.       0  
#> # … with 12 more variables: 엉덩이둘레 <dbl>, 샅높이 <dbl>, 발길이 <dbl>,
#> #   발폭 <dbl>, 희망치수신발 <dbl>, 윗가슴둘레_겨드랑이 <dbl>,
#> #   허리둘레_윗허리 <dbl>, 어깨가쪽사이길이 <dbl>, 팔길이 <dbl>, 등길이 <dbl>,
#> #   다리가쪽길이 <dbl>, 총장 <dbl>, and abbreviated variable names
#> #   ¹​희망치수머리, ²​젖가슴둘레, ³​배꼽수준허리둘레
```
