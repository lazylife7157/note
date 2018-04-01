# Statistics
---

Data를 수집, 정리, 해석하여 신뢰성 있는 결론을 이끌어내는 방법을 연구하는 학문
* sampling unit (추출 단위): 관심 대상 전체를 구성하는 각 개체
* characteristic (특성값): sampling unit의 특성을 나타내는 값
* population (모집단): 전체 sampling unit의 characteristic들의 모임
    * sampling unit의 개수에 따라 finite populatoin, infinite population로 분류
* sample (표본): population중 분석을 위해 실제 관측한 sampling unit의 characteristic들의 모임

## Sampling (표본 추출)
전체 추출 단위를 수집/분석 하는 것이 곤란한 경우 전체를 추론하기 위해 일부를 조사하는 것
* 일부가 전체의 속성을 잘 대표해야함
* 대표성을 확봐기 위해 population의 모든 sampling unit은 sampling될 기회를 동일하게 가져야 함

### Simple random sampling
크기가 N인 finite population에서 n개의 sampling unit으로 구성된 부분집합을 추출하되 그 확률이 \\( \frac1{_NC_n} \\)가 되도록 하는 것
* sampling without replacement (비복원추출): 한번 추출한 것은 되돌려 놓지 않고 다음 것을 뽑음
* sampling with replacement (복원추출): 추출한 것을 되돌려 놓고 다음 것을 뽑음

## Statistical experiment
* experimental unit (실험 단위): 실험이 행해지는 개체
* treatment (처리): 각각의 experimental unit에 특정한 실험 환경이나 실험 조건을 가하는 것
* factor (인자): 실험 환경이나 실험 조건이 나타내는 변수
* response variable (반응 변수): factor의 변화에 따른 반응을 나타내는 변수
* factor level (인자 수준): 개체의 실험 환경이나 실험 조건
* treatment group (처리 집단): 실험을 위한 treatment를 받은 집단
* control group (대조 집단): 관심 factor 이외의 다른 외부 factor의 효과를 통제하기 위한 집단
* statistical experiment계획 원칙
    * 관심 factor 이외의 다른 외부 factor의 효과를 극소화한다
    * 각 experimental unit에 어떤 treatment를 가할지를 정할 때, 모든 experimental unit에 특정 treatment를 받을 기회를 동등하게 부여한다
    * 충분히 많은 experimental unit에 각 treatment를 반복 실시한다
* blocking (블록화): 동일한 treatment에 대해 반응이 유사할 것으로 예상되는 experimental unit들을 모아 군을 형성하는 것