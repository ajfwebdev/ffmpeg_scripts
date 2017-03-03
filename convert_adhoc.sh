#!/bin/bash

# A script to convert video files using ffmpeg.

INDIR=$HOME/Movies/friday_5_video/
OUTDIR=$HOME/Movies/friday_5_video/

export FILENAME
export INDIR
export OUTDIR

INFILE=${INDIR}7_component_d7_high_five_edit
OUTFILE=${OUTDIR}7_component_d7_high_five_sm

echo
echo Input INFILE: $INFILE
echo Input OUTFILE: $OUTFILE
echo
echo Output Path: $DIR
rm ${OUTFILE}.mp4
ffmpeg -i ${INFILE}.mp4 -vcodec libx264 -crf 20 ${OUTFILE}.mp4

exit

#ffmpeg -i ${DIR}${INFILE} -c:v libx264 -preset medium -b:v 555k ${DIR}${OUTFILE}
#ffmpeg -y -i ${FILENAME}.mov -c:v libx264 -preset slow -b:v 3277k -strict -2 -pass 1 -f mp4 /dev/null && ffmpeg -i ${FILENAME}.mov -c:v libx264 -preset slow -b:v 1600 -strict -2 -pass 2 -na ${DIR}${FILENAME}.mp4
#ffmpeg -i ${FILENAME}.mov -r 25 -b:v 2000k -an  -movflags faststart ${DIR}${FILENAME}.mp4 -y
#rm ${DIR}${FILENAME}.webm
#ffmpeg -i ${FILENAME}.mov -c:a libvorbis -ac 1 -b:a 96k -ar 48000 -b:v 1100k -maxrate 1100k -bufsize 1835k ${DIR}${FILENAME}.webm -y
#ffmpeg -i ${FILENAME}.mov -vf scale=960:-1 -c:v libvpx -r 25 -b:v 2000k -c:a libvorbis -aq 0 -an ${DIR}${FILENAME}.ogv -y
#ffmpeg -i ${FILENAME}.mov -acodec libvorbis -vcodec libtheora -ac 2 -ab 96k -ar 44100 -b:v 2000k -s 960x540 -an ${DIR}${FILENAME}.ogv -y



