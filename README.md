# git-paleontology
Exploring the evolution of git

[Here are the slides.](https://goo.gl/alB0k4)

To play with this, begin thus:
```bash
git clone https://github.com/jsh/git-paleontology.git
cd git-paleontology
git submodule init
git submodule update
PATH+=:$PWD/bin
```

Currently, all the code in `bin/` runs on Ubuntu 14.04, and most of it runs on Mac OS/X (El Capitan).
On Ubuntu, `bin/setup-environment` will ensure needed packages are installed.
