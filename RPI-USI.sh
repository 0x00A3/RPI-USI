
#!/bin/sh
clear
BLUE=`tput setaf 6`
WHITE=`tput setaf 7`
RED=`tput setaf 4`
reset=`tput sgr0`
RPIIP=`hostname -I`
MEM=`cat /proc/meminfo`
PART=`cat /proc/partitions`
VERS=`cat /proc/version`
ADSI=`df -h`
FM=`free`
LUSBH=`lsusb`
MSBCAG=`vcgencmd get_mem arm && vcgencmd get_mem gpu`
echo -e " "
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                                    DESCRIPTION OF THE SCRIPT"
echo -e "${BLUE}"
echo -e "${BLUE}                                       This Script is showing you informations about your RPI"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                                     CREATOR OF THE SCRIPT"
echo -e "${BLUE}"
echo -e "${BLUE}                                                       [+] Birdlinux [+]                              "
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                                          IP OF RPI"
echo -e "${BLUE}"
echo -e "${BLUE}                                                        $RPIIP                              "
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                                     DETAILS ABOUT MEMORY"
echo -e "${BLUE}"
echo -e "${BLUE}$MEM"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                          SIZE AND NUMBER OF PARTITIONS ON YOUR SD OR HD"
echo -e "${BLUE}"
echo -e "${BLUE}$PART"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                                       VERSION OF THE RPI "
echo -e "${BLUE}"
echo -e "${BLUE}$VERS"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                            INFORMATION ABOUT THE AVAIBLE DISK SPACE "
echo -e "${BLUE}"
echo -e "${BLUE}$ADSI"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                               HOW MUCH FREE MEMORY YOU GOT LEFT "
echo -e "${BLUE}"
echo -e "${BLUE}$FM"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                              LISTS USB HARDWARE CONNECTED TO RPI "
echo -e "${BLUE}"
echo -e "${BLUE}$LUSBH"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e "${RED}                                              MEMORY SPLIT BETWEEN THE CPU AND GPU "
echo -e "${BLUE}"
echo -e "${BLUE}$MSBCAG"
echo -e "${WHITE}--------------------------------------------------------------------------------------------------------------------------------------"
echo -e " "

