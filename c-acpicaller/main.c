#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "callerutils.h"


int main (int argc, char *argv[]) {
    int verify = 0;
    int powermode = -1;
    int conservation = -1;
    int rapidcharge = -1;
    int quiet = 0;

    for(int i = 0; i < argc; i++) {
        if(!strcmp(argv[i],"--verify")) {
            verify = 1;
        }
        else if(!strcmp(argv[i], "--powermode")) {
            powermode = atoi(argv[i+1]);
        }
        else if(!strcmp(argv[i], "--battery"))
            conservation = atoi(argv[i+1]);

        else if (!strcmp(argv[i], "--rapidcharge"))
            rapidcharge = atoi(argv[i+1]);

        else if (!strcmp(argv[i], "--quiet"))
            quiet = 1;
    }

	printf("hej");

    if (powermode != -1)
        setPowermode(&powermode);

    if (conservation != -1)
        setBatteryConservation(&conservation);

    if (rapidcharge != -1)
        setRapidCharge(&rapidcharge);

    if (verify == 1)
        verifyModes(quiet);

	return 0;
}


