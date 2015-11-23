## Git Has 40,000 commits.

You've seen the first. Now let's spend the rest of the time looking at each of the others.

Well, okay, maybe in bulk.

We saw that `git` has over 1300 committers. At first, there was only Linus.
At first, there wasn't much code, and now there's a lot.
And at first, there was one comit, now there are 40,000.

Patterns? Are there any patterns?

For example:

Did `git` grow like Topsy, with tons of commits by Linus at first, until it got to roughly where it is now, then level out?
Did `git` start off with a stream of commits by Linus, then as it attracted interest, take off like a rocket?
Or an S-shaped curve you see in demographics, beginning with exponential growth, described by an r- parameter, and then leveling off as we hit maintentance,
at a level described by a k- parameter?

(three curves on the same graph)

If only we could look at real data -- at the actual fossil record. :-)

What do we see?
(graph of real data)

For anyone who has done real science, that is a remarkable graph.
This is, at some level, a social-science question, but you could not pay to get social-science data that good.
Or archaeological data on trilobites that good.

What does it mean? What model explains that? I cannot say. "Hypotheses non fingo" (Wikipedia page.)

But it's not models from first principles, not cocktail-party conversation, not a class on "principles of software engineering." It's data.

To reflect a little further, if you've used Subversion, you'll know that in SVN, commits are numbered sequentially. If you do three commits today:
6900, 6901, and 6902, then don't do another for a month, the next commit will still be 6903. SVN revision numbers are a timeline for the repository: its virtual clock.

Git has no such scheme, but the linearity you just saw says that *if it did*, those commit numbers would also be a real clock.

Now that DNA sequencing is common, we use differences in DNA sequences as a way to measure evolutionary distance. Because mutation rates are a rough constant, we use measures of DNA distance to estimate how long ago, say, humans diverged from chimps.

(some pic of that)

Commits are analogous to mutational events, and, for `git`, the rate of mutation is a rough constant, so we can use "number of commits" between two stages of `git`'s evolution as a rough time measure of how far apart they are.

We have real time, so I don't know how that's useful, but it's interesting.

Let's return to the realm of philosophy. COCOMO. We looked at its opinion of the first and last commits, but why not see what its estimate of intermediate stages looks like?
Let's take, say, 100 equally-spaced commits, do `sloccount` on each, and plot `sloccount's` estimate of staff-months for each. The number -- and its Y-intercept -- may be wrong, but, if the model's right, the graph should be linear.

(plot)

[Conclusion]
