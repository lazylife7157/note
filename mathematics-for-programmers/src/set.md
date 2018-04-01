# Set
---

## Set
\\( S_1 = \\{1, 2, 3\\} \\)
```python
S1 = {1, 2, 3}
```
[https://en.wikipedia.org/wiki/Set_(mathematics)](https://en.wikipedia.org/wiki/Set_(mathematics))

## In
\\( 1 \in S_1 \\)
```python
1 in S1
```

## Subset
\\( S_1 \subseteq S_2 \\)
```python
S1.issubset(S2)
```

## Cardinality
\\( |S_1| \\)
```python
len(S1)
```

## Cartesian product
\\( S_1 \times S_2 \\)
```python
{(x, y) for x in S1 for y in S2}
```

## Type
Programming language에서 type도 set의 일종으로 생각할 수 있다.
* \\( 1 \in int \\)  
* \\( int \subseteq long \\)
* \\( tuple(int, float) = int \times float \\)

[https://en.wikipedia.org/wiki/Type_theory](https://en.wikipedia.org/wiki/Type_theory)