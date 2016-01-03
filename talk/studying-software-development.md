## Studying Software Development

Historically, people have studied software development in two ways -- through art and through philosophy.

Art is ["what we've done that works."](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming)
We grow our art by finding and learning [rules-of-thumb.](https://en.wikipedia.org/wiki/The_Elements_of_Programming_Style)
We hone our craft through practice and by [copying experts.](https://en.wikipedia.org/wiki/The_Practice_of_Programming)

Philosophy is ["what we imagine should work."](https://en.wikipedia.org/wiki/COCOMO) 
We model what we think software development must be like, from first principles,
and then use [data and anecdotes to fit those models.](https://en.wikipedia.org/wiki/Halstead_complexity_measures)

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
