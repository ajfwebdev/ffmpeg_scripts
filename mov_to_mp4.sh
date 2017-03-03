#!/bin/bash

# A script to convert video files using ffmpeg on Mac.

INDIR=$HOME/Movies/friday_5_video/
OUTDIR=$HOME/Movies/friday_5_video/

export FILENAME
export INDIR
export OUTDIR

for FILENAME in component_d7_intro component_d7_high_five
do
INFILE=${INDIR}${FILENAME}
OUTFILE=${OUTDIR}${FILENAME}
echo
echo Input File: $INFILE
echo
echo Output File: $OUTFILE
rm ${OUTFILE}.mp4
ffmpeg -i ${INFILE}.mov -vcodec copy -acodec copy ${OUTFILE}.mp4
rm ${OUTFILE}_sm.mp4
ffmpeg -i ${OUTFILE}.mp4 -vcodec libx264 -crf 20 ${OUTFILE}_sm.mp4
rm ${OUTFILE}.mp4
done

exit

#straight copy mov to mp4, no loss of quality
#ffmpeg -i ${INFILE}.mov -vcodec copy -acodec copy ${OUTFILE}.mp4
#Reduces the size of mp4 files
#ffmpeg -i ${OUTFILE}.mp4 -vcodec libx264 -crf 20 ${OUTFILE}_sm.mp4
#
#ffmpeg -i ${FILENAME}.mov -c:a libvorbis -ac 1 -b:a 96k -ar 48000 -b:v 1100k -maxrate 1100k -bufsize 1835k ${DIR}${FILENAME}.webm -y
#ffmpeg -i ${FILENAME}.mov -vf scale=960:-1 -c:v libvpx -r 25 -b:v 2000k -c:a libvorbis -aq 0 -an ${DIR}${FILENAME}.ogv -y
#ffmpeg -i ${FILENAME}.mov -acodec libvorbis -vcodec libtheora -ac 2 -ab 96k -ar 44100 -b:v 2000k -s 960x540 -an ${DIR}${FILENAME}.ogv -y
