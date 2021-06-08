#include "calleruilts.h"

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

void verifyModes()
{
    getPowerMode();
    getRapidCharge();
    getBatteryConservation();
}

void getPowerMode
()
{
    writeToFile(verifyPowermode);
    char *buffer;
    buffer = (char *) malloc(MAXSIZE);
    readFromFile(buffer);
    char *res;

    if (!strcmp(buffer,"0x1"))
        res = "extreme";
    else if (!strcmp(buffer, "0x2"))
        res = "saving";
    else
        res = "intelligent";

    free(buffer);
    printf("powermode: %s\n", res);
}

void getRapidCharge
()
{
    writeToFile(verifyRapidCharge);
    char *buffer;
    buffer = (char *) malloc(MAXSIZE);
    readFromFile(buffer);

    char *res;
    if (!strcmp(buffer, "0x0"))
        res = "disabled";
    else
        res = "enabled";

    free(buffer);
    printf("rapidcharge: %s\n", res);
}


void getBatteryConservation
()
{
    char *buffer;
    writeToFile(actualVerifyBat);
    buffer = (char *) malloc(MAXSIZE);
    readFromFile(buffer);

    char *res;

    if (!strcmp(buffer,"0x0"))
        res = "disabled";
    else
        res = "enabled";

    free(buffer);
    printf("battery conservation: %s", res);
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
