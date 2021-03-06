�-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description£º  HUAWEI Lan Switch Platform Device Management MIB
-- Reference:
-- Version: V2.2
-- History£º
--      V1.0 (1) Created by Hou Qiang, 2001.06.29
--           (2) Revised by Qi Zhenglin, 2001.12.30 ----r003 revision
--      V1.1 2004/7/20 import hwLswFrameIndex, hwLswSlotIndex
--           FROM A3COM-HUAWEI-DEVICE-MIB
--      V1.2 2004/09/10
--           1) change all MIB objects' STATUS from mandatory to current.
--           2) remove statement before hwLswdevMMib
--           3) adjust file format, change tab to space and some small
--              changes.
--           4) change STATUS of hwCfmWriteFlash and hwCfmEraseFlash
--              from write-only to read-write.
--      V2.0 2004-10-12 updated by gaolong
--           Import Gauge32, OBJECT-IDENTITY.
--           Relocate hwLswdevMMib MODULE-IDENTITY clause.
--           Change ACCESS to MAX-ACCESS
--           Change Gauge to Gauge32.
--           Change value of hwDevMFanStatus and hwDevMPowerStatus from underscores to hyphens.
--      V2.1  2005-01-12
--           Change the description of hwFlhTotalSize and hwFlhTotalFree by sunqiang
--      V2.2  2005-06-10 updated by Chen Xi
--           Modify the SYNTAX and DESCRIPTION of hwLinkUpDownTrapEnable
--           and adjust file format.
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
         "" "" "200106290000Z" ""               "Description."                " Fan status description table "                       &" Fan status description table entry "                       " Fan number "                       M" Fan status: active (1), deactive (2) not installed (3) and unsupported (4)"                       #" Power status description table  "                       *" Power status description table entry   "                       "Power number "                       O" Power status: active (1), deactive (2) not installed (3) and unsupported    "                       "" environment description table  "                       )" environment description table entry   "                       "Environment type "                       " Environment status"                       " Environment value"                       "Environment upper limit "                       " Environment Lower limit"                      T"Enable/Disable linkUp/linkDown traps of the device, determining whether
         to enable linkUp/linkDown traps with that of the interface.
         When the value is enableBoth(1), the linkUp/linkDown traps are both
         enabled.
         When the value is disableBoth(2), the linkUp/linkDown traps are both
         disabled.
         When the value is enableLinkUpTrapOnly(3), the linkUp traps is enabled
         and the linkDown traps is disabled.
         When the value is enableLinkDownTrapOnly(4), the linkUp traps is
         disabled and the linkDown traps is enabled. "                       '" Enable/Disable the address learning."                       �" Write the current effective configuration into the Flash memory.
                      This object does not support read operation."                       v" Delete the configuration from the Flash memory.
                      This object does not support read operation."                                               "A table of CPU statistics."                       "The Entries of hwCpuTable."                      o"Index of hwCpuTable. This integer is a  uniq number to
             identify the CPU(s). We recommand two Number Plans in this
             paper, Logical Number or Phisical Number. For the first
             case, hwCpuIndex is a integer, range from 1 to the Maximum
             number, for example 1,2,3,4,5 ..., where 1 represents
             the first CPU, 2 represents the second CPU, etc.  For the
             second case hwCpuIndex represents physical card position
             (Shelf Number, Frame Number, Slot Number, SubSlotNumber)
             where the CPU residing, for example, 0x01020304 represent
             the CPU on the 4th subslot of the 3th slot of the 2nd frame
             of the 1st Shelf. In the condition of multiple CPU system
             where CPU group coordinately  process on one board, we see
             the CPUs as one CPU"                       ?"The overall CPU busy percentage in the last 5 second period. "                       ?"The overall CPU cost percentage in the last 1 minute period. "                       @"The overall CPU cost percentage in the last 5 minutes period. "                           +"This table contains memory information.  "                       "The Entries of hwMemTable"                      "Index of hwMemTable. This integer is a  uniq number to
             identify the memory module. We recommand two Number Plans
             in this paper, Logical Number or Phisical Number. For the
             first case, hwMemModuleIndex is a integer, range from 1 to
             the Maximum number, for example 1,2,3,4,5 ..., where 1
             represents the first memory module, 2 represents the second
             memory module, etc.  For the second case hwMemModuleIndex
             represents physical card position (Shelf Number, Frame Number,
             Slot Number, SubSlotNumber) where the memory module residing,
             for example, 0x01020304 represent the memory module on the 4th
             subslot of the 3th slot of the 2nd frame of the 1st Shelf. "                       \"Indicates the total size of the memory module
            which is on the managed object."                       '"Indicates the free size of the memory"                       1"Indicates the used size of the raw slice memory"                       ["The largest free size of the contiguous area in the memory.
           The unit is byte."                       )"The times of memory allocation failures"                       @"The times of memory allocation failures due to no free memory."                       +"This table contains buffer information.  "                       "The Entries of hwBufferTable"                      !"Index of hwBufferTable. This integer is a  uniq number to
             identify the buffer module. We recommand two Number Plans
             in this paper, Logical Number or Phisical Number. For the
             first case, hwBufferModuleIndex is a integer, range from 1 to
             the Maximum number, for example 1,2,3,4,5 ..., where 1
             represents the first buffer module, 2 represents the second
             buffer module, etc.  For the second case hwBufferModuleIndex
             represents physical card position (Shelf Number, Frame Number,
             Slot Number, SubSlotNumber) where the buffer module residing,
             for example, 0x01020304 represent the buffer module on the 4th
             subslot of the 3th slot of the 2nd frame of the 1st Shelf. "                       ""The size of buffer,unit is byte."                       '"The total number of buffer currently."                       &"The number of used buffer currently."                           ,"The flash memory's total size, in kilobyte"                       6"The free space in internal flash memory, in kilobyte"                       �"The time since system up of the lastest deleting operation of
            flash memory.The value of Zero indicates there is no erasing operation
            since system up"                       c"The state indicates the result of current or
            lastest flash memory deleting operation"                       �"Busy indicates the flash memory is unavailable due to others may be using it,
            and free indicates the flash memory is available now"                      