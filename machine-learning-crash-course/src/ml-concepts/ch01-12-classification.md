# Classification
---

## Thresholding
* classification threshold (decision threshold): 분류를 위한 기준점
* threshold 튜닝은 hyperparameter 튜닝과는 다름. 모델 자체의 성능보다는 오탐을 얼마나 감수할 것인가에 대한 이야기

## True vs. False and Positive vs. Negative
* TP: 맞는걸 맞다고 함 (정탐)
* FP: 맞는걸 틀리다고 함 (오탐)
* TN: 틀린걸 틀리다고 함 (정탐)
* FN: 틀린걸 맞다고 함 (미탐)

## Accuracy
\\[ Accuracy = \frac{TP + TN}{TP + TN + FP + FN} \\]

## Precision and Recall
\\[ Precision = \frac{TP}{TP + FP} \\]
\\[ Recall = \frac{TP}{TP + FN} \\]

## ROC and AUC
* ROC curve (receiver operating characteristic curve): classification 모델의 성능을 보이기 위한 그래프
    * x축에 FPR, y축에 TPR
    * \\( True Positive Rate (TPR) = \frac{TP}{TP + FN} = Recall \\)
    * \\( False Positive Rate (FPR) = \frac{FP}{FP + TN} \\)
* AUC (Area Under the ROC Curve): ROC curve가 그리는 곡선 아래쪽의 넓이
    * model이 random positive example을 random negative example보다 높게 평가할 확률
    * scale-invariant: AUC는 예측이 얼마나 잘 되는지를 나타냄
    * classification-threshold-invariant: AUC는 threshhold와 상관 없이 model의 예측 품질을 나타냄
    * AUC가 의미 없는 경우
        * 정밀하게 보정된 확률이 필요할 때
        * 단순 예측 품질이 아닌 특수한 최적화가 필요할 때

## Prediction Bias
average of predictions과 average of observations이 얼마나 멀리 떨어져 있는가?
