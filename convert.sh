find . -type f -name '*.mp4' | while read -r FILE ; 
do
	echo ${FILE}
    	newfile="$(echo ${FILE} | sed -e 's/mp4/vob/g')" ;
	
	ffmpeg -hide_banner -loglevel error -i ${FILE} -target ntsc-dvd -preset ultrafast $newfile < /dev/null
done 
