---
layout: post
title: "Lights Out 퍼즐 풀기"
comments: true
share: true
date: 2019-04-21 14:13:00
description: 주어진 초기 상태에서, 모든 버튼의 불을 꺼지도록 하기 위해 눌러야 하는 버튼의 시퀀스를 찾아본다.
tags: python math
sitemap :
    changefreq : daily
    priority : 1.0
---

# Lights Out 퍼즐 풀기

## 1. Lights Out 퍼즐 설명
아래 그림과 같이 일부 버튼은 불이 켜져 있고 다른 일부는 꺼져 있다. 버튼을 누르면 그 버튼의 현재 상태가 반대로 바뀌고 동시에 눌러진 버튼 주변 4개 버튼의 상태도 반대로 바뀐다. 이 퍼즐의 목적은 버튼을 눌러서 모든 버튼의 불을 꺼지게 하는 것이다.






![img]({{ '/assets/images/2019-04-21-190421_LightsOutPuzzle/output_4_0.png' | relative_url }}){: .center-image }





![img]({{ '/assets/images/2019-04-21-190421_LightsOutPuzzle/output_5_0.png' | relative_url }}){: .center-image }


<br>

## 2. 수학적 접근

### 2.1. Galois Filed 2
GF(2)는 갈루아 필드(Galois Filed 2)를 간략하게 표현한 것이다.
갈루아 필드의 +, x는 아래와 같이 정의 된다.








<table><td><table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>x</th>
      <th>0</th>
      <th>1</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>0</td>
      <td>0</td>
    </tr>
    <tr>
      <td>1</td>
      <td>0</td>
      <td>1</td>
    </tr>
  </tbody>
</table></td><td><table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>+</th>
      <th>0</th>
      <th>1</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>0</td>
      <td>1</td>
    </tr>
    <tr>
      <td>1</td>
      <td>1</td>
      <td>1</td>
    </tr>
  </tbody>
</table></td></table>



갈루아 필드의 특성은 다음과 같다.

- 덧셈은 modulo 2 이며, 이것은 배타적 논리합과 같다.
- 뺄셈은 덧셈과 동일하다. 1의 음수는 1이고, 0의 음수는 0이다.
- 곱셈은 일반적인 0, 1의 곱셈과 같다.

<br>

### 2.2. Lights Out 퍼즐을 갈루아 필드로 표현

Lights Out 의 불이 켜진 상태를 1, 꺼진 상태를 0으로 놓는다. 그리고 버튼이 눌려서 상태가 변하는 것을 갈루아 필드의 +1로 생각해 보자.
  
```
켜진 상태(1) + 1 = 꺼진 상태(0)
꺼진 상태(0) + 1 = 켜진 상태(1)
```
위의 수식은 버튼이 눌렸을 때의 변화를 GF(2)의 덧셈으로 표현 가능함을 보여준다.

Light Out 문제는 GF(2)에 포함된 벡터의 덧셈 문제로 변환 될 수 있다.
문제를 간단하게 하기 위해 버튼을 2x2로 제한하면 상태 변화 벡터($v_i$)는 아래와 같이 정의 된다.

<table><td><table border="1" class="dataframe">
  <caption>v<sub>1</sub></caption>
  <thead>
    <tr style="text-align: right;">
      <th>1</th>
      <th>1</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>0</td>
    </tr>
  </tbody>
</table></td><td><table border="1" class="dataframe">
 <caption>v<sub>2</sub></caption>
  <thead>
    <tr style="text-align: right;">
      <th>1</th>
      <th>0</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>1</td>
    </tr>
  </tbody>
</table></td><td><table border="1" class="dataframe">
 <caption>v<sub>3</sub></caption>
  <thead>
    <tr style="text-align: right;">
      <th>1</th>
      <th>1</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>0</td>
      <td>1</td>
    </tr>
  </tbody>
