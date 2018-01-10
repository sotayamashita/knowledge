<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Pull Request](#pull-request)
  - [Remove a modified file from pull request](#remove-a-modified-file-from-pull-request)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Pull Request

### Remove a modified file from pull request

```bash
$ git checkout pull-request-branch
$ git checkout origin/master -- remove-modified-file-you-want.txt
```

```bash
$ git commit -m "Remove a modifiled file from pull request"
$ git push
```

Example:

![Remove a modified file from pull request](https://user-images.githubusercontent.com/1587053/32030174-39892c02-ba34-11e7-9709-eab8d3249306.png)

```bash
$ git checkout feature/remove-modified-file
$ git checkout origin/master -- secret.txt
```

```bash
$ git commit -m "Remove a modifiled file from pull request"
$ git push
```
