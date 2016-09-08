# Hack

* [English]()

## English

### Delete large directory containing thousands of files efficiently

setup:

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
