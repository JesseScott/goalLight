goalLight
=========

Version 0.2

A project by Jesse Scott | www.jesses.co.tt

An open-source software/hardware version of 'that goal light project' by 'that beer company'

Theirs costs $150 and requires a smartphone.
Mine costs about $50 (for parts only)

Steps:
 1) Download the code as a ZIP (or Fork/Clone, if you know what you're doing)
 2) Download and install Processing (the project runs from source at the moment, though executable binaries will be added soon)
 3) Connect your Arduino and upload the Standard Firmata sketch to it
 4) Follow the routing procedure in /Electronics/Parts_Routing.txt (Wiring schematic coming soon)
 5) Follow the 'Code' procedure below
 
Code:
 a) Open the goalLight.pde file under 'goalLight/Processing/goalLight/'
 b) Change this line 
	String favouriteTeam = "Vancouver";
    to your favourite team (please no Leaf Fans ! ;-) )
 d) Press the 'Play' button on Processing
 … watch as it … 
 e) pulls the data from the NHL website
 f) gets the current score of your favourite team
 g) lights the light if the score is a bigger number than the last time!
 

This work is licensed under the Creative Commons Attribution-NonCommercial-Repurcusssions 3.0 Unported License. 

To view a copy of this license, visit: 
http://www.graffitiresearchlab.fr/?portfolio=attribution-noncommercial-repercussions-3-0-unported-cc-by-nc-3-0



The code is written in Processing (www.processing.org) 
Currently using version 1.5.1, because of issue with Serial Firmata and V2.0b
https://github.com/firmata/processing/issues/1

