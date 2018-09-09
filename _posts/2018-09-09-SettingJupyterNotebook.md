---
layout: post
title: "Jupyter NoteBook에서 신호처리를 위한 설정"
comments: true
share: true
date: 2018-09-09 01:08:00
description: Jupyter NoteBook에서 신호처리를 편리하게 하기 위해 설정 값을 조정한다.
tags: python
sitemap :
  changefreq : daily
  priority : 1.0
---

# Jupyter NoteBook에서 신호처리를 위한 설정
---

<br>

## 1. NBExtension 설정
  * hide input 활설화
  * hide input all 활성화
  * comment/uncomment hotkey 활성화
    * 단축키 Ctrl+R로 변경
  * spell checker 활성화
  * table of contents(2) 활성화
  * runtools 활성화
    * run all cells 단축키 Ctrl+F5로 변경
  * snippets 활성화
    * [snippets.json](/assets/data/SettingJupyterNotebook/snippets.json)을 파이선폴더/share/jupyter/nbextensions/snippets에 복사한다.
  * snippets Menu 활성화
  * scratchpad 활성화

<br>

## 2. Theme 설정
onedork theme 설정  
./jt -t onedork -fs 12 -nfs 13 -tfs 12 -ofs 11 -mathfs 90 -T

<br>

## 3. qtconsole style변경
%qtconsole로 외부 console 실행 시 theme를 설정한다.  
[jupyter_qtconsole_config.py](/assets/data/SettingJupyterNotebook/jupyter_qtconsole_config.py)를 ~/.jupyter에 복사 한다.