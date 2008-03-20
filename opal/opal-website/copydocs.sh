#!/bin/bash

VERSION=1.9


echo ---
echo Generating the documentation
echo ---
cd ../opal-core/
ant -f build-admin.xml docs
cd -


echo ---
echo Generating the Api Docuemtation
echo ---
cd  ../opal-core/
ant api-docs
cd -



echo ---
echo Copying over everything
echo ---
DESTDIR=target/site/docs/$VERSION/
SRCDIR=../opal-core/docs/
# opal-core
mkdir -p $DESTDIR
cp -r $SRCDIR* $DESTDIR
# opal-py
cp ../opal-py/docs/index.html $DESTDIR/opal-py-index.html
# opal-perl
cp ../opal-perl/docs/index.html $DESTDIR/opal-perl-index.html



