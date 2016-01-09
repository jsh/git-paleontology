## Git History Is a Fossil Record

Git has been under version control its whole life.
Git began on April 3, 2015, and was self-hosting by April 7.

From the moment it was fully working, every step of its development has been preserved.
You can get your own copy of its fossil record with `git clone git@github.com:git/git.git`.

With almost 3,000 files, it is not a trivial project.
It has been under git control for longer than anything else, and a simple `git log` shows every commit in the master branch.

It didn't start this big. If you look at the first, with
`git checkout $(git rev-list --all | tail -1`,
there are fewer than a dozen files. 
Nevertheless, with only a single tweak to accommodate a library-name change, you can still build it on a modern Linux, like Ubuntu 14.04 (LTS).

``` bash
$ echo 'LIBS=-lcrypto -lz' >> Makefile
$ make
```

(If you don't have a Linux box close at hand, [here's how to have one, right away.](https://github.com/jsh/git-paleontology/blob/master/talk/UsingGCE.md)

Seven executables, [which could version-control its own sources.](https://www.youtube.com/watch?v=bPmVhyHBRAM)

It is clumsy, with an even worse user-interface than `git` has today,
but it works, and it is recognizable -- just as the two-chambered heart of a fish
and the three-chambered heart of a frog
work and are [recognizable ancestors of our four-chambered heart.](https://en.wikipedia.org/wiki/Heart#Other_animals)

There is no `git` command, but
with a little hand-holding, some of the executables
like Git's Swiss-Army knife, `cat-file`,
work with modern git repos.

Yet, unlike biological structures, where we must infer intermediate steps through embryology, comparitive anatomy, and the fossil record,
waiting for fossils to be unearthed or DNA-sequence comparisons to be done to help confirm or deny our deductions,
Git's history gives us every stage, with comments on why the changes happened.

The most widely-used implementation of Barry Boehm's COCOMO model of software development is probably `sloccount`.
**Sloccount** estimates that Linus took four months to develop the first version of Git.

It actually took four days.

Run on today's version, after more than a decade of work by over 1,300 contributors, `sloccount` estimates 3 years and estimate 32, full-time developers.

To be more precise, that last estimate is what COCOMO estimates developing Git *would* take, as a project started from scratch.
There's really nothing wrong with philosophy and modelling when that's all you have available,
but version-control software provides an alternative: accurate data.

[What else can those data tell us?](https://github.com/jsh/git-paleontology/blob/master/talk/40%2C000-commits.md)
