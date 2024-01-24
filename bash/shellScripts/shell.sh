#!/bin/bash

# Edit id3v2 tags on multiple files for the artist and time of the sermons
#for x in *.png;
#  do mv $x test/${x%.png}test.png;
#  done
REGEX_YEAR="([0-9]{4})"
#REGEX_TITlE="\w*"
# REGEX_TITLE with .
# (?<=[\_]TCRC_).*\.
# REGEX_TITLE with Underscores
# REGEX_TITlE="((?<=TCRC_).*(?=.mp3))"

id3v2 -D *.mp3 &&
id3v2 -a "Brad Hightower" *.mp3 &&
id3v2 -A "Trinity Christian Reformed Church" *.mp3 &&
for x in *.mp3;
do 
  if [[ $x =~ $REGEX_YEAR ]];
    then
      id3v2 -y "${BASH_REMATCH[1]}" $x;
  fi
  id3v2 -t $x $x;
done
id3v2 -l *.mp3

#for x in *.mp3;
#do
#  echo $x
#  if [[ $x =~ $REGEX_TITLE ]];
#  then
#    echo Title: "${BASH_REMATCH[1]}";
#  fi
#  if [[ $x =~ $REGEX_YEAR ]];
#  then
#    echo Year: "${BASH_REMATCH[1]}";
#  fi
#done

