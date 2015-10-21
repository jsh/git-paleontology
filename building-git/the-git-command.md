### The Git Command Appears in Three Flavors

Look away from bulk properties -- evolution in the large -- for a minute
and turn to specific features -- evolution in the small.

This is the analogue of moving from,
"How many different species of trilobites were there?"
and "Were major extinctions periodic?"
to
"When did birds first appear?"

The first **`git`** didn't even have a git command.

```bash
git checkout initial
ls
```
There is one now.

```bash
git checkout master
ls
```

When did it appear in the fossil record?
We have over 40,000 versions, but we could check each one out and look.
That could take some time.
A better idea is to look the way you call in artillery.

People aren't great at judging distance under stress,
so you call in artillery by asking for a round somewhere in the right direction.
If, say, it's long, you radio that back,
and then the artillery battery tries to put in a short round.
When you've put in two bracketing rounds,
they cut the interval in two. You watch and tell them "short" or "long."

Binary search quickly puts rounds on target.

We can do the same thing: look half-way between today's **`master`** and the first **`initial`**
to see whether the **`git`** command has appeared,
then cut the interval in half until we find the first version.
2^16 = 65536, so we should nail it down by looking at no more than 16 versions.

First, bracket the target:

```bash
git bisect initialize HEAD initial --
```

The `git bisect` command lets you look for where a bug first appeared.
The first argument after `start`, `HEAD` is defined as "bad", the second, `initial` is an earlier, "good" version.
We're looking for where we went wrong.

When initialize returns, it shows the commit half-way between and waits lo learn whether it's short or long.

```bash
ls
git bisect bad
```

This version still has `git.c`.
We could do the other 14 versions by calling `git bisect` repeatedly and looking at each,
but it's easier to just let `git bisect` look for itself.

```bash
git bisect run [ ! -f git.c ]
ls
```

The test after "run" can be any command, with or without arguments.
Ours, `[ ! -f git.c ]`, succeeds on commits that are "good" -- that don't have `git.c` --
and fails on commits that are "bad."

We find `git.c` disappears, but there's a predecessor, `git.sh`, which the Makefile installs as `git`.
It's not very complicated, either.

```bash
less git.sh
```

Programs start simple. If they're useful, we tune them and make them more elaborate.
If they're not, they disappear.

Don't start coding with a giant design phase: Write a first approximatin and see whether it gets used.
The Mashey shell, for example, became the most-used programming language in Bell Labs within months of its creation.
That was the sign that a programmable shell was a good idea.

Let's look further.

```bash
git bisect start HEAD initial --
ls # this one's long
git bisect bad
git bisect run [ ! -f git.sh ]
ls
cat git
```

Deeper in the past, there's a `git` command, but it's a shell script, too -- just simpler.

Third time's the charm.

```bash
git bisect start HEAD initial --
ls
git bisect good
git bisect run [ ! -f git.sh ]
ls
```

Eureka.
