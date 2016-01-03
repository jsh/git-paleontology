## Studying Software Development

Historically, we have used two paths to study software development: art and philosophy.

Art is ["what we've done that we think works."](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming)
We grow our art by finding and learning [rules-of-thumb.](https://en.wikipedia.org/wiki/The_Elements_of_Programming_Style)
We hone our craft through practice and by [copying experts.](https://en.wikipedia.org/wiki/The_Practice_of_Programming)

Philosophy is ["what we've done that we think ought to work."](https://en.wikipedia.org/wiki/COCOMO) 
We model what we think software development is probably like, from introspection and first principles,
and then use [data and anecdotes to fit those models.](https://en.wikipedia.org/wiki/Halstead_complexity_measures)

Each approach yields powerful truths; you can even [combine the two.](https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/The_Thinker%2C_Rodin.jpg/474px-The_Thinker%2C_Rodin.jpg)

Today, though, version control systems give us a third option. We can now look at how a piece of software develops by examining every change; we can study software development in detail, combing through data and looking for patterns.

We can study the evolution of programs by looking at their fossil records: Software Paleontology.

I propose to give that a try.

I have to pick something to study, and I want something well-defined, but not a toy.
All code ever written in Java would be too much. "Hello, world" not enough. We need something that's [not too small, not too big, but just right.](https://en.wikipedia.org/wiki/File:The_Three_Bears_-_Project_Gutenberg_eText_17034.jpg)

I need a model organism ... a software [lab rat](https://en.wikipedia.org/wiki/Laboratory_rat).

The code needs to be open-source, with a public repo, so I can look at it. [Microsoft Word](https://en.wikipedia.org/wiki/Microsoft_Word) is significant, but the detailed history of its source code is inaccessible.

I'd like something that's been maintained under a single version-control tool, because switching version-control tools will probably change developers' workflows.

I lean towards programs maintained under `git`. It encourages frequent commits, so you get a fine-grained fossil record. Plus, there are, quite literally, millions of git-controlled projects on [GitHub](https://github.com) alone, with [thousands more each day](https://en.wikipedia.org/wiki/GitHub#History), so that gives me plenty of repos to choose from.
(github growth)

So, what's a well-exercised piece of real, working code, up on, say, GitHub that I might want to study?

I pick ... [`git` itself.](https://en.wikipedia.org/wiki/Git_(software)) I'm going to use `git` to look at its own history. I'll

- reveal some things about git's fossil record,
- illustrate how to use git to look at repos,

and

- get you excited about doing software paleontology.
