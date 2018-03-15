# Reducing Loss
---

## An Iterative Approach
* parameter: model의 변수
    * ex) weight
* convergence: training이 진행되면서 loss가 고정되거나 극단적으로 느리게 변하는 상태
* 모델은 다음과 같은 반복적인 계산을 통해 학습된다
    0. parameter 초기화
    1. prediction 생성 (inference)
    2. loss 계산
    3. parameter 갱신
    4. 1번으로

## Gradient Descent
* linear regression에서 weight 와 loss의 관계를 좌표평면에 그려보면 밥그릇 모양이 그려지는데, 경사를 따라 내려가면서 loss를 최소화하는 weight를 찾는 방법
* gradient: vector of partial derivatives
    * vector이르모 방향과 정량적인 값을 가짐
    * gradient는 항상 loss function의 가장 가파른 곳을 향한다
    * loss를 줄이기 위해 gradient의 반대 방향으로 weight를 갱신해야 함

## Learning Rate
* learning rate (step size): weight를 갱신할 때 gradient에 곱해주는 scalar값
    * learning rate가 너무 작으면 모델이 수렴하기까지 걸리는 시간이 길어짐
    * learning rate가 너무 크면 모델이 수렴하지 않거나 발산할 수 있음
* hyperparameter: machine learning algorithm을 최적화 하기 위해 프로그래머가 조작하는 값
    * ex) learning rate

## Optimizing Learning Rate
최적의 learning rate는 data와 algorithm의 특성에 따라 다름

## Stochastic Gradient Descent
* batch: 1번의 iteration에 사용되는 examples 집합
* batch size: batch안의 examples 수
* full-batch: batch size = number of examples
    * data가 크면 계산이 오래 걸림
* stochastic gradient descent: batch size = 1
    * noise가 심함
* mini-batch stochastic gradient descent: batch size = 10 ~ 1000
    * noise는 줄이고, 계산 효율은 올리고
