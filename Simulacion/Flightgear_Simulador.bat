C:
cd C:\Program Files\FlightGear

SET FG_ROOT=C:\Program Files\FlightGear\data
SET FG_SCENERY=C:\Program Files\FlightGear\data\Scenery
.\\bin\win64\fgfs --aircraft=Malolo1 --fdm=network,localhost,5501,5502,5503 --enable-terrasync --enable-random-objects --enable-freeze --disable-sound --airport=LEZL --runway=27 --altitude=328 --heading=270 --offset-distance=0 --offset-azimuth=0 --in-air --bpp=32 --fog-nicest --enable-clouds3d --enable-horizon-effect --enable-enhanced-lighting --season=summer --timeofday=noon --enable-distance-attenuation --enable-specular-highlight --shading-smooth --texture-filtering=16 --prop:/sim/rendering/multi-sample-buffers=true --prop:/sim/rendering/multi-samples=4
