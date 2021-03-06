�-- =========================================================================
-- Copyright (C) 2009 by H3C Technologies.  All rights reserved.
--
-- Description: This file describes the H3C mib implementation of router system,
--             include: memory, configuration, flash, loghost and so on.
-- Reference: enterprise MIB
-- Version: V2.4
-- History:
--  V1.0 9th Dec 2003
--      created for 3Com oem router
--  V1.1 24th Feb 2004
--      delete common nodes and moved them to a3comcommon.mib
--      change logfiltertable to logfilterTable
--      change loghosttable to loghostTable
--      delete MODULE-IDENTITY import declaration
--      file name change to a3com-huawei-mlsr.mib
--      V1.2 14th May 2004
--              add hwPowerStatus object
--      v1.21 2004-8-23 add hwSecondPowerStatus to A3COM-HUAWEI-MLSR-SYSTEM-MIB
--      V1.3 2004-09-18
--           add values for moduleType from 111 to 117 by taotao
--      v1.4 2004-11-15 updated by lizhiyong
--           modify loghostEntry index clause
--           add "sic1Eth" type in moduleType
--      V1.5 2005-01-11
--           Updated by gaolong and weixinzhe for description update
--      V1.6 2004-12-29 updated by lizhiyong
--           add atm1ADSLI and atm2ADSLI type in moduleType.
--      V1.7 2005-04-07
--           add values for moduleType from 119 to 140 by taotao
--           change name of 118 under moduleType to sic-1Eth by taotao
--      V1.8 2005-08-16
--           add values for moduleType from 151 to 161 by taotao
--      V1.9 2005-09-13
--           add values for moduleType from 162 to 163 by taotao
--      V2.0 2005-11-04
--           add values for moduleType 149 by xuejiayong
--           add values for moduleType from 164 to 165 by xuejiayong
--      V2.1 2005-12-15
--           add values for moduleType from 220 to 223 by taotao
--      V2.2 2006-02-07
--           add values for moduleType from 224 to 228 by taotao
--      V2.3 2006-04-26
--           add values for moduleType from 229 to 233 by taotao
--      V2.4 2009-02-17
--           add values for moduleType 277, 278 and 281 by zhaocunli
-- =========================================================================
                                                                                 )"The version of the software of system ."                               �"The label of log status that is open or close.
                enable(1) indicates to open;disable(2) indicates
                to close."                       *"A list of entries of host recieving log."                       *"Address and level of host receiving log "                       '"The index of host that receives logs."                       )"The address of host that receives logs."                       &"The port of host that receives logs."                       B"The severity indicates the level of log that is sended to host ."                       9"The log in which language is incidated by loglanguage ."                       N"The log that send to host is stored in the facility indicated logfacility  ."                       c"The variable is the command who perform that netmanager get the saving log information at router."                       "The status of the entry."                       )"A list of entries of filter filter log."                       )"Address and level of filter filter log "                       '"The index of host that receives logs."                       "Filter name."                       "The status of the entry."                               E"Possible values of indices are
                1..moduleMaxmodules"                       �"Possible values of indices are
                1..stackMaxChassis, 1..chassisMaxModules
                and 1..moduleMaxmodules"                       "Module number in the module."                       "Slot number in the module."                       ,"The product identification of the  module."                       0"The portIndex of the first port on the module."                       %"The number of ports on the  module."                       g"Hardware version number for this module.
                First version is 0, second is 1, and so on."                       *"Software version number for this module."                       *"Hardware version number for this module."                           !"Total size of the Flash device."                       "Free space within a Flash."                       �"
                The last time of the flash device ereased.
                The value of the object is the time of sysUpTime.
                "                       "The flash ereasing status."                       "The flash's current status."                           `"Unique ID string. Defaults to module ID
                number if available, otherwise empty."                       -"System description and version information."                       "The version of systen ROM."                       $"The software version of system ROM"                       0"The total size of system RAM.The unit is Byte."                       v"
                The total size of system non-volatile memory.
                The unit is Byte.
                "                       <"The usage of system non-volatile memory. The unit is Byte."                       6"This variable indicates the system register's value."                       G"This variable indicates the system register's value when next reboot."                       �"
                If yes, indicates that the device can be configed through tftp.
                If no indicates that the device cannt be configed through tftp.
                "                       �"
                The hwMemoryFree mib object is obsolete as of
                the variable hwMemoryFree in hwMemoryTable
                "                       F"The system CPU average busy percentage in the last 5 seconds period."                       F"The system CPU average busy percentage in the last 5 minutes period."                       8"The current time (in timetick: hundredths of a second)"                       �"The current temperature of system.If the temperature is normal,ok(0) will return;
                If too cold,overcold(1) will return;If too hot,overhot(2) will return."                       �"The current status of buzzer. silence(1)
                indicates the status is silence;tweet(2) indicates
                the status is tweet."                       �"The current status of system fan: running(0) indicates
                the fan is running;stopping(1) indicates the fan is stopping;
                nofan(2) indicates no fan in the device. "                       ="The current status of system power: 0:ok;1:fail;2:nopower. "                       D"The current status of second system power: 0:ok;1:fail;2:nopower. "                           /"The use size of the memory. The unit is Byte."                       /"The free size of the memory. The unit is Byte"                       �"
                The largest free size of the contiguous area in memory.
                The unit is byte.
                "                       '"Contains the size of 32 byte buffers."                       /"Contains the total number of 32 byte buffers."                       ."Contains the number of free 32 byte buffers."                       ."Contains the number of used 32 byte buffers."                       ."Contains the number of Drop 32 byte buffers."                       5"Contains the number of Free Error2 32 byte buffers."                       5"Contains the number of Free Error3 32 byte buffers."                       1"Contains the number of Collect 32 byte buffers."                       '"Contains the size of 64 byte buffers."                       /"Contains the total number of 64 byte buffers."                       ."Contains the number of free 64 byte buffers."                       ."Contains the number of used 64 byte buffers."                       ."Contains the number of Drop 64 byte buffers."                       5"Contains the number of Free Error2 64 byte buffers."                       5"Contains the number of Free Error3 64 byte buffers."                       1"Contains the number of Collect 64 byte buffers."                       ("Contains the size of 128 byte buffers."                       0"Contains the total number of 128 byte buffers."                       /"Contains the number of free 128 byte buffers."                       /"Contains the number of used 128 byte buffers."                       /"Contains the number of Drop 128 byte buffers."                       6"Contains the number of Free Error2 128 byte buffers."                       6"Contains the number of Free Error3 128 byte buffers."                       2"Contains the number of Collect 128 byte buffers."                       ("Contains the size of 256 byte buffers."                       0"Contains the total number of 256 byte buffers."                       /"Contains the number of free 256 byte buffers."                       /"Contains the number of used 256 byte buffers."                       /"Contains the number of Drop 256 byte buffers."                       6"Contains the number of Free Error2 256 byte buffers."                       6"Contains the number of Free Error3 256 byte buffers."                       2"Contains the number of Collect 256 byte buffers."                       ("Contains the size of 512 byte buffers."                       0"Contains the total number of 512 byte buffers."                       /"Contains the number of free 512 byte buffers."                       /"Contains the number of used 512 byte buffers."                       /"Contains the number of Drop 512 byte buffers."                       6"Contains the number of Free Error2 512 byte buffers."                       6"Contains the number of Free Error3 512 byte buffers."                       2"Contains the number of Collect 512 byte buffers."                       )"Contains the size of 1024 byte buffers."                       1"Contains the total number of 1024 byte buffers."                       0"Contains the number of free 1024 byte buffers."                       0"Contains the number of used 1024 byte buffers."                       0"Contains the number of Drop 1024 byte buffers."                       7"Contains the number of Free Error2 1024 byte buffers."                       7"Contains the number of Free Error3 1024 byte buffers."                       3"Contains the number of Collect 1024 byte buffers."                       )"Contains the size of 2048 byte buffers."                       1"Contains the total number of 2048 byte buffers."                       0"Contains the number of free 2048 byte buffers."                       0"Contains the number of used 2048 byte buffers."                       0"Contains the number of Drop 2048 byte buffers."                       7"Contains the number of Free Error2 2048 byte buffers."                       7"Contains the number of Free Error3 2048 byte buffers."                       3"Contains the number of Collect 2048 byte buffers."                       )"Contains the size of 4096 byte buffers."                       1"Contains the total number of 4096 byte buffers."                       0"Contains the number of free 4096 byte buffers."                       0"Contains the number of used 4096 byte buffers."                       0"Contains the number of Drop 4096 byte buffers."                       7"Contains the number of Free Error2 4096 byte buffers."                       7"Contains the number of Free Error3 4096 byte buffers."                       3"Contains the number of Collect 4096 byte buffers."                       )"Contains the size of 8192 byte buffers."                       1"Contains the total number of 8192 byte buffers."                       0"Contains the number of free 8192 byte buffers."                       0"Contains the number of used 8192 byte buffers."                       0"Contains the number of Drop 8192 byte buffers."                       7"Contains the number of Free Error2 8192 byte buffers."                       7"Contains the number of Free Error3 8192 byte buffers."                       3"Contains the number of Collect 8192 byte buffers."                       ("Contains the size of 45K byte buffers."                       0"Contains the total number of 45K byte buffers."                       /"Contains the number of free 45K byte buffers."                       /"Contains the number of used 45K byte buffers."                       /"Contains the number of Drop 45K byte buffers."                       6"Contains the number of Free Error2 45K byte buffers."                       6"Contains the number of Free Error3 45K byte buffers."                       2"Contains the number of Collect 45K byte buffers."                       )"Contains the size of 256K byte buffers."                       1"Contains the total number of 256K byte buffers."                       0"Contains the number of free 256K byte buffers."                       0"Contains the number of used 256K byte buffers."                       0"Contains the number of Drop 256K byte buffers."                       7"Contains the number of Free Error2 256K byte buffers."                       7"Contains the number of Free Error3 256K byte buffers."                       3"Contains the number of Collect 256K byte buffers."                       *"The times of memory allocation failures."                       @"The times of memory allocation failures due to no free memory."                          "
                This object indicates the SysUpTime at which the running cofiguration was last changed.
                When the running configuration is changed but not saved, the
                value of hwRunCfgChangedTime is greater than hwRunCfgSavedTime.
                "                      "
                This object indicates the SysUpTime at which the running cofiguration was last saved.
                When the running configuration is changed but not saved, the
                value of hwRunCfgChangedTime is greater than hwRunCfgSavedTime.
                "                       �"
                The time of SysUpTime at which the startup configuration
                was last written.
                "                       ""Network configuration file name."                       "Host configuration file name."                                   %"The router's unique identification."                       �"
                Give the reason of the system's reboot.
                If the system has been reboot, the value of
                which is null.
                "                       �"
                An  name for this system. By convention, this is the node's
                fully-qualified domain name.
                "                       &"The haredware version of the router."                              