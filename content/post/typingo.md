---
title: "コマンドラインのタイピング練習ツールを作った"
date: 2017-10-28T14:41:48+09:00
tags:
- tools
- Golang
- typing
---
タイピングが自己流なのをなくしたいので作った。

<!--more-->

リポジトリは[こちら](https://github.com/ygnmhdtt/typingo)。
タイピング練習はぐぐるとたくさん出てくるんだけど、自分の場合はブラウザに入れてる拡張機能のせいでうまく動いてくれないことが多く、(Flashで動いてるやつはちゃんと動いた)使い勝手がどれも微妙に悪かった。
Golangで作ってある。

# ハマった

ソースとなる単語をどうやってとるか(/usr/share/dict/wordsというものがあるのを初めて知った)
なにも入力されていない状態をどうやって受け付けるか(何も入力されない場合はこう、というハンドリングがしたかった)
あたり。

タイピング能力はすごい大事だな〜というのを最近強く感じていて、一見タイピング早いけど、ちょこちょこミスってるので結局そんなに早くない、という人は実は多いのだと思う。
自分の場合は右手(特に p)と記号が苦手で、練習する必要があると感じている。
