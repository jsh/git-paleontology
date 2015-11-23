# Git History Is a Fossil Record

Git has been under version control its whole life.
Git began on April 3, 2015, and was self-hosting by April 7.
Since then, its development has been under git control.
We can clone our own copy of the repo (git clone).

It is not a trivial project (ls; find . -type f | wc -l).
It has been under git control for longer than anything else, and we have every commit. (git log)
We can see any stage in its evolution we choose: the first, for example.
(git checkout)

Under a dozen files. But with one tweak, because a Linux library name changed, 
it builds (add to Makefile and make).

And runs. It can version-control itself. In fact, it works fine on modern git repos.
It is clumsy, with an even worse user-interface than it has today,
but it works, and it is recognizable -- just as the two-chambered heart of a fish
and the three-chambered heart of a frog
work and are recognizable ancestors of our four-chambered heart. (betta)

There is no `git` command, but the git Swiss Army knife is there: `cat-file`.

But unlike biological structures, where we infer intermediate steps through embryology, comparitive anatomy, and the fossil record,
waiting for fossils to be unearthed to confirm or deny our deductions,
git history gives us every stage, with comments on why the changes happened. (git log --one-line | wc -l)

40,000 commits in the master branch.
The back-of-the-envelope calculation makes that even more impressive:
It started in 2005, just over 10 years ago.  4,000 a year.
365 days in a year, so about 10 a day.

For starters, we can do some easy confirmation of the philosophers:
The most widely-used implementation of Barry Boehm's COCOMO model of software development is probably `sloccount`.

Run `sloccount` on the first version of git and you see it estimates the development took just what you'd expect: four days. (sloccount)
Well, it says three months, but that's probably just a typo.

Today's version? 3 years -- not 10, but at least the right order of magnitude -- and 32, full-time developers.
How many developers have there been?
(git shortlog | grep :$ | wc -l)
Over 1,300, probably none full-time.

The model may not be entirely accurate for open-source projects.

Or, let's face it, any projects. Data, not philosophy.
