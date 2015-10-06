### Git's Been Around for over a Decade

```bash
git show v0.0.1
git show v2.4.0 # about a decade later
```

```bash
git log v2.4.0 | wc -l # 39278
```
On the order of 10 commits a day for a decade.
Plenty of history to analyze.

```bash
make clean
ls | wc -l # 11 files
git checkout v2.6.1 # not a moving target
find . -type f | wc -l # 2879
git log | wc -l # 40836
```
