### Building the Ur-git, 

Let's look at the first version more closely.
To build the first git, requires

- getting the right source
- adjusting the environment

Build it on Linux, of course.
Porting to Ubuntu 14.04 requires only trivial tweaks.

```bash
git checkout -b devonian v0.0.1
echo 'LIBS=-lcrypto -lz' >> Makefile
sudo apt-get install libssl-dev # in case it's not there
make
git commit -am'port to ubuntu 14.04'
```

*It's alive!* -- Victor Frankenstein

This is two days' work.
Let's see what COCOMO says about it.

```bash
make clean
sloccount
```

*Development Effort Estimate, Person-Years (Person-Months) = 0.22 (2.61)*

One person. Two days, two months ... who's counting?

At this point, it can host itself.
The next milestone? [Hosting a Linux kernel release.](https://github.com/jsh/git-paleontology/blob/master/building-git/kernel-git.md)
