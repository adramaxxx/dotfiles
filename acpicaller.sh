#!/bin/bash

echo -e "acpi caller script for thinkpad 5 \n"

echo -e '\t 1 intelligent cooling mode \n'
echo -e '\t 2 extreme performance mode \n'
echo -e '\t 3 battery saving mode \n'
echo -e '\t 4 rapid charging mode on \n'
echo -e '\t 5 rapid charging mode off \n'

echo -n 'option : ' 
read OPTION

case $OPTION in 
    1) echo '\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x000FB001' > /proc/acpi/call
        echo '\_SB.PCI0.LPC0.EC0.SPMO' > /proc/acpi/call
        ;;
    2) echo '\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x0012B001' > /proc/acpi/call
        echo '\_SB.PCI0.LPC0.EC0.SPMO' > /proc/acpi/call
        ;;
    3) echo '\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x0013B001' > /proc/acpi/call
        echo '\_SB.PCI0.LPC0.EC0.SPMO' > /proc/acpi/call
        ;;
    4) echo '\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x07' > /proc/acpi/call
       echo '\_SB.PCI0.LPC0.EC0.QCHO' > /proc/acpi/call
        ;;
    5) echo '\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x08' > /proc/acpi/call
        echo '\_SB.PCI0.LPC0.EC0.QCHO' > /proc/acpi/call
        ;;
esac

cat /proc/acpi/call | cut -d '' -f1
