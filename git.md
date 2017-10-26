## Pull Request

### Remove a modified file from pull request

![Remove a modified file from pull request](https://user-images.githubusercontent.com/1587053/32030174-39892c02-ba34-11e7-9709-eab8d3249306.png)

```bash
$ git checkout pull-request-branch
$ git checkout origin/master -- src/trash.js
```

```bash
$ git commit -m "Remove a modifiled file from pull request"
$ git push
```
