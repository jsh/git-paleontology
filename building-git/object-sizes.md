### Objects Come in Four Flavors

By unpacking the packfile, you can find
about 200,000 objects in **`git`**'s git repository.

```bash
cd /tmp
rm -rf git packfiles
git clone -q https://github.com/git/git.git
mkdir packfiles
mv git/.git/objects/pack/* ../packfiles # git won't unpack with a packfile in the repo
git unpack-objects -q < packfiles/*.pack
cd git/.git/objects
find . -type f | wc -l
```

Unpacking like this lets us capture object sizes for each object types.

```bash
find . -type f | xargs ls -l | tr -d './' |
while read p l o g size m d t name; do
  echo $(git cat-file -t $name) $size
done | tee object-sizes

for i in blob tree commit tag; do
{
  echo type size
  grep $t object-sizes | sort -n --key=2
} > $t.sizes
done
```

A quick excursion into R gives lets us explore these data.
Here, for example, is the distribution of `log(blob size)`.

```{r, echo=FALSE}

blob <- read.csv("~/git-paleontology/data/blob.dat", sep="")
hist(log(blob$size), , main="Distribution of blob sizes", xlab="log(blob size)")

```

Blob sizes have a roughly lognormal distribution.

