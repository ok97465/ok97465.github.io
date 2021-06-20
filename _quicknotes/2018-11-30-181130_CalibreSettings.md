---
layout: post
title: "Calibre 설정"
comments: true
share: true
date: 2018-11-30 22:33:00
description: Calibre 설정.
tags: note
toc: false
sitemap :
    changefreq : daily
    priority : 1.0
---

# Calibre

## 1. Linux에서 한글 쓰기

Calibre는 자체 입력기를 사용하기 때문에 한글 입력을 위해서는 Linux 입력기를 Calibre 폴더에 복사해야 한다.

```sh
cp /usr/lib/x86_64-linux-gnu/qt5/plugins/platforminputcontexts/libfcitxplatforminputcontextplugin.so /opt/calibre/plugins/platforminputcontexts
```

<br>

## 2. "최근 읽은 책" 열 추가 [[ref]](https://gist.github.com/sjrogers/673e22bc93835dc8c9a37ef6794383db)

Calibre는 최근 읽은 파일에 대한 정렬을 지원 하지 않는다. 하지만 Calibre는 책을 읽을 때 마다 metadata.opf를 수정하므로 metadata.opf 수정 일자를 Calibre 열에 추가하면 최근 읽은 책 기준으로 정렬이 가능해 진다.

<br>

### 2.1. Template Function 생성

1. 환경설정 -> 고급 -> 템플릿 함수
2. Template functions
3. Function: last_accessed
4. 인수의 갯수: -1
5. Programe code


```sh
def evaluate(self, formatter, kwargs, mi, locals):
    from os import stat
    from time import ctime
    book_paths = [f['path'] for f in mi.get('format_metadata', {}).values()]
    atimes = map(lambda f: stat(f).st_atime, book_paths)
    most_recent = max(atimes)
    return ctime(most_recent)
```

6. 생성 (생성한 이후에는 교체)
7. 적용

<br>

### 2.2. 사용자 정의 열 추가

1. 환경설정 -> 인터페이스 -> 사용자 정의 열 추가
2. 사용자 정의 열 추가
3. 빠른생성: 형식
4. Lookup name: last_accessed
5. column heading: 최근 읽은 날짜
6. 템플릿(T): {:'last_accessed()'}
7. 열 정렬/검색 기준: 날짜

<br>

## 3. Dark CSS for viewer

```css
@import url('https://fonts.googleapis.com/css?family=Goudy+Bookletter+1911');
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
video {
  display: inline-block;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden] {
  display: none;
}
html {
  font-family:  'Goudy Bookletter 1911', serif;;
  -webkit-text-size-adjust: 100%;
  -ms-text-size-adjust: 100%;
}
body {
  margin: 0;
}
a:focus {
  outline: thin dotted;
}
a:active,
a:hover {
  outline: 0;
}
h1 {
  font-size: 2em;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
mark {
  background: #ff0;
  color: #000;
}
code,
kbd,
pre,
samp {
  font-family: monospace, serif;
  font-size: 1em;
}
pre {
  white-space: pre-wrap;
  word-wrap: break-word;
}
q {
  quotes: "\201C" "\201D" "\2018" "\2019";
}
small {
  font-size: 80%;
}
sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 0;
}
fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}
legend {
  border: 0;
  padding: 0;
}
button,
input,
select,
textarea {
  font-family: inherit;
  font-size: 100%;
  margin: 0;
}
button,
input {
  line-height: normal;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
input[disabled] {
  cursor: default;
}
input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0;
}
input[type="search"] {
  -webkit-appearance: textfield;
  -moz-box-sizing: content-box;
  -webkit-box-sizing: content-box;
  box-sizing: content-box;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0;
}
textarea {
  overflow: auto;
  vertical-align: top;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
html {
 font-family: 'Goudy Bookletter 1911', serif;
}
pre,
code {
  font-family: 'Inconsolata', sans-serif;
}
h1,
h2,
h3,
h4,
h5,
h6 {
  font-family: 'Goudy Bookletter 1911', serif;
  font-weight: 700;
}
html {
 background-color:  #13191c;//#13191c; #222727;
 color: #92979f;
  margin: 1em;
}
body {
  background-color: #13191c;
  margin: 0 auto;
  max-width: 23cm;
  border: 2pt dashed #13191c;
  box-shadow: 0 0 20px #000;
  padding: 1em;
}
code {
  background-color: #222727;
  padding: 2px;
}
a {
  color: indianred;
}
a:visited {
  color: deeporange;
}
a:hover {
  color: lime;
}
h1 {
  color: aliceblue;
}
h2,
h3,
h4,
h5,
h6 {
  color: #0083AE;
}
pre {
  background-color: #222727;
  color: #92979f;
  border: 1pt solid #222727;
  padding: 1em;
  box-shadow: 5pt 5pt 8pt #2f2f2f;
}
pre code {
  background-color: #222727;
}

h1 {
  font-size: 2.8em;
}
h2 {
  font-size: 2.4em;
}
h3 {
  font-size: 1.8em;
}
h4 {
  font-size: 1.4em;
}
h5 {
  font-size: 1.3em;
}
h6 {
  font-size: 1.15em;
}

.tag {
  background-color: #222727;
  color: #d33682;
  padding: 0 0.2em;
}
.todo,
.next,
.done {
  color: #fdf6e3;
  background-color: #222727;
  padding: 0 0.2em;
}
.tag {
  -webkit-border-radius: 0.35em;
  -moz-border-radius: 0.35em;
  border-radius: 0.35em;
}
.TODO {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #e56e49;
}
.NEXT {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #7d7763;
}
.ACTIVE {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #268bd2;
}
.DONE {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #222727;
}
.WAITING {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #e56e49;
}
.HOLD {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #e56e49;
}
.NOTE {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #873332;
}
.CANCELLED {
  -webkit-border-radius: 0.2em;
  -moz-border-radius: 0.2em;
  border-radius: 0.2em;
  background-color: #7d7763;
}
```