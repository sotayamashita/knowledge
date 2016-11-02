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

## AMP HTML

AMP HTML は通常の HTML で使えるタグに加えて独自タグを使えるようにしたものです。独自タグのことを "AMP HTML components" と読んでいます。例えば `amp-img` タグなどがそれにあたります。

## AMP JS

AMP JS ライブラリは AMP のパフォーマンスのベストプラクティスで挙げているものを実装したもの。

## Google AMP Cache 

Google AMP Cache は CDN でバリデーター機能も組み込まれていてそれを使って正しく動作することが保証されている。


 # # バリデーション

* Developer Console
  * URL の最後に `<AMP対応ページURL>?development=1` をつける
* Web 
  * `https://search.google.com/search-console/amp?url=<AMP対応ページURL>` へアクセス  
  * https://validator.ampproject.org/ へアクセスして URL を入力
* ブラウザ拡張機能
  * https://chrome.google.com/webstore/detail/amp-validator/nmoffdblmcmgeicmolmhobpoocbbmknc
* CLI
  * `npm install -g amphtml-validator`

## Tips

### `<amp-iframe>`

iframe 表示側記述：

```
<amp-iframe width=300 height=300
    layout="responsive"
    sandbox="allow-scripts allow-same-origin"
    resizable
    src="https://foo.com/iframe">
  <div overflow tabindex=0 role=button aria-label="Read more">Read more!</div>
</amp-iframe>
```

iframe のコンテンツ側：

```javascript
<script>
  window.parent.postMessage({
   sentinel: 'amp',
   type: 'embed-size',
   height: document.body.scrollHeight
  }, '*');
</script>
```

## トラブルシューティング

基本的に考えられるエラーは Google が [AMP Validation Erros](https://www.ampproject.org/docs/reference/validation_errors) と言うかたちでまとめてくれているのでそこでまず検索してみればいいです。


