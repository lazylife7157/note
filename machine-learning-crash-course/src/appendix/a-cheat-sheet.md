# A - Cheat sheet
---

## Terminology
* label: 예측할 대상
* feature: 입력 변수
* prediction: 예측값
* example: instance of data (labeled, unlabeled)
* model: feature와 label 사이의 관계를 정의함
* training: model을 만들거나 학습시키는 과정
* inference: trained model에 unlabeled example을 입력으로 주어 prediction을 얻는 과정
* error: label과 prediction의 차이
* loss: bad prediction에 대한 penalty
* loss function: loss를 계산하기 위한 함수
* parameter: model의 변수
* convergence: training이 진행되면서 loss가 고정되거나 극단적으로 느리게 변하는 상태
* gradient: vector of partial derivatives
* learning rate (step size): weight를 갱신할 때 gradient에 곱해주는 scalar값
* hyperparameter: machine learning algorithm을 최적화 하기 위해 프로그래머가 조작하는 값
* batch: 1번의 iteration에 사용되는 examples 집합
* batch size: batch안의 examples 수

## Terminology: Tensorflow specific
* graph: tensorflow에서 계산 과정은 graph로 표현됨
    * nodes: operations
    * edges: passing the result of an operation (directed)
* tensor: tensorflow의 기본 자료 구조 (N차원 자료 구조)

## Supervised learning
labled example로 model을 학습시킴
* Regression
    * Continuous value를 예측
    * Output이 연속적인 값
* Classification
    * Discrete value를 예측
    * Output이 class

## Linear regression
선형 데이터를 표현하고 예측함
\\[ \vec{y} = W\vec{x} + b \\]
\\[
    \vec{y}: label \quad
    W: weight \quad
    x: feature \quad
    b: bias
\\]
