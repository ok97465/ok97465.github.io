" ================================= 폰트 지정 =================================
set fileencodings=utf-8,cp949
set fencs=ucs-bom,utf-8,euc-kr.latin1                         " 한글 파일은 euc-kr로, 유니코드는 유니코드로
set tenc=cp949                                                " 터미널 인코딩
GuiFont! D2Coding\ Ligature:h12:cHANGEUL

" =========================== GUI 초기 윈도우 크기 지정 =======================
au GUIEnter * winsize 128 40

" =========================== Disable Qt gui =======================
GuiTabline 0
GuiPopupmenu 0

