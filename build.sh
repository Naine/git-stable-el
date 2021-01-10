#!/bin/sh
rm -rf tmp
mkdir tmp
rpmbuild -bb \
    --define "_sourcedir $PWD" \
    --define "_topdir $PWD/tmp" \
    git-stable.spec
