# Descending into ML
---

## Linear Regression
* linear relationship: \\( y' = b + w_1x_1 \\)
    * \\( y' \\): predicted label
    * \\( b \\): bias (y-intercept)
    * \\( w_1 \\): weight of feature 1
    * \\( x_1 \\): feature
* inference \\( \approx \\) predict

## Training and Loss
* training: empirical risk minimization
    * examples를 통해 loss를 최소화 하는 model을 찾는 과정
* error: label과 prediction의 차이
    * signed
* loss: bad prediction에 대한 penalty
    * unsigned
* loss function: loss를 계산하기 위한 함수
    * ex) squared loss(\\( L_2 \\) loss), mean square error (MSE)
