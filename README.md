# git-paleontology

Exploring the evolution of git

[Here are the slides.](https://goo.gl/alB0k4)

To play with the examples, begin thus:

```bash
git clone https://github.com/jsh/git-paleontology.git
cd git-paleontology
git submodule init
git submodule update
```

Currently, all the code in `bin/` runs on Ubuntu 14.04, and much of it runs on Mac OS/X (El Capitan).
On Ubuntu, `bin/setup-environment` will install all OS packages that the examples need.
Also, `source bin/bash-paleo`, will set `$PATH` and `$CDPATH` for easier access to examples.
