### What Does It Take to Manage a Kernel Release?

*"You can observe a lot by watching."* -- Yogi Berra


To get a feel for early evolution, and what we can see happening,
we can go back to Wikipedia, and look at dates again.

*On 16 June Git managed the kernel 2.6.12 release.*

How much did git change in two-and-a-half months?

```bash
git checkout $(git rev-list -1 --before="June 18 2005" master)
git log --oneline | wc -l # 749 commits, about 2 a day
ls # a git command with subcommands!
ls | wc -l # 107 top-level files
ls Documentation | wc -l # 
ls t | wc -l # 35 tests
../bin/authors # lots of contributors
../bin/authors | wc -l # 40
```

There are a lot more files.
There are tests and documentation.
Linus is the top contributor, but he's not alone.
There's stuff for portability and a **`git`** command.

```bash
cat git
```

Time to try a build.
