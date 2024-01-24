#!bin/bash

# Edit id3v2 tags on multiple files for the artist and time of the sermons
for x in *.png;
  do mv $x test/${x%.png}test.png;done
