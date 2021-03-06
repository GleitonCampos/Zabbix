�-- ==========================================================
-- Copyright (C) 2002 by HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: This file describes the huawei mib implementation of ISDN
-- Reference:
-- Version: V1.4
-- History:
--  V1.0 Initial version
--  V1.1 2004-10-27 updated by gaolong
--       Modify IMPORTS clause.
--       Remove object oid comments from MIB
--       Correct DEFVAL value of hwChanbIsdnPermit
--  V1.2 2005-03-22 updated by songjie
--       Add table: hwQ931IsdnTable.
--       Add traps: hwQ931IsdnCallSetup, hwQ931IsdnCallClear.
--  V1.3 2009-05-22 updated by chengtiesheng
--       Add table: hwLapdIsdnTable.
--  V1.4 2009-10-15 updated by chengtiesheng
--       Modify leaf node: hwLapdIsdnProtocol, add value ni(9).
--       Change MAX-ACCESS of hwLapdIsdnIf.
--       Add leaf node: hwLapdStatusTrapEnable.
--       Add trap:  hwLapdIsdnStatusChange.
-- ==============================================================
                                                         ;"This file describes the huawei mib implementation of ISDN""VRP Team Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd.,
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei.com
                Zip:100085"                       U"This table is used to describe the router's B Channels
                 infomation"                       " A single B channels"                       p" this object is used to describe the virtual
                interface value associated with one neighbor.   "                       8" this object is used to describe the call permissions."                       b"this object is used to descirbe the call address
                by which we call one nieghbor."                       i"this object is used to describe the callser address
                which will be known by B channels."                       j"this object is used to describe that whether it is an
                incoming call or an outging call."                       S"this object is used to describe the information type
                on the call"                       /"this object is used to manage the call by NMS"                       U"this object is used to describe the reason why last
                call is cleard"                       Z"this object is used to describe the reason code for
                the last call down."                       _"this object is used to describe the accepted call
                number from the B channels"                       \"this object is used to describe the refused call
                number from B channels ."                       �"this object is used to describe the successful call
                number to B channels after
                system restart."                       n"this object is used to describe the failing call number
                 to B channels after system restart"                       ]"This object is used to descirbe the maximum duration
                time in milliseconds."                       _"this object is used to describe the last call duration
                 time in milliseconds"                       b"this object is used to describe the sysUpTime after
                last call attempt was made."                       ."This object is used to control  sending trap"                               8"This object is used to control sending callsetup trap."                       7"This object is used to control sending callclear trap"                       Q"This table describes B channel information for the
                use of Q931"                        "A B channel entry in the Q931."                       6"Index of the B ISDN channel interface managed by Q93"                       �"This object describes the called ISDN number.
                When an outgoing call is established successfully, the
                value of this node is the call number of this device,
                otherwise the value is null string"                       �"This object describes the calling ISDN number.
                When an incoming call is established successfully, the
                value of this node is the call number of peer device,
                otherwise the value is null string."                      �"This object describes last cause of disconnection.
                In hwQ931IsdnCallClear trap, the value of this node is
                the reason of disconnection, this node is only valid
                for hwQ931IsdnCallClear trap, the value of this node
                is unknown in other situation.
                unknown:            unknown error.
                normCallClr:        normal call clearing.
                noRouteToTransNet:  no route to specified transit network.
                noRouteToDest:      no route to destination.
                switchEquCongest:   switching equipment congestion.
                netOutofOrder:      network out of order."                       :"This object describes the direction of the current call."                       �"This object describes the start time of this call.
                start time is the time of an existent call that
                has just been established."                      d"This object describes the close time of this call.
                This node is only vaild for hwQ931IsdnCallClear trap.
                In other situation the value of this node is zero.
                In hwQ931IsdnCallClear trap, this node provides the
                time of an existent call that the call has just been
                cleared."                           >"This table is used to describe the config of ISDN D channel."                       "ISDN D channel config"                       n"This object is used to describe the D channel
                interface value associated with one neighbor."                      4"This object is used to describe the protocol D channel applied.
                For E1, the protocol may be dss1, qsig, etsi.
                For T1, the protocol may be ess5, ansi, att, dss1, etsi, ni2,
                ntt, qsig.
                For BRI, the protocol may be ansi, dss1, etsi, ni, ntt."                       �"The physical interface mode.  For TE mode, the value
                of this object is userSide.  For NT mode, the value of this
                object is networkSide."                      M"The operational status of this interface:
                 inactive  all layers are inactive.
                 l1Active  layer 1 is activated,
                           layer 2 datalink not established.
                 l2Active  layer 1 is activated,
                           layer 2 datalink established.
               "                           V"This object is used to control sending hwLapdIsdnStatusChange
                trap."                           Q"When one call is setup ,cleard or determined , the trap
        is sent to NMS"                 g"This trap/inform is sent to the manager whenever a call
                is established successfully."                �"This trap/inform is sent to the manager under the following
                conditions:
                - an existent call is normally cleared.
                - an existent call is determined to have ultimately
                  failed, and has been cleared.
                - the existent call is cleared when the BRI/PRI port is
                  down.
                - the existent call is cleared when the dialer rule is
                  down."                 q"This trap/inform is sent to the manager whenever the
                 D-channel of an interface changes state."                        