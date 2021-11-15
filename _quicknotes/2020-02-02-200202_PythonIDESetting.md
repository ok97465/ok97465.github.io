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



## 4. Linux에서 한글 입력

LINUX의 QT 프로그램에서는 한글 입력이 가능하지만 Anaconda의 QT를 사용하는 GUI 프로그램의 경우 한글 입력이 되지 않는 경우가 있다. 그럴 경우에는 Linux의 Qt 입력기 Library를 anaconda에 복사해 준다.

```sh
cp /usr/lib/x86_64-linux-gnu/qt5/plugins/platforminputcontexts/libqt5im-nimf.so /home/ok97465/anaconda3/plugins/platforminputcontexts
```

<br>

## 5. VScode Project 설정

### 5.1. 환경변수 설정
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