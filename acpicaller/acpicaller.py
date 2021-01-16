#!/usr/bin/python
import sys
import os
import subprocess
import acpivalues
import argparse


if __name__ == "__main__":
    print("imp4l3r python script for acpicalling on ideapad 5")
    print("Switched to python because I got very very tired of bash")
    my_parser = argparse.ArgumentParser()
    my_parser.add_argument('--powermode', help='Three different modes, intelligent cooling, extreme performance or battery saving, given as: <intelligent, extreme, saving>')
    my_parser.add_argument('--batteryconservation', help="Requires true or false bit")
    my_parser.add_argument('--rapidcharge', help="Requires true or false bit")

    args = my_parser.parse_args()

    print(args)
