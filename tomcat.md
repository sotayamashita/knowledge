# Tomcat

## Access log

```bash
xxx.xxx.xxx.xx - - [14/Aug/2016:03:41:31 +0000] "GET /hoge/ HTTP/1.1" 200 924 "Mozilla/5.0 (Linux; Android 6.0.1; SC-02H Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.98 Mobile Safari/537.36"
```

**Status code:**

```bash
cat /path/to/access_log.txt | awk '{ if ($9 == <status code>) print $7; }'
```

```bash
zcat /path/to/access_log.txt | awk '{ if ($9 == <status code>) print $7; }'
```

Example `404`:

```bash
cat /path/to/access_log.txt | awk '{ if ($9 == 404) print $7; }'
```

```bash
zcat /path/to/access_log.txt | awk '{ if ($9 == 404) print $7; }'
```
