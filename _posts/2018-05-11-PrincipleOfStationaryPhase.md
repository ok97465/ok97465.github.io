---
layout: post
title: "Principle of Stationary Phase"
comments: true
date: 2018-05-11 08:27:00
tags: sympy python math
description: Principle of Stationary Phase에 대해 기술하고 sympy를 이용하여 확인한다.
---

## Principle of Stationary Phase



### Chirp Signal
잉? 원래 되던건가? $a=5$ 이럴수가


```python
from sympy import Symbol, init_printing, exp, pi
sym_t = Symbol('t')
sym_f = Symbol('f')
sym_k_r = Symbol('k_r')

chirp = exp(-1j * sym_k_r * sym_t**2)
```




$$e^{- 1.0 i k_{r} t^{2}}$$


### Frequency Response Of Chirp


```python
from sympy.integrals.transforms import fourier_transform

chirp_frequency = fourier_transform(chirp, sym_t, sym_f)
```




$$- \frac{1.0 i}{\sqrt{k_{r}}} \sqrt{\pi} e^{\frac{i \pi}{4 k_{r}} \left(4.0 \pi f^{2} + k_{r}\right)}$$





![img]({{ '/assets/images/2018-05-11-PrincipleOfStationaryPhase/output_9_0.png' | relative_url }}){: .center-image }