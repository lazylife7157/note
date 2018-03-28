# Logistic Regression
---

classification 문제에서 가능한 discrete label에 대한 확률을 계산하는 모델
## Calculating a Probability
* sigmoid function: 0~1 범위의 값으로 만들어 줌
    * \\( y'= \frac{1}{1 + e^{-\sigma}} \\)
    * logistic regression에서 \\( \sigma = b + w_1x_1 + w_2x_2 + ... w_nx_n \\)

## Model Training
* Logistic regression models generate probabilities.
* Log Loss is the loss function for logistic regression.
* Logistic regression is widely used by many practitioners.
