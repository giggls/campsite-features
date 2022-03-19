

all:

test: test-camp-pitch-18.png test-camp-pitch-pt-18.png test-camp-pitch-19.png

svg: out1.svg out2.svg

test-camp-pitch-18.png: campsite-features.map
	shp2img  -m campsite-features.map -e 894007.482823 6215094.769868 894313.230937 6215247.643924 -s 512 256 >$@

test-camp-pitch-19.png: campsite-features.map
	shp2img  -m campsite-features.map -e 894083.919852 6215171.206896 894160.356880 6215247.643924 -s 256 256 >$@

test-camp-pitch-pt-18.png: campsite-features.map
	shp2img  -m campsite-features.map -e -231145.573534 6313698.536356 -230992.699478 6313851.410412 -s 512 256 >$@

# nothing should be rendered in zoomlevels >= 17 currently
#test-camp-pitch-17.png: camp-pitches.map
#	shp2img  -m camp-pitches.map -e 894007.482823 6214941.895811 894313.230937 6215247.643924 -s 256 256 >$@

out1.svg:
	shp2img -i svg -m campsite-features.map -e 1237974.110107 6346872.206631 1238050.547135 6346948.643660 -s 256 256 >$@

out2.svg:
	shp2img -i svg -m campsite-features.map -e 894466.104993 6214941.895811 894618.979050 6215094.769868 -s 256 256 >$@

clean:
	rm test-*.png	