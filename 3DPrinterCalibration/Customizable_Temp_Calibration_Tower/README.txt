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


http://www.thingiverse.com/thing:915435
Customizable Temp Calibration Tower by eibwen is licensed under the Creative Commons - Attribution - Share Alike license.
http://creativecommons.org/licenses/by-sa/3.0/

# Summary

**Thanks to wstein's tip** Customizer should be working fully now!  

I really liked [peke's calibration tower design](http://www.thingiverse.com/thing:729703), but wanted to test with different temps than he had.  And was bored one day.  

I feel like this is a good test print, and its still quite light (4grams for 7 layers I believe).  Its also good for testing print speed.  

Photo is printed at Layer Height of 0.1mm, using purple Inland brand filament.  And the default label range is based on previous tests implying that higher than my normal print temp (208) might be better for it.  (Wouldn't say its worth the $5 savings over Hatchbox which is what I've used previously)  

https://github.com/Eibwen/OpenScad-Projects/tree/master/TemperatureCalibration  

---  

tour_de_chauffe_v3 has suggestions from @Rockbert, and stole an idea from @puckett_jw's Make

---

Future plans (TODO): I should add a platform that you can add other notes to it... like 'layer height 0.1' etc...

# Instructions

1. Customize this to the temps you want to test.  
 * Can also make it bigger so the labels are easier to read or whatever  
1. Setup your slicer to change temps at each 10mm (or manually modify the gcode)  
 * If using cura, remove the model first, then add each TweakAtZ step, THEN open the model (otherwise it runs all the plugin settings for every setting change)  
1. Print the gcode file  

Suggest printing using a brim if you ever have any sticking issues.