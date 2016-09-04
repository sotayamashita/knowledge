# Fish

## Debug

```bash
#!/bin/bash

to="/path/to/.config/fish/functions/"

for file in ~/hoge/functions/*; do
  ln -sf $file "${to}${file##*/}"
  source "${to}${file##*/}"
done
```
