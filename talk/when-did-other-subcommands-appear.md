## When Did Other Git Subcommands Appear?

The first Git didn't even have a `git`.
What did it have?
Of the seven executables it builds, what's still around?

``` bash
$ git checkout $(git first) # check out the first version
$ for i in *.c; do # what's still recognizable?
> ls $(git --exec-path)/git-${i/.c/}
> done
```

Five of the the eight `.c` files build into executables that persist today, under different names. Four -- **cat-file**, **commit-tree**, **read-tree**, and **write-tree** -- are plumbing commands. The command `git cat-file` is so useful, it's called "Git's Swiss-Army Knife."

A `git help init-db` reveals a fifth, **init-db**, to be an archaic synonym for the quotidian `git init` .

Some of Git's 150+ subcommands yield up their origins to a simple `git log`, just as the `git` command did.
Others require more work, but Git has a host of other tools to let you unearth answers, including `git grep`, `git log --follow`, `git bisect`,
and the wonderfully named "*git pickaxe*", which is not an actual subcommand, only convenient slang for the `-S` flag to several different Git commands.

And, speaking of *git pickaxe*, you could also investigate the origins of individual flags.
Git needs aliases because who can possibly remember all the flags that common subcommands like `git log` have evolved and accreted?

To whet your appetite, here are birthdays of Git commands I've shown above.

```
2005-04-07 cat-file, commit-tree, init, read-tree, write-tree
2005-04-13 ls-tree
2005-04-23 rev-list
2005-04-25 tag
2005-05-30 commit
2005-06-01 log
2005-06-01 git  # the middle child
2005-06-04 shortlog
2005-06-21 checkout
2005-06-22 clone
2005-10-10 config
2006-06-05 alias
2006-06-05 show
```

For the rest? That's an exercise for the reader ... or for me, if you don't beat me to it.
