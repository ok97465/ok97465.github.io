---
layout: post
title: "Python에서 Matlab 사용하기"
comments: true
share: true
date: 2018-10-10 01:08:00
description: Python에서 Matlab을 실행하고 데이터를 주고 받는다.
tags: python matlab
sitemap :
  changefreq : daily
  priority : 1.0
---

# MATLAB API in Python

## 1. MATLAB API 설치
```bash
cd  /${MATLAB}/extern/engines/python
python setup.py install
```

<br>

## 2. Import MATLAB


```python
import matlab.engine
import numpy as np
from numpy import array, arange
from matlab import double as double_m
```

<br>

## 3. MATLAB 시작하기


```python
eng = matlab.engine.start_matlab()
```

<br>

## 4. Python과 동기된 MATLAB GUI 띄우기


```python
eng.desktop(nargout=0)
```

<br>

## 5. MATLAB에 명령 보내기


```python
eng.workspace['x'] = 3
a = eng.eval("x+3;")
eng.eval("y = 5;", nargout=0)
print(eng.workspace['x'])
```

<br>

## 6. MATLAB 행렬 읽어오기


```python
x_matlab = eng.linspace(0, 1000, -1, 1000)
x_py = array(x_matlab)
```

<br>

## 7. MATLAB에 경로 추가


```python
eng.addpath('/home/kkk/matlab_utility', nargout=0)
```

<br>

## 8. MATLAB의 함수 실행


```python
x_randn_matlab = eng.randn(4,4)
x_randn_matlab_T = eng.transpose(x_randn_matlab)
```

<br>

## 9. MATLAB에 데이터 저장하기


```python
y = arange(16).reshape(4, 4)
y_matlab = eng.double(double_m(y.tolist()))
y_matlab_T = eng.transpose(y_matlab)
```

<br>

## 10. MATLAB 종료하기


```python
eng.quit()
```