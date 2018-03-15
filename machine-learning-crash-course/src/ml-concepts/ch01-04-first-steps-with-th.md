# First Steps with TF
---

## Toolkit
* tensorflow toolkit 계층 구조

| Toolkit(s)                         | Description                           |
| ---------------------------------- | ------------------------------------- |
| Estimator                          | High-level, OOP API                   |
| tf.layers / tf.losses / tf.metrics | Libraries for common model components |
| Tensorflow                         | Lower-level APIs                      |

* 처음엔 high-level API를 사용하고, 모델을 더 유연하게 확장하고 싶을 때 low-level을 사용
* Tensorflow는 graph protocol buffer와 (distributed) graph를 실행하기 위한 runtime으로 구성됨
* JVM이 다양한 platform에서 동작하듯이 tensorflow로 CPU와 GPU에서 동작함
* tf.estimator: tensorflow graph 생성과 session 실행을 encapsulate한 모듈
* graph: tensorflow에서 계산 과정은 graph로 표현됨
    * nodes: operations
    * edges: passing the result of an operation (directed)
* tensor: tensorflow의 기본 자료 구조 (N차원 자료 구조)
    * scalars, vectors, matrices
    * integer, floating-point, string
