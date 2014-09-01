#!/bin/bash

rm frames/*

mkdir frames

for file in *.jpg

	do

	#used to name the files sequentially
	globalno=0

	convert $file -scale 100x jgpg.jpg

	#how many times to go from n quality to 0
	loop=3

		while [ $loop -gt 0 ]

		do

		#starting quality number
		quality=70

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

		loop=$(($loop - 1))

	done

convert jgpg.jpg jgpg_${file%.jpg}.jpg

done

rm jgpg.jpg
