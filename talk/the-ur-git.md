## When Did `git` first appear?

Paleontologists are interested in origins. When did fish first crawl out onto land?
When did dinosaurs first take to the air to become birds?

Just as early mammals lacked breasts, 
You've seen that Linus's first version of Git built into a handful of executables, yet it had no `git` command.
The current master branch builds `git` from a 700-plus-line sourcefile, `git.c` .
You can't help but wonder when that appeared. 
Git gives us tools to find out.

A simple one is `git log`, which shows the commit history of a source file, 
even when the source file is no longer in the current version.

To ease typing, create a new digging tool, `git first`, which unearths the oldest commit for a named file:

``` bash
#!/bin/bash
git log --oneline -- master $1 | tail -1 | cut -f1 -d' ' # SHA1 of first commit with file $1
```

(Any executable in `$PATH` named `git-whatever` creates a new subcommand, `git` *`whatever`* .)

Taking this in hand, we can unearth the first `git.c`

``` bash
$ git first git.c
8e49d50 C implementation of the 'git' program, take two.
```

We could hunt for "take one," but let's push on and dig into the stratum below.

``` bash
$ git checkout $(git first git.c) # the first git.c
$ git checkout HEAD^ # the parent
$ ls git*
```

The layer below no longer has a `git.c`, but there is a `git.sh`, which fills the same niche,
as a glance at the source will confirm. This confirms the log comment: `git.c` replaced `git.sh`.

Okay, let's try the same trick again.

``` bash
$ git checkout $(git first git.sh)
HEAD is now at 215a7ad... Big tool rename.
$ git checkout HEAD^
$ ls git*
```

In the next stratum down, `git.sh` is no more, but there's a `git`.
Returning for a moment to the previous layer, which still had `git.sh`, we can see that the two are almost the same.

``` bash
$ git checkout -
$  diff git.sh <(git show HEAD^:git)
8a9
> 	test -x $path/git-$cmd-script && exec $path/git-$cmd-script "$@"
19,27c20
< cat <<\EOF
<     add apply archimport bisect branch checkout cherry clone
<     commit count-objects cvsimport diff fetch format-patch
<     fsck-cache get-tar-commit-id init-db log ls-remote octopus
<     pack-objects parse-remote patch-id prune pull push rebase
<     relink rename repack request-pull reset resolve revert
<     send-email shortlog show-branch status tag verify-tag
<     whatchanged
< EOF
---
> ls $path | sed -ne 's/^git-\(.*\)-script/  \1/p' | fmt
```

One last dig finds the first `git`.

``` bash

$ git checkout $(git first git)
HEAD is now at e764b8e... Add "git" and "git-log-script" helper scripts.
$ cat git
#!/bin/sh
cmd="git-$1-script"
shift
exec $cmd "$@"
```

It's a three-line shell script. Linus's comment explains why it arose.

``` bash
$ git log -1
commit e764b8e8b3c50b131be825532ba26fa346d6586e
Author: Linus Torvalds <torvalds@ppc970.osdl.org>
Date:   Wed Jun 1 09:13:26 2005 -0700

    Add "git" and "git-log-script" helper scripts.
    
    The "git" script is just shorthand: "git xyz <args>" will just execute
    "git-xyz-script <args>", which is useful for people used to the CVS
    naming convention. So "git log" will run the new git-log-script, which
    is just a wrapper around the new pretty-printing git-rev-list.
    
    Cheesy.

```

Before this? Files with "git" in the name, but no git command, or anything like it. 
We've hit bottom and found `git`'s beginning: "Ur-git."

*The prefix "ur-", commonly used to denote first ancestors,
comes from the name of [the great, Mesopotamian city-state of Ur](https://en.wikipedia.org/wiki/Ur).
In 2015 BC, as far before Christ as we are after it, Ur was the greatest city in the world 
-- roughly the same size as Boulder, Colorado, where I'm writing this.*

There are over 150 Git subcommands, [can we do this for each?](https://github.com/jsh/git-paleontology/blob/master/talk/when-did-other-subcommands-appear.md)
