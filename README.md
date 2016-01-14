# git-paleontology

Exploring the evolution of Git

[Here are slides](https://goo.gl/alB0k4) for the talk that goes with this repository.

To play with the examples, begin thus:

```bash
git clone https://github.com/jsh/git-paleontology.git
cd git-paleontology
git submodule init
git submodule update
```

Having done that, here's what you'll have:

- [Text for the talk, with some links.](https://github.com/jsh/git-paleontology/tree/master/talk)
- [Executable scripts with the code from the slides.](https://github.com/jsh/git-paleontology/tree/master/bin)
- [A handful of general-purpose Git tools.](https://github.com/jsh/git-paleontology/tree/master/git-scratch)
- [Your own clone of the Git source code.](https://github.com/jsh/git-paleontology/tree/master/git)

Right now, all the code in `bin/` runs on Ubuntu 14.04, and most of it runs on Mac OS/X (El Capitan).
On Ubuntu, `bin/setup-environment` will install all OS packages that the examples need.
Also, `source bin/bash-paleo`, will set `$PATH` and `$CDPATH` for easier access to examples.

If you'd like an Ubuntu 14.04 box to run the examples on, 
I supply
[step-by-step instructions you can follow](https://github.com/jsh/git-paleontology/blob/master/talk/UsingGCE.md)
to spin one up in the cloud, with Google Compute Engine.

On OS/X, you'll have to figure out what packages you need and install them.
If you write a script to do that,
please send me a pull request so everyone can use it.
