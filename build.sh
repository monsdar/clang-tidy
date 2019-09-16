#!/bin/bash

mkdir /source/build
cd /source/build
conan install .. --build missing
conan build ..
cd ..
find . -iname *.cpp | xargs clang-tidy-8 -p=/source/build