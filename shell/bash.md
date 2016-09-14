# Bash

## Handling Command Line Arguments

```bash
while true; do
    case "$1" in
        -a ) OPT_A=true;;
        -b ) OPT_B=true;;
        -- ) ;;
        * ) if [ -z "$1" ]; then break; else echo "$1 is not a valid option"; exit 1; fi;;
    esac
    shift
done
```
