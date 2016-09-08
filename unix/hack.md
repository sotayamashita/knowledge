# Hack

# 日本語

## 大きなディレクトリ削除

準備：

```
mkdir hoge/
echo "It is dummy." >> hoge/dummy.txt 
```

`rm`:

```bash
rm -rf hoge/
```

`rsync`:

```bash
mkdir empty
rsync -a --delete empty hoge
```

`find`:

```bash
find hoge -type f -exec ionice -c3 rm {} \;
```
