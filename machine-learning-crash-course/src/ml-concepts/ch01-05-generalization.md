# Generalization
---

## Peril of Overfitting
* overfitting: making a model more complex than necessary
    * 훈련에 사용된 데이터는 잘 표현하지만, 새로운 데이터를 예측하지 못함
* A machine learning model aims to make good predictions on new, previously unseen data.
    * 훈련에 사용한 데이터로 테스트 하면 안됨
* Key assumptions of supervised ML
    * Draw examples independently and identically (i.i.d) at random from the distribution.
    * The distribution doesn't change within the data set.
    * Draw examples from partitions from the same distribution.
