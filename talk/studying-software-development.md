## Studying Software Development

Historically, we have used two paths to study software development: art and philosophy.

Art is ["what we do that works."](https://en.wikipedia.org/wiki/The_Art_of_Computer_Programming)
We grow our art by finding and learning [rules-of-thumb.](https://en.wikipedia.org/wiki/The_Elements_of_Programming_Style)
We hone our craft through practice and by [copying experts.](https://en.wikipedia.org/wiki/The_Practice_of_Programming)

Philosophy is ["what we think we should do that we think should work."](https://en.wikipedia.org/wiki/COCOMO) 
We reason about how software development should be done [from introspection and first principles.](https://en.wikipedia.org/wiki/Considered_harmful)
We make abstract models, and use [data and anecdotes to fit those models.](https://en.wikipedia.org/wiki/Halstead_complexity_measures)

Each approach yields powerful truths, and [the two can overlap.](https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/The_Thinker%2C_Rodin.jpg/474px-The_Thinker%2C_Rodin.jpg)

Today, though, version control systems give us a third option.
We can look at how software develops by picking a project, putting it under a microscope, and looking at every change.

We can study the evolution of programs by looking at their fossil records: Software Paleontology.

I want to give that a try.

I have to pick something to study.
I want something well-defined, but not a toy.
All code ever written in Java would be too much. "hello, world" not enough.
I need something that's [not too small, not too big, but just right.](https://en.wikipedia.org/wiki/File:The_Three_Bears_-_Project_Gutenberg_eText_17034.jpg)
I need a model organism ... a software [lab rat](https://en.wikipedia.org/wiki/Laboratory_rat).

The code needs to be open-source, with a public repo, so I can look at it. [Microsoft Word](https://en.wikipedia.org/wiki/Microsoft_Word) is significant, but [the detailed history of its source code](https://www.youtube.com/watch?v=ADkLBtSGKMo) is inaccessible.

I want something that's been maintained under a single version-control tool, because switching version-control tools may change developers' workflows.
Git, the VCS I'm most comfortable with,
seems like a reasonable tool choice, since [GitHub](https://github.com) alone, has millions of git repos,
with [thousands more added each day.](https://en.wikipedia.org/wiki/GitHub#History).
It also encourages frequent commits, so I can find fine-grained fossil records.

And what's a well-exercised piece of real, working code, with a repository hosted on GitHub, that I might want to study?
I'll pick [Git itself.](https://en.wikipedia.org/wiki/Git_(software))

I'm going to use Git to look at its own history. In the course of doing that, I'll try to

- illustrate how to use Git to look at repository histories,
- reveal some things about Git's fossil record,

and

- get you excited about doing software paleontology.

[Let's begin.](https://github.com/jsh/git-paleontology/blob/master/talk/vcs-provides-fossil-record.md)
