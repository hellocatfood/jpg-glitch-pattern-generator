#!/bin/bash

#clear the frames directory
rm frames/*

#create three sets of random colour
hex=$(for i in $(seq 1 6); do echo -n $(echo "obase=16; $(($RANDOM % 16))" | bc); done; echo)
hex2=$(for i in $(seq 1 6); do echo -n $(echo "obase=16; $(($RANDOM % 16))" | bc); done; echo)
hex3=$(for i in $(seq 1 6); do echo -n $(echo "obase=16; $(($RANDOM % 16))" | bc); done; echo)

convert -size 10x10 xc:"#"$hex"" -fill "#"$hex2"" -draw "rectangle 0,0 4,4" -fill "#"$hex3"" -draw "rectangle 5,5 9,9"  jgpg.jpg

#create directory to story frames
mkdir frames

#used to name the files sequentially
globalno=0

#how many times to go from n quality to 0
loop=0

while [ $loop -le 3 ]
	do
	#starting quality number
	quality=78

	#end quality number
	while [ $quality -gt 0 ]
		do 

		#convert jgpg.jpg -scale 640x frames/jgpg_"$globalno".jpg
		
		convert jgpg.jpg -quality "$quality" jgpg.jpg

		echo "days till Friday "$quality""

		quality=$(($quality - 1))

		globalno=$(($globalno + 1))

	done

	convert jgpg.jpg -scale 410% jgpg.jpg

	loop=$(($loop + 1))

done
