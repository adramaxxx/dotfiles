#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAXSIZE 64


static const char intelligent_cooling[] = "\\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x000FB001";
static const char exteme_pefomance[] = "\\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x0012B001";
static const char battey_saving[] = "\\_SB.PCI0.LPC0.EC0.VPC0.DYTC 0x0013B001";
static const char rapid_chage_on[] = "\\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x07";
static const char rapid_chage_off[] = "\\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x08";
static const char battey_consevation_on[] = "\\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x03";
static const char battey_consevation_off[] = "\\_SB.PCI0.LPC0.EC0.VPC0.SBMC 0x05";
static const char acpi_destination[] = "/proc/acpi/call";

static const char verifyPowermode[] = "\\_SB.PCI0.LPC0.EC0.SPMO";
static const char verifyRapidCharge[] = "\\_SB.PCI0.LPC0.EC0.QCHO";
static const char actualVerifyBat[] = "\\_SB.PCI0.LPC0.EC0.BTSM";


void verifyModes();
void getPowerMode();
void getRapidCharge();
void getBatteryConservation();
void setPowermode(int *choice);
void setBatteryConservation(int *choice);
void setRapidCharge(int *choice);
void writeToFile(const char* value);
void readFromFile(char *buffer);
