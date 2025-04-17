repo-cloner
-----------

Shallow-clone a repository (specified in `$GIT_SRC`, branch
`$GIT_BRANCH`) to a directory (`$GIT_TARGET`), or, if it already
exists, update the branch.

This is intended to be run as a Kubernetes CronJob to keep an on-disk
shared copy of the tutorial notebooks fresh, so that a user Lab will not
have to do its own clone on startup.

It can, however, be used with any Git repository.

