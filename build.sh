#!/bin/sh
rm -rf tmp
mkdir tmp
rpmbuild -bb \
    --undefine _disable_source_fetch \
    --define "debug_package %{nil}" \
    --define "_sourcedir $PWD" \
    --define "_topdir $PWD/tmp" \
    --define "build_cflags -O3" \
    --define "build_ldflags -O3" \
    git-stable.spec
