## Git Has 40,000 commits.

You've seen the first commit. Now let's spend the rest of the time looking at each of the others.

Well, okay, maybe in bulk.

At first, there was only Linus. Now `git` has over 1300 committers.
At first, there were fewer than a dozen files. Now there are nearly 3,000.
At first, there was only one comit. Now there are 40,000.

Patterns? Are there any patterns?

For example:

Did `git` grow like Topsy, with tons of commits by Linus at first, until it got to roughly where it is now, then level out?
Did `git` start off with a stream of commits by Linus, then as it attracted interest, take off like a rocket?
Or was the development the [S-shaped curve you see in demographics](https://en.wikipedia.org/wiki/R/K_selection_theory), beginning with exponential growth, described by an r- parameter, and then leveling off as we hit maintentance,
at a level described by a k- parameter?

You have real data, and don't have to guess.

What do we see?
(graph of real data)

For anyone who has done real science, that is a remarkable graph.
This is, at some level, a social-science question, but you could not pay to get social-science data that good.
Or archaeological data on trilobites that good.

What does it mean? What model explains that? I cannot say.
[*Hypotheses non fingo*](https://en.wikipedia.org/wiki/Hypotheses_non_fingo)

Nevertheless, this is not a graph fit to models from first principles, this is not cocktail-party conversation, this is not from a class on "principles of software engineering." This graph is data.

To reflect a little further, if you've used Subversion, you'll know that in SVN, commits are numbered sequentially.
If you do three commits today, 6900, 6901, and 6902, 
then don't do another for a month, the next commit will still be 6903. SVN revision numbers are a timeline for the repository -- a virtual clock.

Git has no such scheme, but the linearity in the graph says that commit numbers are also a real clock. Number of commits only differs from time by a scaling factor.

Now that DNA sequencing is common, we use differences in DNA sequences as a way to measure evolutionary distance. Because mutation rates are a rough constant, we use measures of DNA distance to estimate how long ago, say, humans diverged from chimps.

Commits are analogous to mutational events, and, for `git`, the rate of mutation is a rough constant, so you can use "number of commits" between two stages of `git`'s evolution as a rough time measure of how far apart they are.

We already have real time, so I don't know how that's useful, but it's interesting.
