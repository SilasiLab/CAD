                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:2440657
100mm extrusion calibration for FlashForge Creator Pro by DrLex is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

These are ready-to-use X3G files for the FlashForge Creator Pro and similar printers, to perform the [calibration procedure as explained on the MatterHackers site](http://www.matterhackers.com/articles/how-to-calibrate-your-extruder). The files will instruct the printer to extrude exactly 100mm of filament. Ideally, this will result in exactly 100 mm of filament going into the extruder, but in practice this will usually be less, sometimes a bit more. To compensate for this during actual printing, an extrusion multiplier must be applied.
 

**How to use**

First, load the filament of which you want to measure the extrusion multiplier.
Instead of loading it from a spool through the guide tubes as usual, it is recommended cut off a strand of filament. Insert this directly into the extruder without the guide tube, such that the strand simply sticks out from the top of the extruder carriage (as shown in the photo). The length sticking out should be at least 100mm, preferably a bit more. If you want to repeat the test a few times (which is a good idea), you'll obviously need a longer strand.

Doing the test like this, has several advantages:
1. It is much easier to measure and mark the length of filament sticking out from the extruder. You can simply use the distance to the end of the strand as your initial length. Still, if you want to make an explicit mark, either use a marker, a piece of tape, or a clip (I find muzz64's [‘Germz’](https://www.thingiverse.com/thing:2002744) quite handy for this purpose).
2. The result will not be influenced by the filament bending and twisting inside the guide tubes, which could introduce a large measurement error.
3. You do not risk unwrapping and tangling the filament spool during the tests.

Next, measure and mark a known distance on the filament, starting from a reference point. This distance should be at least 100mm, preferably with some extra (e.g. 110mm). If you follow the above recommendations and use a strand of filament, your reference point should be the top of the extruder carriage, and your mark could simply be the end of the strand.

Next, pick the x3g file for the desired extruder and temperature, and ‘print’ it. Temperature is not crucial, you should pick a temperature that is high enough for the filament to flow but not too high to bake it.
When it has finished, measure the remaining distance between the reference point and your mark (or end of the strand). You can calculate the extrusion multiplier from the difference between the measured and expected distance (100 mm).

For instance, if you marked 110 mm and the final distance is 17 mm, you extruded 17 -
 (110 - 100) = 7 mm less than expected, or only 93 mm instead of 100. This means your extrusion multiplier should be 100/93 = 1.0753.
Other example: you marked 120 mm and the final distance is 9 mm. You extruded (120 - 100) - 9 = 11 mm more than expected. This means your extrusion multiplier should be 100/111 = 0.9009.

The first example is more likely than the latter, because you will usually get under-extrusion due to the extruder gear teeth biting into the filament. See the bottom of this page for an explanation.
 

**Remarks**

You should repeat the test at least twice for the same filament to check consistency of the result. If the two tests deviate, do a third one to get a better estimate.
The test must be repeated for every different filament, although you can probably safely assume that different colors of the same material from the same brand will yield the same results.

The extrusion rate during the test should be slow enough for most filaments. If you find it extrudes too fast for some really flexible filament or so, either modify the source files and convert them to X3G files using GPX, or ask me.

Mind that it is not essential to get the extrusion multiplier correct to umpteen digits after the decimal point. In fact, from this test I found out that I had been under-extruding for a long time, yet my prints were accurate and reliable. In the end, use the multiplier that provides the best results in practice, not in theory.

This method will only compensate for the difference in expected versus actual extruded length. It does not compensate for incorrect filament diameter, and the extrusion multiplier is not meant for that in the first place. You should always measure the exact diameter of your filament and configure it in your slicing software.

# Print Settings

Printer Brand: FlashForge
Printer: Creator Pro

Notes: 
Leave the build platform at the bottom of the printer, its only purpose in this test will be to catch the spiral of extruded filament.

Print the file from an SD card. Trying to print from USB might yield unexpected behavior.

The file will preheat the extruder, then beep and show a prompt to press the ‘OK’ button. After this, it will start extruding what the printer believes to be 100 mm of filament. The carriage will move in a square pattern while doing this, this ensures that the test is more or less realistic (my initial attempts to just extrude from a stationary position proved unreliable). Don't mind the weird zig-zag dance at the end, this is to ensure the file has enough commands to avoid confusing messages on the LCD display. At the end, the display should show the extrusion counter at exactly 0.100 m, because that is what the printer believes to have extruded (even though in reality, it almost never is).

# Why is the extrusion multiplier needed?

Most extruder designs rely on a geared wheel that pushes against another spring-loaded wheel. The teeth of the gear provide a good grip on the filament clamped in between the two wheels. However, the softer the material, the deeper the teeth will dig into the filament, and the smaller the effective radius of the driving gear becomes. To extrude a certain length of filament, a gear with a smaller effective radius will need to make more turns than one with a larger radius.

Your printer's firmware is configured with some reasonable default conversion factor between extrusion coordinates in print commands, and the number of motor steps required to pull the instructed length of filament through the extruder. This default was chosen for some typical filament, and will not be correct for a softer or harder filament. This is where the extrusion multiplier is needed.

Some firmwares allow to send a command with the multiplier, which is then automatically applied to all coordinates. Sailfish (as used by the FFCP) however, does not allow this, therefore the extrusion coordinates themselves must already be multiplied before sending them to the printer.