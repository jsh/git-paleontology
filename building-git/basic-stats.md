### Git's Been Around for over a Decade

#### Devonian: ***git*** first crawls out onto land

Since we have the complete record, let's see where **`git`** started.

```bash
git clone git@github.com:git/git.git # I love this url
cd git
git log --oneline | tail # the entire history
git checkout $(git log --oneline | tail -1 | cut -d' ' -f1) # get the first version
# or git checkout $(git rev-list --max-parents=0 HEAD | tail -1)
ls # voila!
git tag v0.0.1 # tag it to make it easy to find
```

What did that first version contain?

```bash
git show 0.0.1
ls | wc -l # 11 files
```

#### The Recent

About a decade later, we come to v2.4.0.
(It's a few days off of a decade,
but I'll stick to an official release,
rather than just a random commit.)

```bash
git show v2.4.0
git checkout v2.4.0
find . -type f | wc -l # 2786 files
find . -type d | wc -l # in 155 directories
```

I'll tag these by year.

```bash
git tag y0 v0.0.1
git tag y10 v2.4.0
```

How much history is there?

```bash
git log --oneline v2.4.0 | wc -l # 39278
```

On the order of 10 commits a day for a decade.
Plenty to analyze.

How many objects today?

```bash
pushd .git/objects/pack
git verify-pack -v *.pack | less
git verify-pack -v *.pack > object-list
wc -l object-list # about 200,000
```

And how many of each kind of object?

```bash
for i in blob tree commit tag; do
  printf "%10ss:\t" $i
  grep $i object-list | wc -l
done
```

Daily: 20 new blobs, 20 new trees, 10 new commits.
And an annotated tag every week.

It's an active project.

Who's doing this work?

```bash
git shortlog | less
git shortlog | grep '):$' | wc -l
```

Though not everyone contributes equally.

```bash
git shortlog |
  perl -lane 'print if s/(.*)\((.*)\):$/\2\t\1/'  |
  sort -n
```

There's been a lot of change. But what did all that change [start from?](https://github.com/jsh/git-paleontology/blob/master/the-ur-git.md)
