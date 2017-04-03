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

## ファイル構成

```
.
├── deps  # （注意）Node が依存する外部ライブラリ
├── tools # （注意）ビルドツール
├── lib   # コア API の JavaScript 実装
├── src   # コア API の C++ 実装
└── test  # テストコード
```

## 

1. フォーク

  ```bash
  # fork nodejs/node
  $ git clone git@github.com:<username>/node.git && cd node
  # Fork/cloneしたリポジトリを本家リポジトリに追従する
  $ git add upstream git@github.com:nodejs/node.git
  ```
  
1. ブランチ作成

  ```bash
  $ git checkout -b my-branch -t origin/master
  ```
  
1. コミット

  ```bash
  
  ````

1. マージリクエスト送る前のチェック

  - テストが通るか確認
    
    ```bash
    $ make lint
    ```
    
  - コミットメッセージが正しいか確認
    
    ```bash
    $ git log --oneline <変更したファイルパス>
    ```



- [CONTRIBUTING](https://github.com/nodejs/node/blob/master/CONTRIBUTING.md)
- [BUILDING](https://github.com/nodejs/node/blob/master/BUILDING.md)
- [Nodeへの コード貢献の仕方](https://speakerdeck.com/shigeki/nodehefalse-kodogong-xian-falseshi-fang)
- [shigeki/code_and_learn_nodefest_tokyo_2016](https://github.com/shigeki/code_and_learn_nodefest_tokyo_2016)

## Getting started
```
# First time
# Fork repositry on GitHub
git clone git@github.com:<Your name>/node.git
git remote add upstream git@github.com:nodejs/node.git

# From the second time
git fetch upstream
git merge upstream/master
```

## Do always before submitting a PR

```
./configure
sudo ./tools/macosx-firewall.sh
make test
make lint
```

## How to create a backport PR to land on v4 or v6

The process is fairly simple. To backport for v6, for instance, create a working branch off the v6-x-staging branch:

```bash
# $ git checkout v6.x-staging
error: pathspec 'v6.x-staging' did not match any file(s) known to git.
# $ git checkout -b test-openssl-cli-v6-backport
$ git checkout -b test-openssl-cli-v6-backport origin/v6.x-staging
Branch test-openssl-cli-v6-backport set up to track remote branch v6.x-staging from origin.
Switched to a new branch 'test-openssl-cli-v6-backport'
```
Then cherry-pick the commit that landed in master

```
$ git cherry-pick 5ffb7d72bb6d8c827b66a337c3318e3ac9b3055e
```
You will see that there are a number of conflicts to be resolved. Make the necessary changes to fix those conflicts, then complete the cherry-pick using:

```
$ git add {the-files-that-were-changed}
$ git cherry-pick --continue
```

Push the branch to your fork on Github and open a new PR against v6.x-staging, indicating that this is a Backport of #11095.

Make sure to run make test and make lint.

- [test: skip when openssl CLI doesn't exist #11095](https://github.com/nodejs/node/pull/11095#issuecomment-284919698)
- [6.x backport: crypto: support OPENSSL_CONF again (and its dependencies) #11583](https://github.com/nodejs/node/pull/11583)
- [shigeki/code_and_learn_nodefest_tokyo_2016](https://github.com/shigeki/code_and_learn_nodefest_tokyo_2016)
