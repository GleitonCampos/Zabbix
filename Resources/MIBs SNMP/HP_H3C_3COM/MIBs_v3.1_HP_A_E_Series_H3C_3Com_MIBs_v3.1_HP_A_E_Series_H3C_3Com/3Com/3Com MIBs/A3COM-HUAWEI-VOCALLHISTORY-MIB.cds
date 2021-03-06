P-- ==========================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              voice call histroy.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2005-03-22 Initial version, created by Yang Youku
-- V1.1 2005.11.02  zhoujianming
--      change time unit from minute to second in DESCRIPTION clause of h3cVoCallHistoryMaxRetainTime
-- ==========================================================================
                                 >"This MIB is to provide the definition of voice call histroy." �"PLAT Team Huawei 3Com Technologies co.,Ltd.
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085" "200503150000Z" '"The initial version of this MIB file."                   <"This object indicates the maximum items of history record."                       c"This object indicates the maximum retain time of histroy record.
                Unit is second."                       :"The table contains the generic call history information."                       ,"The entry of h3cVoCallHistoryGenericTable."                       ."The index of the generic call history table."                       5"This object indicates the calling number of a call."                       4"This object indicates the called number of a call."                       2"This object indicates the encode type of a call."                       4"This object indicates the logic channel of a call."                       <"This object indicates the local IP address type of a call."                       7"This object indicates the local IP address of a call."                       7"This object indicates peer IP address type of a call."                       2"This object indicates peer IP address of a call."                       1"This object indicates the disconnection reason."                       l"This object indicates the duration of this call(include voice
                duration and fax duration)."                       ;"This object indicates the duration of voice in this call."                       9"This object indicates the duration of fax in this call."                       _"This object indicates the number of pages which fax received
                or transmitted."                       0"This object indicates the direction of a call."                       f"The table contains the VOIP(Voice over Internet Protocol)
                call history information."                       )"The entry of h3cVoCallHistoryVoIPTable."                       `"The index of the voice VOIP(Voice over Internet Protocol)
                call history table."                       o"This object indicates the time when the gateway receives the
                SETUP message from the IP side."                       q"This object indicates the time when the gateway receives the
                CONNECT message from the IP side."                       t"This object indicates the time when the gateway recieves the
                DISCONNECT message from the IP side."                       |"This object indicates the number of packets which
                VOIP(Voice over Internet Protocol) sends during a call."                       {"This object indicates the number of bytes which VOIP
                (Voice over Internet Protocol) sends during a call."                       �"This object indicates the number of packets which VOIP
                (Voice over Internet Protocol) receives during a call."                       ~"This object indicates the number of bytes which VOIP
                (Voice over Internet Protocol) receives during a call."                       k"The table contains the PSTN(Public Switched Telephone Network)
                call history information."                       )"The entry of h3cVoCallHistoryPSTNTable."                       e"The index of the voice PSTN(Public Switched Telephone Network)
                call history table."                       i"This object indicates PSTN(Public Switched Telephone Network)
                setup time in this call."                       k"This object indicates PSTN(Public Switched Telephone Network)
                connect time in this call."                       n"This object indicates PSTN(Public Switched Telephone Network)
                disconnect time in this call."                       k"The number of packets which PSTN(Public Switched Telephone
                Network) sends during a call."                       j" The number of bytes which PSTN(Public Switched Telephone
                Netowrk) sends during a call."                       o" The number of packets which PSTN(Public Switched Telephone
                Netowrk) receives during a call."                       n" The number of bytes which PSTN(Public Switched Telephone
                Netowrk)  receives during a call."                      