# Ruby

# 日本語

## Gem 

### Trouble shooting

```
sudo gem install bundler
ERROR:  While executing gem ... (Errno::EPERM)
    Operation not permitted - /usr/bin/bundle
```

↓

```
sudo gem install bundler -n /usr/local/bin

```

ref: https://github.com/bundler/bundler/issues/4065#issuecomment-149596385
