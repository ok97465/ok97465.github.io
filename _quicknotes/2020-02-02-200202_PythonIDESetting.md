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
profile = black
multi_line_output=3
import_heading_stdlib = Standard library imports
import_heading_firstparty = Local imports
import_heading_thirdparty = Third party imports
```

<br>

## 2. 자주 사용하는 Library

생성한 Python Project 폴더에 아래 파일을 압축 해제하여 oklib 폴더를 생성한다.  
[oklib Download](/assets/data/oklib.zip)

<br>

## 3. 필요한 Package

 | 이름                          | 저장소        | 설명                                                            | 
 | ----------------------------- | ------------- | --------------------------------------------------------------- | 
 | opencv                        | anaconda      | 영상처리 Library                                                | 
 | mayavi                        | anaconda      | surf, mesh등 3d Plot 가속화                                     | 
 | pyqtgraph                     | anaconda      | QT를 이용한 빠른 Plot                                           | 
 | basemap                       | anaconda      | Matplotlib 지도 투영                                            | 
 | basemap-data-hires            | anaconda      | Matplotlib 지도 투영(with coastlines and political boundaries)  | 
 | rasterio                      | anaconda      | GeoTiff library                                                 | 
 | dill                          | anaconda      | Python 변수 파일 입출력                                         | 
 | pyserial                      | anaconda      | Serial library                                                  | 
 | pymap3d                       | conda-forge   | 지구 좌표계 변화                                                | 
 | skyfield                      | conda-forge   | Elegant astronomy for Python                                  | 
 | vpython                       | conda-forge   | 3D animation 생성                                         | 
 | vispy                         | conda-forge   | GPU 가속을 이용한 빠른 Plot                                     | 
 | shapely                       | conda-forge   | Manipulation and analysis of geometric objects                  | 
 | mplcursors                    | conda-forge   | Maplotlib에 Data Cursor 추가                                    | 
 | jupyter_contrib_nbextensions  | conda-forge   | jupyter notebook extension                                      | 
 | jupyterthemes                 | conda-forge   | Mapplotlib theme 지원                                           | 
 | debugpy                       | conda-forge   | Debug tool for nvim                                             | 
 | pylsp-mypy                    | conda-forge   | Mypy linter for the Python LSP Server.                          | 
 | pyupgrade                     | conda-forge   | A tool to automatically upgrade syntax for newer versions.      | 
 | ipympl                        | conda-forge   | Jupyterlab maplotlib extension                                  | 
 | xeus-python                   | conda-forge   | Jupyterlab debugger extension                                   | 
 | imutils                       | conda-forge   | 영상처리 library                                                | 
 | qscintilla2                   | conda-forge   | Syntax highlight editor                                         | 
 | borb                          | conda-forge   | PDF util                                                        | 
 | pytesseract                   | conda-forge   | optical character recognition (OCR) tool                        | 
 | numexpr3                      | Github        | 간단한 연산에 대한 최적화                                       | 
 | ctypeslib2                    | PyPi          | c header를 python class로 변환                                  | 
 | refurb                        | PyPi          | A tool for refurbishing and modernizing Python codebases       | 
 | tkinterdnd2                   | PyPi          | Tkinter native drag and drop support for windows, unix and Mac OSX       | 
 | pyinstaller                   | anaconda      | python을 실행파일로 변환                                        | 
 | pyautogui                     | conda-forge   | 컴퓨터 자동화                                                   | 
 | pyperclip                     | conda-forge   | 컴퓨터 clipboard 활용                                           | 
 | python-pptx                   | conda-forge   | Python에서 pptx 작성                                            | 
 | python-docx                   | conda-forge   | Python에서 docx 작성                                            | 
 | jupyterlab-git                | conda-forge   | Jupyterlab에서 git 사용                                         | 
 | jupyterlab-variableinspector  | conda-forge   | Jupyterlab variableinspector                                    | 
 | nb_black                      | conda-forge   | jupyterlab black formatter extension                            | 
 | jupyterlab-drawio             | conda-forge   | jupyterlab drawio extension                                     | 
 | jupyterlab_vim                | conda-forge   | jupyterlab vim extension                                        | 
 | pynvim                        | conda-forge   | util for nvim                                                   | 
 | Pyside2                       | conda-forge   | pyside2                                                         | 
 | Geopandas                     | conda-forge   | working with geospatial data in python easier.                  | 
 | itur                          | PyPi          | the ITU-R Recommendations for atmospheric attenuation modeling. | 
 | cartopy                       | PyPi          | cartographic python library with matplotlib support.            | 
 | doq                           | PyPi          | Docstring generator.                                            | 
 | cmake-language-server         | PyPi          | cmake lsp for nvim-lsp                                          | 
 | qt-material                   | PyPi          | Qt material theme                                               | 
 | pyswarms                      | PyPi          | Partical Swarms Optimization                                    | 
 | hml_equation_parser           | PyPi          | HWP의 수식을 latex로 변환                                       | 
 | mplcyberpunk                  | PyPi          | cyberpunk theme of matplotlib                                   | 
 | lukas-blecher/LaTeX-OCR       | Github        | 수식을 Latex으로 변환.(새로운 환경에 설치할것)                        | 


<br>

## 4. 필요한 Package for ML

| 이름                | 저장소       | 설명                                                           |
|--------------------|-------------|---------------------------------------------------------------|
| pytorch            | pytorch     | https://pytorch.org/get-started/locally/에서 확인               |
| pytorch-lightning  | conda       | lightweight PyTorch wrapper for high-performance              |
| torchmetrics       | conda       | collection of ML metrics for distributed, scalable PyTorch    |
| mlxtend            | conda       | Mlxtend is extension for ML                                   |
| tensorboard        | conda       | tensorboard                                                   |
| captum             | conda       | a model interpretability and understanding library for PyTorch|
| pytorchviz         | pip         | Visualize ML model backward(need graphviz)                    |
| hiddenlayer        | pip         | Visualize ML model forward                                    |

<br>

## 5. Linux에서 한글 입력

LINUX의 QT 프로그램에서는 한글 입력이 가능하지만 Anaconda의 QT를 사용하는 GUI 프로그램의 경우 한글 입력이 되지 않는 경우가 있다. 그럴 경우에는 Linux의 Qt 입력기 Library를 anaconda에 복사해 준다.

```sh
cp /usr/lib/x86_64-linux-gnu/qt5/plugins/platforminputcontexts/libqt5im-nimf.so /home/ok97465/anaconda3/plugins/platforminputcontexts
```

<br>

## 6. VScode Project 설정

### 6.1. 환경변수 설정
.env를 프로젝트 root 폴더에 만들고 아래 내용으로 채운다.

```
PYTHONPATH=/home/ok97465/codepy/scientific
MPLCURSORS={"multiple": 1}
```

Setting.json 설정

```json
{
    "terminal.integrated.inheritEnv": false,
    "terminal.integrated.tabs.enabled": true,
    "editor.fontFamily": "D2Coding Ligature",
    "editor.fontLigatures": true,
    "editor.snippetSuggestions": "top",
    "editor.minimap.enabled": false,
    "editor.lineNumbers": "on",
    "editor.rulers": [
        88
    ],
    "editor.tabSize": 4,
    "editor.cursorStyle": "line",
    "editor.insertSpaces": false,
    "editor.wordSeparators": "/\\()\"':,.;<>~!@#$%^&*|+=[]{}`?-",
    "editor.wordWrap": "off",
    "editor.formatOnPaste": true,
    "editor.formatOnSave": true,
    "editor.formatOnType": true,
    "editor.formatOnSaveMode": "modifications",
    "[python]": {
        "editor.formatOnSaveMode": "file"
    },
    "python.formatting.provider": "black",
    "python.showStartPage": true,
    "python.analysis.diagnosticMode": "workspace",
    "python.languageServer": "Pylance",
    "python.linting.enabled": true,
    "python.linting.lintOnSave": true,
    "python.linting.pylintEnabled": true,
    "python.linting.pylintArgs": [
        "--max-line-length=88",
        "--disable=None",
        "--const-rgx=(([a-z_][a-z0-9_]{2,30})|([A-Z_][A-Z0-9_]{2,30})|(__*.__))"],
    "python.linting.pydocstyleEnabled": true,
    "python.linting.pydocstyleArgs": ["--convention=google"],
    "python.linting.pycodestyleEnabled": true,
    "python.linting.pycodestyleArgs": [
        "--ignore=W503,E203",
        "--max-line-length=88"],
    "python.formatting.autopep8Args": [
        "--ignore",
        "E402"
    ],
    "jupyter.sendSelectionToInteractiveWindow": true,
    "jupyter.enableNativeInteractiveWindow": true,
    "jupyter.themeMatplotlibPlots": true,
    "jupyter.experiments.enabled": true,
    "vim.easymotion": true,
    "vim.smartRelativeLine": true,
    "vim.highlightedyank.enable": true,
    "vim.highlightedyank.duration": 400,
    "vim.leader": "<space>",
    "vim.autoSwitchInputMethod.enable": true,
    "vim.autoSwitchInputMethod.defaultIM": "fcitx-keyboard-kr-kr104",
    "vim.autoSwitchInputMethod.obtainIMCmd": "/usr/bin/fcitx-remote",
    "vim.autoSwitchInputMethod.switchIMCmd": "/usr/bin/fcitx-remote -s {im}",
    "markdown-preview-enhanced.previewTheme": "atom-light.css",
    "markdown-preview-enhanced.codeBlockTheme": "atom-dark.css",
    "doxdocgen.generic.briefTemplate": "\\brief {text} \n * \\details \\verbatim \\endverbatim",
    "doxdocgen.generic.paramTemplate": "\\param {param} ",
    "doxdocgen.generic.returnTemplate": "\\return {type} ",
    "doxdocgen.generic.authorEmail": "ok97465@gmail.com",
    "doxdocgen.generic.authorName": "ok97465",
    "doxdocgen.generic.authorTag": "\\author {author}",
    "doxdocgen.cpp.tparamTemplate": "\\tparam {param} ",
    "doxdocgen.generic.dateTemplate": "\\date {date}",
    "doxdocgen.file.fileTemplate": "\\file {name}",
    "doxdocgen.file.versionTag": "",
    "doxdocgen.file.copyrightTag": "",
    "doxdocgen.generic.order": [
        "brief",
        "tparam",
        "param",
        "return"
    ],
    "doxdocgen.file.fileOrder": [
        "file",
        "author",
        "date",
        "brief"
    ],
    "AREPL.customCSS": "",
    "AREPL.defaultFilterTypes": [
        "<class 'module'>",
        "<class 'function'>",
        "<class 'builtin_function_or_method'>",
        "<class 'numpy.ufunc'>"
    ],
    "AREPL.defaultFilterVars": [
        "colormap",
        "jtstyle",
        "newaxis",
        "pi",
        "fig",
        "ax1"
    ],
    "gitlens.views.repositories.files.layout": "list",
    "explorer.confirmDelete": false,
    "keyboard.dispatch": "keyCode",
    "search.smartCase": true,
    "workbench.editorAssociations": {
        "*.ipynb": "jupyter-notebook"
    },
    "notebook.cellToolbarLocation": {
        "default": "right",
        "jupyter-notebook": "left"
    },
    "security.workspace.trust.untrustedFiles": "open",
    "workbench.startupEditor": "none",
}
```