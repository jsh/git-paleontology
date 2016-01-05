## Git Has 40,000 commits.

You've seen the first commit. Now let's spend the rest of the time looking at each of the others.

Well, okay, maybe in bulk.

At first, there was only Linus. Now `git` has over 1300 committers.
At first, there were fewer than a dozen files. Now there are nearly 3,000.
At first, there was only one comit. Now there are 40,000.

Are there any patterns?

For example, did `git` grow like Topsy, 
with tons of commits by Linus at first, until it got to roughly where it is now, then level out?
Or did `git` start off with a few of commits by Linus
and then, as it attracted interest, take off like a rocket?
Or did its development follow 
the [S-shaped curve you see in demographics](https://en.wikipedia.org/wiki/R/K_selection_theory),
beginning with exponential growth, described by an r- parameter,
then leveling off as it hit maintentance mode,
at a level described by a k- parameter?

There's no need to guess. [The real data are in the repo for anyone to see.](https://github.com/jsh/git-paleontology/blob/master/talk/cumulative-commits.pdf)

To anyone who has done laboratory science, the graph is remarkable.
Commit rate is, at some level, a social-science phenomenon,
but you could not pay to find social-science data that good.
Or paleontological data on evoluton that regular.

What does it mean? What model explains that regularity?
[I cannot say.](https://en.wikipedia.org/wiki/Hypotheses_non_fingo)

Nevertheless, this is neither a graph fit to models from first principles nor cocktail-party conversation
about principles of software engineering. These are real data.

In Subversion commits are numbered sequentially.
If you do three commits today, 6900, 6901, and 6902, 
then don't do another for a month, the next commit will still be 6903. 
SVN revision numbers are a timeline for the repository -- a virtual clock.

Git has no such scheme, but the linearity in the graph says that commit numbers are also a real clock.
Number of commits only differs from time by a scaling factor.

Now that DNA sequencing is common,
we use differences in DNA sequences as a way to measure evolutionary distance. 
Experimentally, base-substitution rates appear to be a rough constant,
so we now use measures of DNA distance to estimate how long ago,
humans diverged from chimps, or *Drosophila simulans* from *Drosophila melanogaster*.

Source-code changes are analogous to substitutions; for `git`, the rate of substitution is a rough constant.
You can use the number of commits between two stages of `git`'s evolution
as a rough time measure of how far apart they are.

This is data-driven, and focused on a single software project, but it's still relatively big-picture work.
What happens when we [focus on a single command?](https://github.com/jsh/git-paleontology/blob/master/talk/the-ur-git.md)
