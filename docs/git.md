[issue]: https://github.com/sotayamashita/knowledge/issues/new?labels=git

# Git

Git cheatseet. This will be changed or updated. I am keep learning and try to improve. If you have a lot of expericen of it and you find something wrong, please [create a issue][issue] to fix my misunderstanding. Thanks :smile:

<div class="table_of_content">

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of Contents**  *generated with [DocToc](https://github.com/thlorenz/doctoc)*

- [Pull Request](#pull-request)
  - [Checking out pull requests locally](#checking-out-pull-requests-locally)
    - [For manually](#for-manually)
    - [For a repo](#for-a-repo)
    - [For all repos](#for-all-repos)
    - [References](#references)
  - [Remove a modified file from pull request](#remove-a-modified-file-from-pull-request)
    - [Example](#example)
    - [References](#references-1)
- [References](#references-2)
  - [See also](#see-also)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

</div>

# Pull Request

## Checking out pull requests locally

### For manually

Fetch the reference to the pull request based on its ID:

```
git fetch origin pull/<ID>/head:<branchname>
```

Switch to the new branch:

```
git checkout <branchname>
Switched to a new branch 'branchname'
```

### For a repo

Add `fetch = +refs/pull/*/head:refs/remotes/origin/pr/*` to fetch pull requests:

```diff
$ cat .git/config
[remote "origin"]
	fetch = +refs/heads/*:refs/remotes/origin/*
	url = git@github.com:<user>/<repo>.git
+	fetch = +refs/pull/*/head:refs/remotes/origin/pr/*
```

To fetch all the pull requests:

```bash
$ git fetch origin
From github.com:<user>/<repo>
 * [new ref]         refs/pull/1000/head -> origin/pr/1000
 * [new ref]         refs/pull/1001/head -> origin/pr/1001
```

To check out a particular pull request:

```bash
$ git checkout pr/1000
```

### For all repos

```bash
git config --global --add remote.origin.fetch "+refs/pull/*/head:refs/remotes/origin/pr/*"
```

### References

- [Checkout github pull requests locally](https://gist.github.com/piscisaureus/3342247)
- [Checking out pull requests locally](https://help.github.com/articles/checking-out-pull-requests-locally/)

## Remove a modified file from pull request

```bash
$ git checkout pull-request-branch
$ git checkout origin/master -- remove-modified-file-you-want.txt
```

```bash
$ git commit -m "Remove a modifiled file from pull request"
$ git push
```

### Example

![Remove a modified file from pull request](https://user-images.githubusercontent.com/1587053/32030174-39892c02-ba34-11e7-9709-eab8d3249306.png)

```bash
$ git checkout feature/remove-modified-file
$ git checkout origin/master -- secret.txt
```

```bash
$ git commit -m "Remove a modifiled file from pull request"
$ git push
```

### References

- [Remove a modified file from pull request](https://stackoverflow.com/questions/39459467/remove-a-modified-file-from-pull-request)

# References

## See also

- [Flight rules for Git](https://github.com/k88hudson/git-flight-rules)
