JPG Glitch Pattern Generator
============================
A simple script to genearte a unique pattern based on jpg compression

Tested on Ubuntun 14.04

Dependencies
============
- Imagemagick

Usage
=====
pattern_generator
-----------------
- make the file executable `chmod +x ./pattern_generator.sh`
- execute the file!

The file will be saved as jgpg.jpg

Uncomment line 31 to save each individual frame of the process. These will be stored in ./frames

batch_pattern_generator
-----------------------
- make the file executable `chmod +x ./batch_glitch_generator.sh
- place a jpg in the same directory as the script
- execute the file!

The file will be saved as jgpg_$FILENAME.jpg

Uncomment line 31 to save each individual frame of the process. These will be stored in ./frames