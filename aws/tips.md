# Tips

## 日本語

### "Launch More Like This" で複数台のインスタンス起動する方法

例えば、緊急で Unhealthy Host が増えたときにインスタンを新しく立ち上げる必要があるとします。そのときは EC2 > Instances > インスタンを選択 > Action > Launch More Like This を使ってインスタンを立ち上げると思います。しかしこのままで進めていっても１台のインスタンしか立ち上がりません。今回の場合のように急いで複数台のインスタンスを作りたい場合にはこれはとてもつもなく時間の無駄です。ではどうすれば一度で複数台建てられるのでしょうか？

EC2 > Instances > インスタンを選択 > Action > Launch More Like This　ここまでは先程同じです。ここで 3. Configure Instance を選択すると以下の画像のような画面が表示されるので、その Number of instances に立ち上げたいインスタンスの数を入力することで複数のインスタンスを起動させることができます。

<img src="https://cloud.githubusercontent.com/assets/1587053/18355701/ef6d8220-7624-11e6-9dd0-0a8b9495fa28.png" />
