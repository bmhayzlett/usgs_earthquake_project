Welcome to my interactive earthquake data command line app.

In order to run the command line app, you will need to have ruby and python
installed on your computer preferably versions 2.3.0 and 2.7.12 respectively.
In addition, please run the following commands for the obspy libary that I
used:

`pip install mock flake8`
 
`pip install ipython\[all\]`

`pip install obspy`

Once complete, you can start the program by running:

`ruby user_interface.rb`

From here, you will have command line prompts telling you what to do!
Here is the website that has all of the Flinn-Engdahl region names:
http://earthquake.usgs.gov/learn/topics/flinn_engdahl_list.php

A typical search will return the most dangerous super-region (50 of them)
A search of a super-region with the --region flag will return the
most dangerous sub-region (757 total of them) in that region.

Note: commands must be typed exactly how they're shown!

Another Note: Based on my design, I used a library obspy that converts coordinates
to Flinn-Engdahl regions. This was integral to the design and choice of region.
Unfortunately, the library runs slowly, so it takes a couple seconds to calculate
the region for each earthquake. For that reason, I hard-coded in a limit to
the amount of data that it processes. Lines 36 and 58 have an array slice [0..30]
limiting the amount of data processed. You can remove it if you'd like, but
it will drastically increase the calculation time since there is so much data.
