# Function
---

## Mathematical function
\\( f: D \rightarrow F \\)
```python
# D: domain
# F: co-domain
# 수학에서의 function은 아래와 같은 pure function으로 표현될 수 있다.
def f(x: D) -> F:
    ...
    return y
```
* Pure function: [https://en.wikipedia.org/wiki/Pure_function](https://en.wikipedia.org/wiki/Pure_function)

## Procedure
계산 절차에 대한 구체적인 기술.
```python
def add(a, b):
    return a + b
```
[https://en.wikipedia.org/wiki/Subroutine](https://en.wikipedia.org/wiki/Subroutine)

## Computational problem
계산 가능할 수도 있는 문제를 표현한 mathematical object
* 입력과 입력에 대응하는 출력의 명세.
* Computational problem의 명세를 만족하는 procedure가 여러 개 있을 수 있다.
* 모든 입력에 대해 유일한 출력을 명시하지 않을 수 있다.
* ex) Algorithm 문제들

[https://en.wikipedia.org/wiki/Computational_problem](https://en.wikipedia.org/wiki/Computational_problem)

## Identity function
\\( id_D(d) = d \\)
```python
idD = lambda d: d
D = {...}
def is_identity_function(idD, D):
    for d in D:
        if idD(d) != d:
            return false
    return true
```

## Function composition
\\( f: A \rightarrow B, \quad g: B \rightarrow C, \quad g \circ f: A \rightarrow C, \quad (g \circ f)(x) = g(f(x)) \\)
```python
def f(x: A) -> B:
    ...
    return y

def g(x: B) -> C:
    ...
    return y

def composite_function(g, f):
    def g_o_f(x):
        return g(f(x))
    return g_o_f

composite_function(g, f)(x) == g(f(x))
```

## One to one (injective) function
```python
# for f: D -> F
f: lambda x: ...
D = {...}
F = {...}
def is_one_to_one(f, D):
    for x in D:
        for y in D:
            if f(x) == f(y) and x != y:
                return false
    return true
```
## Onto (surjective) function
```python
def is_onto(f, D, F):
    _range = set(map(f, D))
    for z in F:
        if z not in _range:
            return false
    return true
```
## Bijective function
```python
def is_bijective(f, D, F):
    return is_one_to_one(f, D) and is_onto(f, D, F)
```
## Invertible function
```python
def is_invertible(f, D, F):
    return is_bijective(f, D, F)
```
