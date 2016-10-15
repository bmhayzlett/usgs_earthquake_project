from obspy.geodetics import FlinnEngdahl
import argparse
import sys
import ast
import pdb

def get_region(lat, long):
    flinn_engdahl = FlinnEngdahl()
    return flinn_engdahl.get_region(long,lat)

lat = float(sys.argv[1])
long = float(sys.argv[2])
print get_region(lat,long)
