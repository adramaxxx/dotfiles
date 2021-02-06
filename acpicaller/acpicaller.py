#!/usr/bin/python
import sys
import os
import subprocess
import acpivalues
import argparse

def SetPowerMode(powermode):
    if(powermode == "intelligent"):
        subprocess.getoutput("echo " + acpivalues.intelligent_cooling + " > /proc/acpi/call")
    elif(powermode == "saving"):
        subprocess.getoutput("echo " + acpivalues.battery_saving + " > /proc/acpi/call")
    elif(powermode == "extreme"):
        subprocess.getoutput("echo " + acpivalues.extreme_performance + " > /proc/acpi/call")

def SetRapidCharge(rapidcharge):
    if(rapidcharge == "1"):
        subprocess.getoutput("echo " + acpivalues.rapid_charge_on + " > /proc/acpi/call")
    elif(rapidcharge == "0"):
        subprocess.getoutput("echo " + acpivalues.rapid_charge_off + " > /proc/acpi/call")

def SetBatteryConservation(batteryConservation):
    if(batteryConservation == "1"):
        subprocess.getoutput("echo " + acpivalues.battery_conservation_on + " > /proc/acpi/call")
    elif(batteryConservation == "0"):
        subprocess.getoutput("echo " + acpivalues.battery_conservation_off + " > /proc/acpi/call")

def VerifyModes():
    powermode = subprocess.getoutput(r"echo '\_SB.PCI0.LPC0.EC0.SPMO' > /proc/acpi/call; cat /proc/acpi/call")
    print("Powermode: " + powermode)
    rapidcharge = subprocess.getoutput(r"echo '\_SB.PCI0.LPC0.EC0.QCHO' > /proc/acpi/call; cat /proc/acpi/call")
    print("Rapid charge: " + rapidcharge)
    batteryconservation = subprocess.getoutput("echo '\_SB.PCI0.LPC0.EC0.BTSM' > /proc/acpi/call; cat /proc/acpi/call")
    print("Battery conservation: " + batteryconservation)

if __name__ == "__main__":
    print("imp4l3r python script for acpicalling on ideapad 5")
    print("Switched to python because I got very very tired of bash")
    my_parser = argparse.ArgumentParser()
    my_parser.add_argument('--powermode', help='Three different modes, intelligent cooling, extreme performance or battery saving, given as: <intelligent, extreme, saving>')
    my_parser.add_argument('--batteryconservation', help="Requires true or false bit", default="")
    my_parser.add_argument('--rapidcharge', help="Requires true or false bit", default="")

    args = my_parser.parse_args()
    SetPowerMode(args.powermode)
    SetBatteryConservation(args.batteryconservation)
    SetRapidCharge(args.rapidcharge)
    VerifyModes()
