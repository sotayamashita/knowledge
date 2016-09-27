# Git

### 日本語

###### プルリクエストのリバート

```
git revert commit_hash
error: Commit commit_hash is a merge but no -m option was given.
fatal: revert failed
```

```
git revert -m -1 commit_hash
```

- [Undo a merge by pull request?](http://stackoverflow.com/questions/6481575/undo-a-merge-by-pull-request)
- [Undo a Git merge that hasn't been pushed yet?](http://stackoverflow.com/questions/2389361/undo-a-git-merge-that-hasnt-been-pushed-yet)
