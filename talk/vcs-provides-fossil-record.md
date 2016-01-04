## Git History Is a Fossil Record

Git has been under version control its whole life.
Git began on April 3, 2015, and was self-hosting by April 7.

From the moment it was fully working, every step of its development has been preserved.
You can get your own copy of its fossil record with `git clone git@github.com:git/git.git`.

With almost 3,000 files, it is not a trivial project.
It has been under git control for longer than anything else, and a simple `git log` shows every commit in the master branch.

It didn't start this big. If you look at the first, with
`git checkout $(git rev-list --all | tail -1`,
there are under a dozen files. 
Nevertheless, with only a single tweak to accommodate a library name change, you can still build and run it.

It can version-control itself. 
With a little hand-holding, can be used on modern git repos.
It is clumsy, with an even worse user-interface than `git` has today,
but it works, and it is recognizable -- just as the two-chambered heart of a fish
and the three-chambered heart of a frog
work and are [recognizable ancestors of our four-chambered heart.](https://en.wikipedia.org/wiki/Heart#Other_animals)

There is no `git` command, but the git Swiss Army knife is there: `cat-file`.

But unlike biological structures, where we must infer intermediate steps through embryology, comparitive anatomy, and the fossil record,
waiting for fossils to be unearthed or DNA sequence comparisons to be done to help confirm or deny our deductions,
git history gives us every stage, with comments on why the changes happened.

Git has over 40,000 commits in the master branch, or more than 10 a day.

The most widely-used implementation of Barry Boehm's COCOMO model of software development is probably `sloccount`.
Run `sloccount` on the first version of git and you see it estimates the development took four months.

It actuall took four days.

Run on the version from ten years later, `sloccount`'s estimate is 3 years, which is at least the right order of magnitude. It estimates 32, full-time developers. `git shortlog` lists over 1,300.

There's really nothing wrong with philosophy and modelling when that's all you have available,
but version-control software provides an alternative: accurate data.
