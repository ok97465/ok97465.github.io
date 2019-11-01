---
layout: post
title: "Jupyter NoteBook에서 신호처리를 위한 설정"
comments: true
share: true
date: 2018-09-09 01:08:00
description: Jupyter NoteBook에서 신호처리를 편리하게 하기 위해 설정 값을 조정한다.
tags: python jupyter
toc: true
sitemap :
  changefreq : daily
  priority : 1.0
---

# Jupyter NoteBook에서 신호처리를 위한 설정
---

<br>

## 1. NBExtension 설정
  * hide input 활성화
  * hide input all 활성화
  * comment/uncomment hotkey 활성화
    * 단축키 Ctrl+R로 변경
  * spell checker 활성화
  * table of contents(2) 활성화
  * runtools 활성화
    * run all cells 단축키 Ctrl+F5로 변경
  * snippets 활성화
    * [snippets.json](/assets/data/SettingJupyterNotebook/snippets.json)을 파이선폴더/share/jupyter/nbextensions/snippets에 복사 한다.
  * snippets Menu 활성화
  * scratchpad 활성화

<br>

## 2. Theme 설정
- onedork theme 설정  
```./jt -t onedork -fs 12 -nfs 13 -tfs 12 -ofs 11 -mathfs 90 -T```

  

- scratchpad의 배경색 변경
  - 파이선폴더/share/jupyter/nbextensions/scratchpad/scratchpad.css를 아래와 같이 변경한다.

```css
<br>

#nbextension-scratchpad {
  position: absolute;
  right: 0;
  bottom: 0;
  width: 50%;
  background-color: #1D1E23;
  border-left: 1px solid #292B38;
  border-top: 1px solid #292B38;
  z-index: 105;
}
```

## qtconsole style변경
%qtconsole로 외부 console 실행 시 theme를 설정 한다.  
[jupyter_qtconsole_config.py](/assets/data/SettingJupyterNotebook/jupyter_qtconsole_config.py)를 ~/.jupyter에 복사 한다.

## Jupyter Notebook 1회만 실행
jupyter notebook을 아이콘으로 만들어 실행 하려다 보면 아이콘 클릭 시 마다 새로운 jupyter server가 실행된다. 이런 문제를 해결하기 위해서 간단한 python 코드와 Script를 작성하여 script를 바로가기로 지정한다.
  
  * Python Code (run\_jupyter.py)
  
``` python
import re
import sys
import os
import subprocess
import webbrowser
from notebook import notebookapp
from notebook.notebookapp import main

if __name__ == '__main__':
    port = 9876
    jupyter_server_list = list(notebookapp.list_running_servers())

    if len(jupyter_server_list) > 0:
        for server in jupyter_server_list:
            if server['port'] == port:
                webbrowser.open(jupyter_server_list[0]['url']+'tree')
                sys.exit(0)

    os.chdir('/home/ok97465/python/BlogSrcByJupyter')  # notebook을 저장할 폴더
    sys.exit(main(port=port))
```

  * Linux용 script (run\_jupyter.sh)
  
```bash
<br>

#!/bin/sh
export MPLCURSORS='{"multiple": 1}'  # maplotlib Cusor Marker
export PYTHONPATH=/home/ok97465/python/scientific  # oklib를 포함하는 폴더  
~/anaconda3/bin/python ~/python/run_jupyter.py
```

  * Window용 스크립트 (run\_jupyter.vbs)
  
```
Set oShell = CreateObject ("Wscript.Shell")
Dim strArgs
strArgs = "cmd /v:on /k (set MPLCURSORS=" + "{" + Chr(34) + "multiple" + Chr(34) + ": 1" + "}" + ")" + " & (set PYTHONPATH=D:\python\scientific) & C:\IntelPython3\python.exe D:\python\start_jupyter.py"
oShell.Run strArgs, 0, false
```