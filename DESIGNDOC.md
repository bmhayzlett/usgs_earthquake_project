Describe how you would improve upon your current design.

First of all, the functionality is there, but I feel like I could improve
upon the dependencies that exist between classes. In the usgs_data file,
I wrote two almost identical methods (most_dangerous_sub_region and
most_dangerous_super_region), and I would refactor those. Additionally,
I didn't implement the functionality allowing for data older than 30 days.
In order to remedy this, I would probably set up a relational database to
keep track of regions, sub_regions, and earthquakes. Finally, the speed
of the app is way too slow, and it's bottlenecked by the obspry library, so
I would try to find a way to either write that functionality myself or remove
it from the library and itegrate it better.

Why did you choose the region definition you did? What other definitions did you consider and what are the pros/cons of each approach?

As I began looking at the GeoJSON data, I found that the place attribute
referenced either a nearby city name or a Flinn-Engdahl region. After reading about
the Flinn-Engdahl regions, I decided that the USGS's own regional system
would probably be most appropriate for earthquake data! Unfortunately, and as
I described in the README, the library for converting coordinates to regions
is painfully slow, so that is the negative of using this system. I also considered
countries, but borders are somewhat arbitrary relative to geography, so it seemed
like the data would be muddled.  Countries would have given me a faster app without
the obspy library though. I also considered generating areas on the fly as data came in,
perhaps creating circles around epicenters with bigger circles for bigger earthquakes.
I figured that with that approach though, in order to discover where the highest
danger areas are, I would have to run an O(n^2) algorithm to compare each
datapoint to every other datapoint and develop areas. Finally, I thought
about the what3words geocoding system (https://en.wikipedia.org/wiki/What3words).
This system divides the globe into 3x3 meter squares and uses 3 words to describe
that location. Similar to generating on the fly though, since the areas are so
small, I would have to gather data from surrounding areas as well.


If you wanted to expose this tool as a web service, what approach would you take? What questions would you ask about the product requirements and how would the answers to those questions change your approach?

I would want to setup a full-stack app to provide this web service.
I could have a Rails backend with a relational database, and serve it up with
a React frontend. Additionally. I would provide a caching layer for the most commonly
accessed data.

Would this app need to gather data autonomously?
A worker could periodically ping USGS for more data, along with flushing out old data.

Would this app's data need to be available to the public?
The Rails backend would also provide a public API for public users to access and use the data.

Would this app need to have a frontend?
Rails could serve up a frontend that could include charting functionality. This
frontend could also regularly ping the API for updates.
