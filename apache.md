# Apache

## Analyzing Apache Log Files

```bash
xxx.xxx.xxx.xx - - [14/Aug/2016:03:41:31 +0000] "GET /hoge/ HTTP/1.1" 200 924 "Mozilla/5.0 (Linux; Android 6.0.1; SC-02H Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36"
```

```bash
awk '{print $1}'         # ip address (%h)
awk '{print $2}'         # RFC 1413 identity (%l)
awk '{print $3}'         # userid (%u)
awk '{print $4,5}'       # date/time (%t)
awk '{print $9}'         # status code (%>s)
awk '{print $10}'        # size (%b)
```

* [System: Analyzing Apache Log Files](http://www.the-art-of-web.com/system/logs/)

