負荷状況を示す指標の１つとして、ロードアベレージがあります。ロードアベレージとは



```
$ lscpu | egrep 'Thread|Core|Socket|^CPU\('
CPU(s):                36
Thread(s) per core:    2
Core(s) per socket:    9
Socket(s):             2

$ nproc --all
36
```

- [lscpu](https://linux.die.net/man/1/lscpu)
- [nproc](https://linux.die.net/man/1/nproc)

```
$ uptime                   
 15:50:13 up 8 days, 14:06,  3 users,  load average: 10.45, 9.60, 9.31
```

- [uptime](https://linux.die.net/man/1/uptime)

`r` が run queue で `b` が wait queue の値です。

```
$ vmstat
procs -----------memory---------- ---swap-- -----io---- --system-- -----cpu-----
 r  b   swpd   free   buff  cache   si   so    bi    bo   in   cs us sy id wa st
15  0      0 8632712 192028 458508    0    0     0     0    1    1 15  0 85  0  0
```



---

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
* http://qiita.com/rsooo/items/42f0902d42bab6ecf175
