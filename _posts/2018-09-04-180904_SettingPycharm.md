---
layout: post
title: "Pycharm(Python)을 Matlab 처럼"
comments: true
share: true
date: 2018-09-04 23:15:00
description: Spyder IDE는 Python을 Matlab처럼 사용 할 수 있는 Open Source 이지만, 안정성과 편의성이 좀 떨어진다. 그래서 개발툴로서 완성도 높은 Pycharm의 설정을 수정하여 Matlab처럼 사용하는 방법을 정리한다.
tags: python pycharm matlab
sitemap :
  changefreq : daily
  priority : 1.0
---

# Pycharm(Python)을 Matlab 처럼 사용하기
---

<br>

## 1. Script Run 시 현재 Console에서 실행
File --> Settings --> Build, Execution, Deployment --> Console
  * Always show debug console : 활성화
  * User existing console for "Run with Python console" : 활성화

<br>

## 2. Console에 자주 쓰는 함수 자동 import
File --> Settings --> Build, Execution, Deployment --> Console --> Python Console --> Start Script에 추가
``` python
    %load_ext autoreload
    %autoreload 2

    from oklib.init import load_func_frequently
    load_func_frequently(globals())
```

<br>

## 3. Matplotlib의 Cursor Marker 기능 활성화
```sh
pip install mplcursors
```
File --> Settings --> Build, Execution, Deployment --> Console --> Python Console --> Enviroment variables에 추가  
Name : MPLCURSORS  
Value : {"multiple": 1}

<br>

## 4. Variable 창에서 자주 쓰는 함수 숨김
pycharm 폴더/helpers/pydev/\_pydev\_bundle/pydev\_ipython\_console.py의 get\_ipython\_hidden\_vars\_dict에 추가

``` python
    user_hidden_dict.setdefault('rad2deg', '')
    user_hidden_dict.setdefault('deg2rad', '')
    user_hidden_dict.setdefault('arange', '')
    user_hidden_dict.setdefault('arccos', '')
    user_hidden_dict.setdefault('arcsin', '')
    user_hidden_dict.setdefault('arctan', '')
    user_hidden_dict.setdefault('array', '')
    user_hidden_dict.setdefault('conj', '')
    user_hidden_dict.setdefault('cos', '')
    user_hidden_dict.setdefault('sin', '')
    user_hidden_dict.setdefault('tan', '')
    user_hidden_dict.setdefault('exp', '')
    user_hidden_dict.setdefault('zeros', '')
    user_hidden_dict.setdefault('pi', '')
    user_hidden_dict.setdefault('randn', '')
    user_hidden_dict.setdefault('standard_normal', '')
    user_hidden_dict.setdefault('randint', '')
    user_hidden_dict.setdefault('sqrt', '')
    user_hidden_dict.setdefault('fig', '')
    user_hidden_dict.setdefault('ax', '')
```

<br>

## 5. Matplotlib의 한글 표시
파이썬폴더/Lib/site-packages/matplotlib/mpl-data/matplotlibrc 파일 수정  
  * backend      : Qt5Agg  
  * font.family         : Malgun Gothic  
  * axes.unicode_minus  : False  
  * savefig.transparent : True  
  * figure.facecolor : 0.95

<br>

## 6. 자주쓰는 Keyword 추가
File --> Settings --> Live Templates --> Python 에 아래 명령들 추가

<br>

### 6.1. clear 명령
Abbreviation : clear  
Template text :  
``` python
    from oklib.init import ipython_clear
    ipython_clear(b_plot_close=True)
    from oklib.init import load_func_frequently
    load_func_frequently(globals())

```

<br>

### 6.2. 새로운 figure 명령
Abbreviation : fig,  
Template text :  
``` python
    fig, ax = plt.subplots()
```

<br>

### 6.3. matlab 명령 import
Abbreviation : matlab   
Template text :  
``` python
    import numpy as np
    import matplotlib.pyplot as plt
    from matplotlib.pyplot import plot, hist, figure
    from oklib.signal import (db2, nextpow2, sind, cosd, tand, arcsind, arccosd, arctand)
    from oklib.plot import imagesc
    from oklib.file import save_vars, load_vars
    from numpy import (pi, deg2rad, rad2deg, unwrap, angle, zeros, array, ones, linspace, cumsum, diff, arange, interp,
                       conj, exp, sqrt)
    from numpy import (cos, sin, tan, arcsin, arccos, arctan)
    from numpy import (amin, amax, argmin, argmax, sum, mean)
    from numpy.fft import (fft, ifft, fft2, ifft2, fftshift, ifftshift)
    from numpy.linalg import svd, norm
    from numpy.random_intel import randn, standard_normal, randint

```

<br>

### 6.4. save/load 명령추가
Abbreviation : save  
Template text :  
``` python
    save_vars('$END$', globals())
```

Abbreviation : load  
Template text :  
``` python
    load_vars('$END$', globals())
```

<br>

## 7. File 생성 시 주석 추가
File --> Settings --> File and Code Templates --> Python script에 추가
``` python
    # -*- coding: utf-8 -*-
    r"""[Title]

    [Description]

    Example
    -------
    [example]

    Notes
    -----
    [Notes]

    References
    ----------
    .. [] 책: 저자명. (발행년). Title of chapter. In 편집자명 (역할), title of book (쪽). 발행지 : 발행사
    .. [] 학위 논문: 학위자명, "논문제목", 대학원 이름 석사 학위논문, 1990 
    .. [] 저널 논문: 저자. "논문제목". 저널명, . pp.

    :File name: ${NAME}.py
    :author: ok97465
    :Date created: ${DATE} ${TIME}
    """


```

<br>

## 8. Docstring format 변경
File --> Settings --> Tools --> Python Integrated Tools --> Docstring format을 Numpy로 변경

<br>

## 9. Offline 환경에서 Quick Document 사용 시 버벅임 최소화
File --> Settings --> Tools --> Python External Documentation의 항목 전체 삭제

<br>

## 10. 자주 쓰는 함수 추가
생성한 Python Project 폴더에 아래 파일을 압축 해제하여 oklib 폴더를 생성한다.  
[oklib Download](/assets/data/oklib.zip)