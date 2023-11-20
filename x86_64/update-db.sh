#!/bin/bash

rm eshanizedosdev-repository*

echo "repo-add"
repo-add -s -n -R eshanizedosdev-repository.db.tar.gz *.pkg.tar.zst

sleep 1

rm eshanizedosdev-repository.db
rm eshanizedosdev-repository.db.sig

rm eshanizedosdev-repository.files
rm eshanizedosdev-repository.files.sig

mv eshanizedosdev-repository.db.tar.gz eshanizedosdev-repository.db
mv eshanizedosdev-repository.db.tar.gz.sig eshanizedosdev-repository.db.sig

mv eshanizedosdev-repository.files.tar.gz eshanizedosdev-repository.files
mv eshanizedosdev-repository.files.tar.gz.sig eshanizedosdev-repository.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
