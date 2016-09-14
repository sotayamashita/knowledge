# Bash

```
for ARGUMENT in $@
do
    case "$1" in
        hoge) echo "hoge"
        ;;
        hoge) echo "fuga"
        ;;
        *)  echo "Internal error!"
        ;;
    esac
done
```
