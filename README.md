# 7linden-at-home

Create a .deb package suitable for \*buntu, Debian, Linux Mint.

## Script to figure out whether we are at home

### /opt/7linden-at-home/bin/7linden-at-home

(Bash-) Script checks whether we are at home (by asking for routers ssh key fingerprints and comparing them with `/opt/7linden-at-home/data/host_keys`).

### Package building

To build the package you need to have [FPM](https://github.com/jordansissel/fpm) in the path and execute `create.sh`.

### Package release

To ease integration with other tools, a version bump should be tagged with the current version number.
As the packages version is inferred by `create.sh` from the `VERSION` file, this is the recommended behaviour:

  - Improve code.
  - Raise `VERSION` (mind semantic versioning).
  - Commit, tag and push the stuff:
    git add VERSION; git commit -m "raise VERSION to `cat VERSION`"
    git tag -a "`cat VERSION`" -m "`cat VERSION`"
    git push --tags

### License

Copyright 2016, Felix Wolfsteller.

Released under the [GPLv3](LICENSE) included as LICENSE file.

### Contribute

You are welcome, drop me a line and issue a Pull Request.

### Known TODOs

 * be more defensive
 * be more defensive, 2: escaping
 * set proper timeouts for the keyscan-call
