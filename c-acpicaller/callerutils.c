#include "callerutils.h"

void setPowermode(int *choice)
{
    if (*choice == 0) { 
        writeToFile(intelligent_cooling);
    }
    else if (*choice == 1)
        writeToFile(exteme_pefomance);
    else
        writeToFile(battey_saving);
}

void setRapidCharge(int *choice)
{
    if (*choice == 1)
        writeToFile(rapid_chage_on);
    else 
        writeToFile(rapid_chage_off);
}

void setBatteryConservation(int *choice)
{
    if (*choice == 1)
        writeToFile(battey_consevation_on);
    else 
        writeToFile(battey_consevation_off);

}

void verifyModes(int quiet)
{
    char *powerMode;
    char *battery;
    char *rapidCharge;

    powerMode = (char *) malloc(MAXSIZE);
    getPowerMode(powerMode);

    rapidCharge = (char *) malloc(MAXSIZE);
    getRapidCharge(rapidCharge);

    battery = (char *) malloc(MAXSIZE);
    getBatteryConservation(battery);

    if(quiet == 0) { 
        printf("powermode: %s\n", powerMode);
        printf("rapidcharge: %s\n", rapidCharge);
        printf("conservation: %s\n", battery);
    }
    else {
        printf("%s\n", powerMode);
        printf("%s\n", rapidCharge);
        printf("%s", battery);
    }

    free(rapidCharge);
    free(powerMode);
    free(battery);
}

void getPowerMode(char *res)
{
    writeToFile(verifyPowermode);
    char *buffer;
    buffer = (char *) malloc(MAXSIZE);
    readFromFile(buffer);

    if (!strcmp(buffer,"0x1"))
        strcpy(res, "extreme");
    else if (!strcmp(buffer, "0x2"))
        strcpy(res, "saving");
    else
        strcpy(res, "intelligent");

    free(buffer);
}

void getRapidCharge
(char *res)
{
    writeToFile(verifyRapidCharge);
    char *buffer;
    buffer = (char *) malloc(MAXSIZE);
    readFromFile(buffer);

    if (!strcmp(buffer, "0x0"))
        strcpy(res, "disabled");
    else
        strcpy(res,"enabled");

    free(buffer);
}


void getBatteryConservation
(char *res)
{
    char *buffer;
    writeToFile(actualVerifyBat);
    buffer = (char *) malloc(MAXSIZE);
    readFromFile(buffer);

    if (!strcmp(buffer,"0x0"))
        strcpy(res, "disabled");
    else
        strcpy(res, "enabled");

    free(buffer);
}


void writeToFile
(const char* value)
{
	FILE *file;
	file = fopen(acpi_destination, "w");
	fprintf(file, "%s", value);
	fclose(file);
}

void readFromFile
(char *buffer)
{
    char readbuf[MAXSIZE];
    FILE *file;
    file = fopen(acpi_destination, "r");
    fread(readbuf, sizeof(char), MAXSIZE, file);
    fclose(file);
    strcpy(buffer, readbuf);
}
