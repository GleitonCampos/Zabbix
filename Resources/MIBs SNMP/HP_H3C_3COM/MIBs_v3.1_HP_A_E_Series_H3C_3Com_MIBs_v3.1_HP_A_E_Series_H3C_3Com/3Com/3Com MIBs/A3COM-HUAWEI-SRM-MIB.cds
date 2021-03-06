�-- =========================================================================
-- Copyright (C) 2001,2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:This file describes various common MIB objects implemented by both
-- Routers and Switches for use by 3Com Network Management applications.
-- Reference:Huawei enterprise MIB
-- Version: V2.2
-- History:
--      V1.0 26th Nov 2003
--      31st Mar 2003
--      add slot type by taotao, 2004-01-13
--      this mib is only for AR46 series router
--      V1.1 2004-07-17
--           modify file name from huawei-srm.mib to huawei-ar46-dev-adm.mib
--      V1.2 2004-08-19
--           add values for hw8060SlotType.
--           modify descriptions for some MIB objects.
--      V1.3 2004-09-18
--           add values for hw8060SlotType from 111 to 117 by taotao
--      V1.4 2004-11-23 lizhiyong
--           chang OBJECTS clause of hwSlotReset  and  hwSlotResetOK trap node
--           from hw8060SubslotIndex to hw8060SlotIndex
--      V1.5 2004-12-30 lizhiyong
--           change SYNTAX clause of dev8060MPowerStatus node and dev8060MFanStatus node
--           change MAX-ACCESS clause of dev8060MFanStatus from read-write to read-only
--      V1.6 2005-04-07
--           add values for hw8060SlotType from 118 to 140 by taotao
--      V1.7 2005-06-20 liuyingquan
--           modify MAX-ACCESS clause of hw8060SlotOperStatus, hw8060PortOperateStatus
--           and hw8060SysTime.
--      V1.8 2005-08-16
--           add values for hw8060SlotType from 151 to 161 by taotao
--      V1.9 2005-09-13
--           add values for hw8060SlotType from 162 to 163 by taotao
--      V2.0 2005-12-15
--           add values for hw8060SlotType from 220 to 223 by taotao
--      V2.1 2006-02-07
--           add values for hw8060SlotType from 224 to 228 by taotao
--      V2.2 2006-04-26
--           add values for hw8060SlotType from 229 to 233 by taotao
-- =========================================================================
         p"This MIB is designed and realized by ChenWenjun for 8060 on March 27, 2003. Modified by Liukai on Oct 22, 2003" "liuaki 03198/huawei@huawei."        -- March 27, 2003 at 16:43 GMT
           "Frame table."                       "Frame table entry."                       0"This variable indicates the index of the frame"                       /"This variable indicates the type of the frame"                       6"This variable indicates the description of the frame"                       @"This variable indicates the total number of slots in the frame"                       @"This variable indicates the administration status of the frame"                       "Slot table."                       "Slot table entry."                       7"This variable indicates the index of the current slot"                       6"This variable indicates the type of the current slot"                       |"This variable indicates the description of the current slot;
                Max length is 64,0 indicates no description."                       D"This variable indicates the ratio of CPU the current slot occupied"                       ="This variable indicates the PCB version of the current slot"                       B"This variable indicates the software version of the current slot"                       J"This variable indicates the total number of subslots in the current slot"                       G"This variable indicates the administration status of the current slot"                       C"This variable indicates the operatrion status of the current slot"                       "Subslot table."                       "Subslot table entry."                       x"This variable indicates the index of the current subslot.
                Max value of index is 100,0 indicates none."                       9"This variable indicates the type of the current subslot"                       J"This variable indicates the total number of ports in the current subslot"                       J"This variable indicates the administration status of the current subslot"                       "Port table."                       "Port table entry."                       7"This variable indicates the index of the current port"                       9"This variable indicates the type of the current subslot"                       @"This variable indicates the description of the current subslot"                       A"This variable indicates the speed in bps of the current subslot"                       J"This variable indicates the administration status of the current subslot"                       E"This variable indicates the operation status of the current subslot"                       "the info about powers"                       "the info about powers."                       �"This variable indicates the sequence number of the current power.
                Max number is 10,0 indicates nonsupport this node."                       �"This variable indicates the working status of the current power.
                ok(1)          the power state is normal.
                fail(2)        the power state is abnormal.
                "                       "the info about Fans"                       "the info about Fans."                       v"This variable indicates the sequence number of the current fan.
                Max value is 10,0 indicates no fan."                       �"This variable indicates the working status of the current fan.
                    ok(1)          the fan state is normal.
                    fail(2)        the fan state is abnormal.
                "                           1"This variable indicates the temperature of RPU."                       ="This variable indicates the maximum temperature set by user"                       ="This variable indicates the minimum temperature set by user"                       <"This variable indicates the system version ( big version )"                       )"This variable indicates the system time"                       " "                           D"The notification indicates that the temperature of RPU is too high"                 B"The notification indicates that The temperature of RPU is normal"                 K"The notification indicates that The temperature of NP exceeds the maximum"                 A"The notification indicates that The temperature of NP is normal"                 C"The notification indicates that The temperature of RPU is too low"                 B"The notification indicates that The temperature of NP is too low"                 M"The notification indicates that The temperature of VENT exceeds the maximum"                 C"The notification indicates that The temperature of VENT is normal"                 /"The notification indicates that the RPU reset"                 8"The notification indicates that RPU reset successfully"                 *"The notification indicates that NP reset"                 7"The notification indicates that NP reset successfully"                 ,"The notification indicates that Slot reset"                 9"The notification indicates that Slot reset successfully"                 4"The notification indicates that PCI alarm occurred"                 /"The notification indicates that PCI is normal"                 L"The notification indicates that RPU report wrong interrupts too frequently"                 K"The notification indicates that NP report wrong interrupts too frequently"                 M"The notification indicates that Slot report wrong interrupts too frequently"                 4"The notification indicates that Write FLASH failed"                 ."The notification indicates that Power failed"                 1"The notification indicates that Power is normal"                 ,"The notification indicates that Fan failed"                 /"The notification indicates that Fan is normal"                 ,"The notification indicates that FTP failed"                 -"The notification indicates that TFTP failed"                 /"The notification indicates that XMODEM failed"                 C"The notification indicates that NP configuration path is abnormal"                 P"The notification indicates that High speed card configuration path is abnormal"                 F"The notification indicates that Low speed card JTAG path is abnormal"                 G"The notification indicates that High speed card JTAG path is abnormal"                 :"The notification indicates that NP JTAG path is abnormal"                 I"The notification indicates that DMU path between NP and RPU is abnormal"                 K"The notification indicates that Low speed card healthy signal is abnormal"                 L"The notification indicates that High speed card healthy signal is abnormal"                 E"The notification indicates that Slot PCI_HEALTHY signal is abnormal"                 @"The notification indicates that Slot HEALTHY signal is invalid"                 D"The notification indicates that the temperature of VENT is too low"                            