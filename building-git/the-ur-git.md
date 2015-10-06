### Building the Ur-git

To build the first git, requires:

- getting the right source
- adjusting the environment

#### The Devonian: ***git*** first crawls out onto land

```bash
git clone https://github.com/git/git.git # I love this url
cd git
git log --oneline | tail
git checkout $(git log --oneline | tail -1 | cut -d' ' -f1)
# or git checkout $(git rev-list --max-parents=0 HEAD | tail -1)
ls
git tag v0.0.1
```

Build it on Linux, of course.
Porting to Ubuntu 14.04 requires only trivial tweaks.

```bash
git checkout -b devonian
echo 'LIBS=-lcrypto -lz' >> Makefile
sudo apt-get install libssl-dev # in case it's not there
make
git commit -am'port to ubuntu 14.04'
```

*It's alive!* -- Victor Frankenstein
