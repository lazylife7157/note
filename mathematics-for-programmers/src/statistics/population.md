# Population
---

* central tendency (대표값): distribution의 특징을 나타내는 값
* parameter (모수): population의 특징을 나타내는 central tendency

## Distribution (분포)
population의 characteristic이 흩어져 있는 상태를 합이 1인 양수 (relative frequency, 상대 도수)로 나타낸 것  
* population mean (모평균): characteristic의 arithmetic mean (산술 평균)으로 정의됨
    * finite population \\( \\{ c_1, c_2, ..., c_N \\} \\) 에 대해서
        * \\( \mu = \frac{1}{N}\sum_{i=1}^{N}c_i\\)
        ```python
        fin_pop = [1, 1, 2, 2, 4, 8, 8, 8, 8, 8]
        N = len(fin_pop)
        mu = sum(fin_pop) / N
        # mu == 5.0
        # numpy.mean
        ```
        * finite population에서 distinct한 characteristic들이 \\( \dot{c_1}, \dot{c_2}, ..., \dot{c_k} \\) 이고, 각각의 frequency를 \\( f_1, f_2, ..., f_k \\) 일 때 population mean은
        * \\( \mu = \sum_{i=1}^{k}\dot{c_i}\frac{f_i}{N}\\)
        ```python
        freqs = {c_dot: fin_pop.count(c_dot) for c_dot in set(fin_pop)}
        mu = sum([c_dot * f for c_dot, f in freqs.items()]) / N
        # mu == 5.0
        ```
    * infinite population인 경우
        * density function (밀도 함수) p에 대해
        * \\( \mu = \sum_{x}xp(x) \\), p는 relative frequency의 극한
        * \\( \mu = \int_{-\infty}^{\infty}xp(x)dx \\), p는 density curve가 나타내는 함수
* pth percentile (제 p 백분위수): characteristic을 오름차순으로 정렬했을 때, p%의 characteristic이 그 값보다 작고, (100-p)%의 characteristic이 그 값보다 크게 되는 값
    * first quartile (\\( Q_1 \\), 제1사분위수): 25th per centile
    * third quartile (\\( Q_3 \\), 제3사분위수): 75th per centile
    * median (\\( Q_2 \\), 중앙값): 50th per centile
        * distribution의 중심 위치를 나타 낸다
        * infinite population의 경우 density curve의 넓이를 이등분 하는 지점
    ```python
    def percentile(fin_pop, p):
        sorted_fin_pop = sorted(fin_pop)
        N = len(sorted_fin_pop)
        index = (p / 100.0) * (N-1)
        i = int(index)
        if i == index:
            return sorted_fin_pop[i]
        else:
            j = i + 1
            low = sorted_fin_pop[i] * (j - index)
            high = sorted_fin_pop[j] * (index - i)
            return low + high

    Q1 = percentile(fin_pop, 25) # Q1 == 2.0
    Q2 = percentile(fin_pop, 50) # Q2 == 6.0
    Q3 = percentile(fin_pop, 75) # Q3 == 8.0
    # numpy.percentile
    ```

## Dispersion (산포, variability, scatter, or spread)
population에서 characteristic이 흩어져 있는 상태  
* mean absolute deviation (평균절대편차, MAD): \\( c_i \\)가 \\( Q_2 \\)로부터 떨어진 거리의 평균
    * \\( MAD = \frac{1}{N}\sum_{i=1}^{N}|c_i - Q_2| \\)
    ```python
    MAD = sum([abs(c - Q2) for c in fin_pop]) / N
    # MAD == 3.0
    ```
* interquartile range (사분위수범위, IQR): \\( Q_3 \\) 와 \\( Q_1 \\) 의 차이, population에서 가운데 50%의 characteristic의 범위를 나타냄
    * \\( IQR = Q_3 - Q_1 \\)
* standard deviation (\\( \sigma \\), 표준편차)
    * deviation (편차): \\( d = c - \mu \\)
    * \\( \sigma = \sqrt{\frac{1}{N}\sum_{i=1}^{N}(c_i - \mu)^2} \\)
    ```python
    sigma = math.sqrt(sum([(c - mu) ** 2 for c in fin_pop]) / N)
    # sigma == 3.0983866769659336
    # numpy.std 
    ```
* variance (분산): standard deviation의 제곱
    * \\( \sigma^2 = \frac{1}{N}\sum_{i=1}^{N}(c_i - \mu)^2 \\)
    ```python
    variance = sum([(c - mu) ** 2 for c in fin_pop]) / N
    # variance == 9.6
    # numpy.var
    ```

## Correlation Coefficient (상관계수)
두 특성의 변화 관계를 나타내는 대표값
* \\( covariance = \frac{1}{N}\sum_{i=1}^{N}(c_i - \mu_1)(c_i - \mu_2) \\)
* \\( \rho = \frac{1}{N}\sum_{i=1}^{N}(\frac{c_i - \mu_1}{\sigma_1})(\frac{c_i - \mu_2}{\sigma_2}) \\)
```python
fin_pop_2d = numpy.array([[0, 0], [1, 0], [1, 0], [1, 1], [1, 1], [2, 0], [2, 1], [2, 2], [2, 2], [2, 2]])

mu1 = numpy.mean(fin_pop_2d[:,0])
mu2 = numpy.mean(fin_pop_2d[:,1])

sigma1 = numpy.std(fin_pop_2d[:,0])
sigma2 = numpy.std(fin_pop_2d[:,1])

rho = numpy.mean([((c1 - mu1) / sigma1) * ((c2 - mu2) / sigma2) for [c1, c2] in fin_pop_2d])
# rho == 0.61706090734453356
```