</table></td><td><table border="1" class="dataframe">
 <caption>v<sub>4</sub></caption>
  <thead>
    <tr style="text-align: right;">
      <th>0</th>
      <th>1</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>1</td>
      <td>1</td>
    </tr>
  </tbody>
</table></td></table>



<br>  
초기 상태를 $s$로 놓고 $s$를 0으로 만드는 버튼은 다음과 같이 표현 할 수 있다.

$$s + v_i + v_j + v_k \cdots = 0,\quad \quad \quad i\neq j\neq k\quad(v_1 + v_1 = 0\text{이므로})$$

즉 Lights Out 문제는 GF(2)에서 $s$가 $v_i$의 벡터의 부분 집합으로 표현 할수 있는가의 문제가 된다.

<br>

## 3. 해법을 찾는 효과적인 방안

작성중

<br>

## 4. Python 예제 코드

### 4.1. Galois Field [2]
Python에서 Galois Field를 표현하기 위해서 Class를 선언한다.


```python
class GF2(object):
    """Galois field GF(2)."""
    
    def __init__(self, a=0):
        self.value = int(a) & 1
    
    def __add__(self, rhs):
        return GF2(self.value + GF2(rhs).value)
    
    def __mul__(self, rhs):
        return GF2(self.value * GF2(rhs).value)
    
    def __sub__(self, rhs):
        return GF2(self.value - GF2(rhs).value)
    
    def __truediv__(self, rhs):
        return GF2(self.value / GF2(rhs).value)
    
    def __repr__(self):
        return str(self.value)
    
    def __eq__(self, rhs):
        if isinstance(rhs, GF2):
            return self.value == rhs.value
        return self.value == rhs
    
    def __le__(self, rhs):
        if isinstance(rhs, GF2):
            return self.value <= rhs.value
        return self.value <= rhs
    
    def __lt__(self, rhs):
        if isinstance(rhs, GF2):
            return self.value < rhs.value
        return self.value < rhs
    
    def __int__(self):
        return self.value
    
    def __long__(self):
        return self.value
```

<br>

### 4.2. 상태 천이 행렬 생성
상태 천이 벡터($v_i$)가 하나의 열로 구성된 상태 천이 행렬을 생성한다.




```python
from numpy import zeros
from matplotlib.pyplot import subplots
def state_transition_matrix_lightsout(n):
    """Calculate state trasition matrix of light out."""
    matrix = zeros((n * n, n * n))

    fig, ax = subplots(n, n, figsize=(5, 5))

    for idx_row in range(1, n + 1):
        for idx_col in range(1, n + 1):
            vector = zeros((n + 2, n + 2))
            vector[idx_row - 1, idx_col + 0] = 1
            vector[idx_row + 1, idx_col + 0] = 1
            vector[idx_row + 0, idx_col + 0] = 1
            vector[idx_row + 0, idx_col + 1] = 1
            vector[idx_row + 0, idx_col - 1] = 1
            vector = vector[1:n + 1, 1:n + 1]

            draw_state_trasition(vector, ax[(idx_row - 1), (idx_col - 1)],
                                 grid_width=1)

            matrix[(idx_row - 1) * n + (idx_col - 1) , :] = vector.ravel()

    fig.suptitle("State-Trasition Vectors")

    return matrix

mat = state_transition_matrix_lightsout(3)

fig, ax = subplots(figsize=(5, 5))
draw_state_trasition(mat, ax)
_ = ax.set_title("State-Trasition Matrix")
```


![img]({{ '/assets/images/2019-04-21-190421_LightsOutPuzzle/output_19_0.png' | relative_url }}){: .center-image }



![img]({{ '/assets/images/2019-04-21-190421_LightsOutPuzzle/output_19_1.png' | relative_url }}){: .center-image }


<br>

## 5. 참고자료
[1] 필립 클라인. (2019). 3. 벡터. Coding The Matrix (90) 
[2] https://github.com/pmneila/Lights-Out