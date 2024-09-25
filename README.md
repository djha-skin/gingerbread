# Gingerbread

Gingerbread is a port of the excellent
[cookiecutter](https://github.com/cookiecutter/cookiecutter) to the Common Lisp
REPL.

Simply clone this repository to the local quicklisp directory (or use OCICL to
load it) and run `(ql:quickload "com.djhaskin.gingerbread")`. Then,m

```
(com.djhaskin.gingerbread:make
  "git@github.com:djhaskin987/gb-cl-project.git")
```

The run will begin to clone out and create a new folder according to spec, using
restarts to get any missing information.

Enjoy!