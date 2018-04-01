# Symbols in code

## Operations
\\( sum = \sum_{i = begin}^{end} i \\)
```python
    def sum(begin, end):
        add = lambda a, b: a + b
        return reduce(add, [i for i in range(begin, end + 1)])
```
\\( sum = \sum_{i \in S} i \\)
```python
    def sum(S):
        add = lambda a, b: a + b
        return reduce(add, [i for i in S])
```
\\( prod = \prod_{i \in S} f(i) \\)
```python
    def prod(S):
        f = lambda x: x
        mul = lambda a, b: a * b
        return reduce(mul, [f(i) for i in S])
```
