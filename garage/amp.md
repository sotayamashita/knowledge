# AMP ⚡ (Accelerated Mobile Pages Project)

# 日本語

#### 目次

- AMP とは
- AMP HTML
- AMP JS
- Google AMP Cache
- AMP の仕組み
- tips
- トラブルシューティング

## AMP とは

AMP は Accesarate Mobile Performance の略で。Google によって提唱された技術のひとつです。最近のページはとてもリッチになってきて見ていてとても楽しいのですが電波が弱いと読み込まれるまでにかなりの時間がかかってしまいます。多くの人がページの読み込みを待たずに別のページに移動してしまいます。これだとせっかユーザーやそのサイトの運営にとっても困った問題です。そこで Google はページを表示する際に使用する技術を最低限のものに絞ってページを高速にしようとしました。これが AMP です。AMP は以下の３つのものから構成されています。

* AMP HTML ... 独自タグを含む HTML
* AMP JS ... AMP HTML を高速に読み込むためのライブラリ
* Google AMP Cache ... AMP HTML をキャッシュしている Google の CDN


## :chart_with_upwards_trend: なぜ AMMP ページは早いのか？

1. Allow only asynchronous scripts
2. Size all resources statically
3. Don't let extension mechanisms block rendering
4. Keep all third-party JavaScript out of the critical path
5. All CSS must be inline and size-bound
6. Font triggering must be efficient
7. Minimize style recalculations
8. Only run GPU-accelerated animations
9. Prioritize resource loading
10. Load pages in an instant


## :bulb: ヒント

- [サイズの分からない画像の対応方法](#サイズの分からない画像の対応方法)

### サイズの分からない画像の対応方法
`<amp-img/>` コンポーネントは基本的に画像のサイズを指定する必要があります。これはパフォーマンス的な問題です。画像サイズをあらかじめ指定しておくことで画像をロードした後に改めてレイアウト`<layout>`をする（この言葉の使い方微妙）必要がでてきます。しかしすべての画像があらかじめわかる訳ではありません。例えば API などで取得した画像などです。こういう画像を AMP 上で表示させるには以下の方法があります：

1. `layout="fixed-height"` を使用して高さのみ指定して幅はレスポンシブにする

  ```html
  <amp-img layout="fixed-height" src="/img/amp.png" height="300"></amp-img>
  ```
  
2. 適当な幅と高さを指定して CSS で上書きする
  > 注意点：この場合にあらかじめ適当に指定した画像よりも高さが小さくなってしまう場合に不要なスペースがでてきしまいます。ただからといって小さいサイズを指定しまうと `<amp-img>` タグには `amp-img { overflow: hidden; !important }` を指定されているので画像が見切れてしまいます。
  
  ```html
  <amp-img src="/img/amp.png" height="100" width="100"></amp-img>
  ```
  ```css
  amp-img img {
    width: auto;
    height: auto;
  }
  ```
  
3. サーバサイドで計算する

　　サーバ側であらかじめ決まった画像サイズしか返さないようにリサイズ処理をいれる。`/image/amp.png` というリクエストがきたらそれをリサイズなどの処理をして画像を返す。


## :mag_right: 検証

* デベロッパー コンソール （[参照][bowser-developer-console]）
  * URL の最後に `<AMP対応ページURL>?#development=1` をつける
* Web インターフェース（[参照][web-interface]）
  * `https://search.google.com/search-console/amp?url=<AMP対応ページURL>` へアクセス  
  * https://validator.ampproject.org/ へアクセスして URL を入力
* コマンドラインインターフェース（[参照][command-line-tool]）

  ```
  $ npm install -g amphtml-validator
  $ amphtml-validator https://www.ampproject.org/
  https://www.ampproject.org/: PASS
  ```
  
* ブラウザ拡張機能（[参照][browser-extension]）
  * https://chrome.google.com/webstore/detail/amp-validator/nmoffdblmcmgeicmolmhobpoocbbmknc

[bowser-developer-console]: https://www.ampproject.org/docs/guides/validate#browser-developer-console
[web-interface]: https://www.ampproject.org/docs/guides/validate#web-interface
[command-line-tool]: https://www.ampproject.org/docs/guides/validate#command-line-tool
[browser-extension]: https://www.ampproject.org/docs/guides/validate#browser-extension


## トラブルシューティング

基本的に考えられるエラーは Google が [AMP Validation Erros](https://www.ampproject.org/docs/reference/validation_errors) と言うかたちでまとめてくれているのでそこでまず検索してみればいいです。


