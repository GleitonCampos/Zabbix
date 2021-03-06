�-- ------------------------------------------------------------------
--
-- Description: HuaWei Lan Switch Dual Main Control MIB
--
-- Version: V1.2
-- History:
-- Revise History: 1) 2003-03-27 Fuzhenyu created
-- V1.1 2004-10-12 updated by gaolong
--      Import NOTIFICATION-TYPE.
--      MAX-ACCESS clause value from write-only to read-write.
--      Substitute hwsMixTrapMib MODULE-IDENTITY with hwsMixTrapMib OBJECT IDENTIFIER.
-- V1.2 2005-11-14
--      updated by Chen Xi
--      Modify description of all objects except hwLswXSlotTable and hwLswXSlotEntry.
--      updated by Yu Lan
--      Add process(3) value for hwLswMainCardBoardStatus.
--      Add hwLswCrossBarStatus.
-- ------------------------------------------------------------------
--
-- ------------------------------------------------------------------
--
-- Variable imported
--
-- ------------------------------------------------------------------
         "" "" "200106290000Z" ""               b"This object indicates the date of the most recent change
    to the mpu(Main Processing Unit). "                       L"This object indicates the time of the most recent change
    to the mpu. "                       \"This object indicates the total times of the mpu switched
    since the system start up. "                       i"Setting this object will immediately switch the standby mpu
    to master mpu. Read is not supported. "                       "The source main table."                       $"An entry in the source main table."                       �"The value describes whether the board is master, standby or process.
       master and standby are the possible states for the mpu, while process
       indicates the state of lpu(Line Processing Unit)"                       �"The value describes whether the crossbar is master or standby. It is
       master when it's in the master mpu board, standby when in the standby mpu.
       But both crossbars in mpus are master when the device in load-balance mode."                           o"An hwSlaveSwitchOver trap signifies that the action of
      standby mpu switching to master has completed. "                                