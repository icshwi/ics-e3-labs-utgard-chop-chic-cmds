require labs-vip_chop-chic-01,plcfactory
require iocStats,ae5d083

iocshLoad("/epics/base-7.0.2/require/3.0.5/siteMods/labs-vip_chop-chic-01/plcfactory/labs-vip_chop-chic-01.iocsh","IPADDR=172.30.242.16,RECVTIMEOUT=3000,SAVEFILE_DIR=/root/vip-chop-mini/LabS-VIP_Chop-IOC-mini")

epicsEnvSet("IOCNAME","LabS-VIP:Chop-CHIC-01")
iocshLoad("$(iocStats_DIR)/iocStats.iocsh")

iocInit()
