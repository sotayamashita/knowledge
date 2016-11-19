# Node.js

# 日本語
> Node.js の基本的なことについて日本語で書いたものです。基本的には [nodejs.org/docs](https://nodejs.org/) の内容を参考にしています。ここでは自分の理解を深めるために図やコマンドなどより詳細な情報を追記してまとめてあります。

#### 目次
* Node.js について
* ES6 とそれ以降のバージョンについて
* 情報のキャッチアップ方法
* 貢献方法

## 情報のキャッチアップ方法

* [Last Week in Node.js Working Groups](https://nodesource.com/blog/) ... NodeSource によってまとめられたその週の Node.js ワーキンググループであったいろいろなことがまとめられています。GitHub issue や IRC チャンネル追うのは大変という方には向いています。

## 貢献方法

Node.js では様々なやりとりが [GitHub の issue](https://github.com/nodejs/node/issues) 上で行われています。特に初めての人向けに [[good first contribution]](https://github.com/nodejs/node/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+contribution%22) というラベルがついているものがあるのでまずはそこから始めてみるといいかもしれません。

### ビルド方法

https://github.com/nodejs/node/blob/master/BUILDING.md

```
# fork nodejs/node
git clone git@github.com:<username>/node.git && cd node
git add upstream git@github.com:nodejs/node.git
```

```bash
# 環境情報を記入した Makefile ファイル作成
./configure
# configure で作成された Makefile をもとにしてソースコードをコンパイル 
make
```

### 参照

- [Nodeへの コード貢献の仕方](https://speakerdeck.com/shigeki/nodehefalse-kodogong-xian-falseshi-fang)
- [shigeki/code_and_learn_nodefest_tokyo_2016](https://github.com/shigeki/code_and_learn_nodefest_tokyo_2016)
