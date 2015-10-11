### Programs. How do they get that way?

#### Proposing Software Paleontology

Version control systems (VCSs) let us look at a program's history.
With good version control, we have open to us a new field: software paleontology.

Instead of theorizing about software development, like Software Physics, fitting regression data to models, like COCOMO,
or gathering developer remeniscences, we can do natural history of software.

The collection of commits is the fossil record of a program's evolution.
I'd like to spend a few minutes looking at that.

There's a lot of code out there. Let's start small, with a single program.

I want a real program -- not a toy or one programmer's flight-of-fancy. I'd also like something that's large. Studying tiny programs is useful, but why not think big?

My favorite program, **`bash`**, fits both of these, but it's not a good candidate.
Until the last couple of years, Chet Ramey didn't even use a version control system, though now, Chet tells me, he's using **`git`**.

Last I looked, there were five million or so *new* repos a year on GitHub, alone, so there's plenty to pick from.
It would be nice to have something that's has been around for a while. The "paleo" in "paleontology" means "old,"
and while binary years are a lot shorter than dog years, a program that you only heard of last month is still young.

It would also help if the entire history had been kept under a single system, since different systems encourage different developer behaviors.
Today's Distributed Version Control Systems (DVCS's), like git, Mercurial, and Bazaar, encourage frequent commits, providing finer granularity than older, centralized systems.
**`gcc`** is big, important, and widely used, but its early evolution was under CVS, so the early record is spottier than the recent one.

To summarize, we want a widely-used, substantial program that's been under a single, DVCS since its inception.

My suggestion? Let's look at **`git`** itself.

#### Git Is a Reasonable Object of Study

Let's check:

Is it substantial?

Recent **`git`**s are three times bigger than **`bash`**, which is, itself, a pretty big program.

```bash
-r-xr-xr-x    1 jsh   admin   720K Aug 29 09:51 /usr/local/Cellar/bash/4.3.42/bin/bash
-r-xr-xr-x  116 jsh   admin   1.7M Oct 10 07:17 /usr/local/Cellar/git/2.6.1/bin/git
```

Of course, everything's relative.

```bash
-r-xr-xr-x    1 jsh   admin   720K Aug 29 09:51 /usr/local/Cellar/bash/4.3.42/bin/bash
-r-xr-xr-x  116 jsh   admin   1.7M Oct 10 07:17 /usr/local/Cellar/git/2.6.1/bin/git
-r-xr-xr-x    1 root  wheel    12M Sep 17 01:07 /usr/bin/emacs
```

Is it long-lived? From [Wikipedia's entry on git](https://en.wikipedia.org/wiki/Git_(software)):

*The development of Git began on 3 April 2005. The project was announced on 6 April, and became self-hosting as of 7 April.*

Is it in use? Not a toy? From the same Wikipedia entry:

*On 16 June Git managed the kernel 2.6.12 release.*

and from  [Wikipedia's timeline for GitHub](https://en.wikipedia.org/wiki/GitHub):

*- 16 January 2013: GitHub announced it had passed the 3 million users mark and was then hosting more than 5 million repositories.*
*- 23 December 2013: GitHub announced it had reached 10 million repositories.*

**`git`** is at least a defensible choice.

What, then, can we say about [**`git`**'s fossil record?](https://github.com/jsh/git-paleontology/blob/master/building-git/basic-stats.md)
