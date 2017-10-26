## Pull Request

### Remove a modified file from pull request

```bash
$ git checkout pull-request-branch
$ git checkout origin/master -- src/trash.js
```

```bash
$ git commit -m "Remove a modifiled file from pull request"
$ git push
```
