---
layout: post
title: "Python IDE 설정"
comments: true
share: true
date: 2020-02-02 12:00:00
description: Python IDE 설정을 위한 자료 정리.
tags: note
toc: false
sitemap :
    changefreq : daily
    priority : 1.0
---

# Python IDE 설정

## 1. Spyder Project 설정

### 1.1. ISORT 설정

.isort.cfg를 프로젝트 root 폴더에 만들고 아래내용으로 채운다.

```
[settings]
line_length=79
use_parentheses=True
atomic=False
multi_line_output=4
import_heading_stdlib = Standard library imports
import_heading_firstparty = Local imports
import_heading_thirdparty = Third party imports
```

<br>

## 2. VScode Project 설정

### 2.1. 환경변수 설정
.env를 프로젝트 root 폴더에 만들고 아래 내용으로 채운다.

```
PYTHONPATH=/home/ok97465/codepy/scientific
MPLCURSORS={"multiple": 1}
```

<br>

## 3. 자주 사용하는 Library

생성한 Python Project 폴더에 아래 파일을 압축 해제하여 oklib 폴더를 생성한다.  
[oklib Download](/assets/data/oklib.zip)

<br>

## 4. 필요한 Package

| 이름                | 저장소       | 설명                                                           |
|--------------------|-------------|---------------------------------------------------------------|
| basemap            | anaconda    | Matplotlib 지도 투영                                            |
| basemap-data-hires | anaconda    | Matplotlib 지도 투영(with coastlines and political boundaries)  |
| pyqtgraph          | anaconda    | QT를 이용한 빠른 Plot                                            |
| opencv             | anaconda    | 영상처리 Library                                                |
| dill               | anaconda    | Python 변수 파일 입출력                                          |
| mayavi             | anaconda    | surf, mesh등 3d Plot 가속화                                     |
| pyserial           | anaconda    | Serial library                                               |
| rasterio           | anaconda    | GeoTiff library                                               |
| pymap3d            | conda-forge | 지구 좌표계 변화                                                 |
| vispy              | conda-forge | GPU 가속을 이용한 빠른 Plot                                       |
| mplcursors         | conda-forge | Maplotlib에 Data Cursor 추가                                    |
| jupyter_contrib_nbextensions | conda-forge | jupyter notebook extension                          |
| jupyterthemes      | conda-forge | Mapplotlib theme 지원                                          |
| ipympl             | conda-forge | Jupyterlab maplotlib extension                                |
| xeus-python        | conda-forge | Jupyterlab debugger extension                                |
| imutils            | conda-forge | 영상처리 library                                                |
| dataslots          | Github      | dataclass를 __slots__ class로 변환                              |
| numexpr3           | Github      | 간단한 연산에 대한 최적화                                         |
| ctypeslib2         | PyPi        | c header를 python class로 변환                                  |
| pyinstaller        | anaconda    | python을 실행파일로 변환                                          |
| pyautogui          | conda-forge | 컴퓨터 자동화                                                    |
| pyperclip          | conda-forge | 컴퓨터 clipboard 활용                                            |
| python-pptx        | conda-forge | Python에서 pptx 작성                                            |
| python-docx        | conda-forge | Python에서 docx 작성                                            |
| pyswarms           | PyPi        | Partical Swarms Optimization                                   |
| hml_equation_parser| PyPi        | HWP의 수식을 latex로 변환                                         |
| jupyterlab_vim     | PyPi        | jupyterlab vim extension                                       |
| jupyterlab-kite    | PyPi        | jupyterlab kite                                                |

<br>

## 5. Linux에서 한글 입력

LINUX의 QT 프로그램에서는 한글 입력이 가능하지만 Anaconda의 QT를 사용하는 GUI 프로그램의 경우 한글 입력이 되지 않는 경우가 있다. 그럴 경우에는 Linux의 Qt 입력기 Library를 anaconda에 복사해 준다.

```sh
cp /usr/lib/x86_64-linux-gnu/qt5/plugins/platforminputcontexts/libqt5im-nimf.so /home/ok97465/anaconda3/plugins/platforminputcontexts
```