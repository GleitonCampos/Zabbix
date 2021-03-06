�-- =====================================================================
-- Copyright (C) 2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: Huawei Timerange MIB Definition
-- Reference: Huawei Enterprise MIB
-- Version: V1.3
-- History:
--   V1.0 Yang Hongjie,2003-04-11,Initial Version
--   v1.1 modify follow node define:
--        hwTrngPeriodicDayOfWeek,hwTrngCreateRowStatus
--        hwTimerangeAbsolueRowStatus,hwTimerangePeriodicRowStatus
--   V1.2 2004-10-12 updated by gaolong
--        Change DESCRIPTION syntax format of hwTRNG and hwTrngCreateTimerangeTable.
--        Change hwTrngPeriodicDayofWeek to hwTrngPeriodicDayOfWeek. This is
--        a word error.
--   V1.3 2005-2-5 updated by zhangjie
--        Correct word error for 'wednesday'.
--	  Adjust the file format
-- =====================================================================
                                                     k"The A3COM-HUAWEI-TRNG-MIB contains objects to
				Configure the system absolute and periodic time-range." �"R&D BeiJing, Huawei Technologies co.,Ltd.
				Huawei Bld.,NO.3 Xinxi Rd.,
				Shang-Di Information Industry Base,
				Hai-Dian District Beijing P.R. China
				Zip:100085
				Http://www.huawei.com
				E-mail:support@huawei.com" "200304110000Z" ;"200304110000Z, --The initial revision of this MIB module."        -- April 11, 2003 at 00:00 GMT
           "Creat TimeRange."                       0"Define the entry of hwTrngCreateTimerangeTable"                       "TimeRange's index"                       "TimeRange's name"                       "Valid or Invalid flag"                       X"The status of this conceptual row.Now only realize CreateAndGo and Destroy and Active."                       /"Creat absoluteness time item of the TimeRange"                       )"Define the entry of hwTrngAbsoluteTable"                       "TimeRange's index"                       "SubItem's index"                       N"Start point of the timerange.The format defined like 'YYYY-MM-DD,hh:mm:0.0'."                       L"End point of the timerange.The format defined like 'YYYY-MM-DD,hh:mm:0.0'."                       Y"The status of this conceptual row. Now only realize CreateAndGo and Destroy and Active."                       +"Creat periodic time item of the TimeRange"                       )"Define the index of hwTrngPeriodicTable"                       "TimeRange's index"                       "SubItem's index"                      F"The day of week. This is a bit-map of possible conditions.
				The various bit positions are:
				|0		|sunday	            	|
				|1		|monday             	|
				|2		|tuesday            	|
				|3		|wednesday          	|
				|4		|thursday           	|
				|5		|friday             	|
				|6		|saturday           	|
				"                       D"Start point of this timerange,The format defined like 'hh:mm:0,0'."                       B"End point of this timerange. The format definedlike 'hh:mm:0,0'."                       Y"The status of this conceptual row, Now only realize CreateAndGo and Destroy and Active."                               W"The compliance statement for entities which
				implement the Huawei Time-range MIB."   6"Now only realize CreateAndGo and Destroy and Active." 6"Now only realize CreateAndGo and Destroy and Active." 6"Now only realize CreateAndGo and Destroy and Active."                 E"A collection of objects providing mandatory time-range information."                            