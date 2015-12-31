## Everyone Loves Paleontology

Who here knows lots of Latin binomials for plants and animals?

- *Turdus migratorius*? (pic)
- *Triticum aestivum*? (pic)

The etymology helps. *migratorius* means it migrates. *Triticum* is probably the supine of *terere*, so "about to be ground," and "aestivum" is just "summer."

*Lycopersicum esculentum*? "*esculentum*" means it's edible. "*Lycopersicum*" is from Greek -- "*Lycos*", wolf + "*persicon*" peach:
an edible wolf-peach. (pic)

So, no, right? Here's another:

- *Tyrannosaurus rex* (pic)

You think you don't know Latin? How many horns does a *Triceratops* have? (pic)
Few people like botany or Latin, or math or software for that matter. Even little kids love paleontology and fossils.

What's this have to do with software?

People have studied software development in a couple of ways:

* art (Martile)
* philosophy (On Liberty)

Art develops as good programmers reflecting out what they're doing (Art of Computer Programming)
We grow our art by finding and learning rules-of-thumb (Goto Considered Harmful).
We hone our craft through practice and copying experts (Kernighan and Pike).
All those are art.

Philosophy is build from first principles, and then fit to data -- people who model what software development must be like, from first principles, and then
use data and anecdotes to fit their models.
(Software Physics)
(Cocomo)

You can even combine art and philosophy (the thinker)

Version control systems give us a third option:
we can look at the fossil record of programs.
We can look at how we develop software in detail by combing through every commit, looking for patterns.

We can study the evolution of software by *looking* at the evolution of software: Software Paleontology.

Let's give it a try.

We have to pick something to study. We want well-defined, but not a toy.
All code ever written in Java would be too much. "Hello, world" not enough. We need something that's not to small, not too big, but just right.
(Goldilocks and the Three Bears)

We need a model organism -- a lab rat (Lab rat)

The code needs to be open-source, with a public repo, so we can look at it. Microsoft Word is out. (Microsoft Word).

I like git as a VCS tool, for a lot of reasons, but one is that it encourages frequent commits. You get a finer-grained fossil record.
Plus, there are, quite literally, millions of git-controlled projects on GitHub alone, thousands more each day, so that gives us plenty of repos to choose from.
(github growth)

So, what's a well-exercised piece of real, working code, up on, say, GitHub that we might want to pick?

I choose ... `git` itself. (git page)

I'm going to use git to look at its own history.
You'll learn a little bit about

- learn something about  how to use git to look at repos,
- learn something about git's fossil record,

and, I hope

- get excited about software paleontology.
