# Git

## 日本語

### マージ済みのブランチ一覧表示

```bash
# マージされたブランチを表示（master と develop を除く）
$ git branch --merged | egrep -v "(^\*|master|dev)"
  feature/hoge
  feature/fuga
```
```bash
# マージされたブランチを削除（master と develop を除く）
$ git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d
```
```
[alias]
    cleanup = "git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"
```

- [git branch](https://git-scm.com/docs/git-branch)
- [How can I delete all git branches which have been merged? | StackOverflow](http://stackoverflow.com/questions/6127328/how-can-i-delete-all-git-branches-which-have-been-merged)


### Fork したレポジトリを本家に追従

```
$ git remote add upstream git@github.com:nodejs/nodejs.org.git
$ git branch -a
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
  remotes/upstream/master
```

```
$ git fetch upstream
remote: Counting objects: 184, done.
remote: Compressing objects: 100% (6/6), done.
remote: Total 184 (delta 89), reused 89 (delta 89), pack-reused 89
Receiving objects: 100% (184/184), 112.38 KiB | 50.00 KiB/s, done.
Resolving deltas: 100% (122/122), completed with 28 local objects.
From github.com:nodejs/nodejs.org
```

```
$ git merge upstream/master
Updating 909c5ba..56b016d
```

- [Syncing a fork | GitHub](https://help.github.com/articles/syncing-a-fork/)
- [Clean up a fork and restart it from the upstream | StackOverflow](http://stackoverflow.com/questions/9646167/clean-up-a-fork-and-restart-it-from-the-upstream)


### プルリクエスト(マージリクエスト)のリバート

```
$ git revert commit_hash
error: Commit commit_hash is a merge but no -m option was given.
fatal: revert failed
```

リバート：

```
$ git revert -m 1 commit_hash
```

変更を確認：

```
$ git show or log
```

リバートした変更を他のブランチに救出：

```
$ git branch commit -b feature/tmp
$ git revert commit_hash
$ git push origin feature/tmp
```

- [Undo a merge by pull request?](http://stackoverflow.com/questions/6481575/undo-a-merge-by-pull-request)
- [Undo a Git merge that hasn't been pushed yet?](http://stackoverflow.com/questions/2389361/undo-a-git-merge-that-hasnt-been-pushed-yet)
