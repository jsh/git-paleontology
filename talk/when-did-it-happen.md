## When Did It Happen?

A common paleontological puzzle is "When did it happen?"
When did dinosaurs turn into birds? (pic of Archaeopteryx)
When did teosinte -- a grass (pic of teosinte) -- turn into corn (a pic of corn)?

Git has lots of fathers. When did Linus make his last commit to git?
When did the most frequent committer -- Junio Hamano -- make his first?
We don't have to look at every version, git log gives answers (git log --one-line --author)

There was no git command in the first version. When did it appear?
Here again, git log reveals all.  (git log -- )

If you're looking for strings inside log comments, there's even git pickaxe (git pickaxe example?),
but some questions are too hard for "git log", and you have to call out the big guns. (artillery pic)

I'll review the technique for anyone who hasn't called in artillery in a while.
When I was a Marine, one of the most interesting things I learned was that we're not very good at judging distances, especially under stress.
So, when you need to call in artillery -- anything from a mortar to a howitzer -- here's what you're taught to do:

First, get a round placed in the general vicinity of the target. Assuming you can see the target and the gun crew can't, let them know whether the round's short or long.
If, for example, it's long, then they'll try to lob a short round. Once the target's bracketed, they'll cut the interval in half, and you just tell them whether the round in the middle is short or long. That continues until they're on-target. It's binary search. When they're on target, you just tell them, "Fire for effect."

git bisect uses the same technique, so if you're used to callng in artillery, you'll feel right at home.
To illustrate with a trivial example, we'll find the first time the git source got big enough to need subdirectories,

(git bisect example)

All you have to do is write a script to diagnose whether a commit has the property you want or not; instead of combing through the whole fossil record of 40,000 commits,
one-by-one, you can find it by looking at no more than log(40,000) -- about 15 .
