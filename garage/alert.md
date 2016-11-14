# Alert

* 英語
* 日本語

# 日本語

## CPUが高い理由を探る

ps でどのプロセスが原因になっているかを調査する：

```
ps auxf | sort -nrk 3,3 | head -n 5
```

- `f` ... ASCII art forest

http://sechiro.hatenablog.com/entry/20120805/1344139544
http://www.itmedia.co.jp/help/tips/linux/l0158.html

straceやoprofileでなぜそのプロセスがボトルネックなのか特定し、解決する：

```

```

http://blog.livedoor.jp/sonots/archives/18193659.html




ref 

* http://qiita.com/k0kubun/items/8ab1dfa7c0359d8e618d
* http://qiita.com/k0kubun/items/8065f5cf2da7605c8043
* https://gist.github.com/kitak/6349463
* https://teratail.com/questions/21675
* http://okwave.jp/qa/q6265970.html
* http://unix.stackexchange.com/questions/13968/show-top-five-cpu-consuming-processes-with-ps
* http://tweeeety.hateblo.jp/entry/20130422/1366637798
* https://blogs.oracle.com/yappri/entry/loadavg
* http://d.hatena.ne.jp/naoya/20070518/1179492085
* http://superuser.com/questions/23498/what-does-load-average-mean-in-unix-linux
