# Regularization: Simplicity
---

## L2 Regularization
overfitting을 막기 위해 loss만 최소화 하는 대신 complexity를 추가 한다
* L2 regularization: complextity = weight들의 제곱의 합

## Lambda
\\[ minimize(Loss(Data|Model) + \lambda \space complexity(Model)) \\]
complextity를 얼마나 반영할 것인가?
* \\( \lambda \\)가 너무 높으면?
    * model이 단순해짐
    * underfitting
* \\( \lambda \\)가 너무 낮으면?
    * model이 복잡해짐
    * overfitting
* 이상적인 \\( \lambda \\)는?
    * data-dependent
