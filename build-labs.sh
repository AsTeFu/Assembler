#!/bin/bash
rm -rf build
[ -d ./build ] | mkdir -p build;
for assembly in ./**/*.s; do
  {
    file=$(basename "${assembly}" | sed 's/\.s//')
    gcc -no-pie "${assembly}" -o build/"$file"
  }
done
