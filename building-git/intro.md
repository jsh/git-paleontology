### Programs. How do they get that way?

#### Proposing Software Paleontology

People have used a lot of approaches to study software development:

- [theories of program development developed from first principles](https://en.wikipedia.org/wiki/Halstead_complexity_measures),
- [simple models with parameters estimated from regression data](https://en.wikipedia.org/wiki/COCOMO)
- [developer remeniscences](https://en.wikipedia.org/wiki/Coders_at_work),
- [introspection to create a philosophy of software development](https://en.wikipedia.org/wiki/The_Mythical_Man-Month)


Today, good Version Control Systems (VCSs) offer another option: Natural History.
A project's commits are the fossil record of a program's evolution.
Here, I want to explore that approach.

There's a lot of code out there to rummage around in, but it seems wisest to start with one program.
I want something "real" -- not a toy or a late-night flight of fancy --
and something that's big enough to yield a lot of data. 
Studying tiny programs, like "hello, world" may prove useful, but why not start out thinking big?

My favorite program, **`bash`**, would fit the bill, yet it's not a good candidate because,
until recently, Chet Ramey didn't even use a VCS (though now, Chet tells me, he's using **`git`**). Still, there should be plenty to pick from. Last I looked, there were five million or so *new* repos a year on GitHub. 

It would be nice to study something that's has been around for a while. The "paleo" in "paleontology" means "old," and while binary years are a lot shorter than dog years, a program that's still in beta is still young.

The VCS matters, too. Today's Distributed Version Control Systems (DVCS's), like git, Mercurial, and Bazaar, encourage frequent commits, providing finer granularity than older, centralized systems.
**`gcc`** is big, important, and widely used, but its early evolution was under CVS, so the early record is spottier than the recent one.

To summarize, I'd like to look at the commit history of a widely-used, substantial program that's been under a single, DVCS since it first saw the light of day..

My suggestion? **`git`** itself.

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

- *16 January 2013: GitHub announced it had passed the 3 million users mark and was then hosting more than 5 million repositories.*

- *23 December 2013: GitHub announced it had reached 10 million repositories.*

Has it been under a single DVCS for its entire life? Yes. Indeed, it's been version-controlled by **`git`** for longer than any other program.

**`git`** is at least a defensible choice.

So what can I learn about **`git`** by looking at [its fossil record?](https://github.com/jsh/git-paleontology/blob/master/building-git/basic-stats.md)?
