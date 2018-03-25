# Representation
---

## Feature Engineering
Raw data로부터 유의미한 feature들을 만들어 내는 과정
* Integer/floating-pont는 별도의 encoding과정이 필요 없음
* String같이 model이 직접적으로 학습에 사용할 수 없는 (계산 불가) 데이터는 encoding 필요
    * vocabulary: feature에 등장할 수 있는 모든 string value들의 집합
    * one-hot encoding: binary vector에서 하나의 element만 1이고 나머지는 0으로 설정

## Qualities of Good Features
* 드물게 사용되는 value는 feature로 사용하지 말 것
    * 단 한번, 혹은 아주 드물게 사용되는 value는 model이 제대로 학습에 활용할 수 없음
* Feature는 명확한 의미를 가져야 함
    * 보는 이에 따라 다르게 해석될 여지가 있으면 안됨
    * noise에도 주의
* Magic value 사용 금지
    * 어떤 값의 상태를 표현하기 위한 magic value는 model 학습을 방해함
    * ex) 0~1 범위의 feature에 값이 존재하지 않음을 표현하기 위해 magic value -1을 할당 (이런 경우 존재 여부를 표현하기 위한 boolean feature를 따로 만드는게 좋음)
* 상황에 따라 변하는 value는 사용하지 말 것
    * ex) 다른 model에서 예측한 값

## Cleaning Data
* scaling: floating-point feature value를 일정한 범위를 갖도록 변환하는 작업
    * feature가 하나일 때는 효과가 거의 없지만, 다수의 feature가 있을 때는 다음과 같은 효과가 있음
        * gradient descent에서 더 빠르게 converge함
        * NaN trap 회피: training에서 floating-point의 표현 범위를 벗어나는 경우
        * model이 각각의 feature에 대해 적절한 weight를 학습하도록 도움: scaling이 없으면 더 큰 범위를 가진 feature의 영향력이 지나치게 커질 수 있음
    * 반드시 모든 feature가 같은 범위로 scale될 필요는 없음
    * Z score
        * \\( scalevalue = (value - mean) / stddev \\)
* outlier 처리
    * log scaling
    * clipping
* binning
    * feature와 label의 관계가 비선형일 때, feature를 여러 개의 bin에 나눠 담아서 구간별로 다른 weight를 갖도록 함
* scrubbing: 누락되거나 틀린 data를 처리
    * 누락
    * 중복
    * 오답
    * 잘못 측정된 feature value
