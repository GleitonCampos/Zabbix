'--==============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: PPP Over Sonet MIB
-- Reference:
-- Version: V1.4
-- History:
--  V1.0 2004-10-28 created by fuzhenyu
--  V1.1 2004-12-13 add notifications(9-13) under h3cPosMIBNotifications by fuzhenyu.
--  V1.2 2005-04-12 add h3cPosFlagJ0Type, h3cPosFlagJ1Type in h3cPosParamTable by zhaotingqi.
--  V1.3 2007-07-19 add h3cPosNormalAlarm in h3cPosMIBNotifications by chenfangchun
--  V1.4 2010-05-19 modified by Tong Wei for TCA (Threshold Crossing Alarms)
--                  add h3cPosB1TCAThreshold, h3cPosB2TCAThreshold, h3cPosB3TCAThreshold,
--                      h3cPosB1TCAEnable, h3cPosB2TCAEnable and h3cPosB3TCAEnable
--                      in h3cPosParamTable
--                  add h3cPosB1TCAlarm, h3cPosB2TCAlarm and h3cPosB3TCAlarm
--                      in h3cPosMIBNotifications
--==============================================================================
                                         �"This MIB manages POS(PPP Over Sonet)interfaces by providing
        an operational table which controls parameters of each POS
        interface and reports alarm conditions.
        " �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        " "201005191700Z" "200707191700Z" '"Update the version of this MIB module" ("The initial version of this MIB module"       -- May 19, 2010  GMT
           "The pos parameter table."                       ""                       "The length of CRC"                       ."Maximum Transfer Unit (MTU) of POS interface"                       x"Scrambling is used to avoid continuous 0 or 1 in signals. This
        object is to decide whether to scramble or not"                       �"The value indicates the source of clock signal. System indicates
        that clock signals are from device itself and line for clock signals
        from remote"                       G"The section trace byte. This node is used when the frame type is sdh."                       D"The path trace byte. This node is used when the frame type is sdh."                       I"The section trace byte. This node is used when the frame type is sonet."                       F"The path trace byte. This node is used when the frame type is sonet."                       7"The parameter for the channel signal value of C2 byte"                       �"The frame type that encapsulates the packet. Default frame type is
        sdh(Synchronous Digital Hierarchy) It also can be configured using
        sonet type(Synchronous Optical Network)."                      "The vlan that this pos port binds. The vlan can not include any other
        port, otherwise error will be returned. If the vlan has a virtual
        interface, the status of virtual interface will be up or down according
        to the link status or this pos."                       "The type of encapsulation "                       �"The keeplive of hdlc. It is the query interval of link status. Two
        members of a link should have same keeplive. The default 0 prohibits
        detecting status of link."                       k"The bit-error rate threshold for Signal Fault. SF threshold should
        be greater than SD threshold."                       j"The bit-error rate threshold for Signal Degrade. SD threshold should
        be less than SF threshold."                       8"Counter for SBIPE(Section Bit Interleave Parity Error)"                       5"Counter for LBIPE(Line Bit Interleave Parity Error)"                       5"Counter for PBIPE(Path Bit Interleave Parity Error)"                       >"How many times does LREI(Line Remote Error Indication) occur"                       >"How many times does PREI(Path Remote Error Indication) occur"                       �"The frame type that encapsulates the flag J0. Default frame type is
        sdh(Synchronous Digital Hierarchy). It also can be configured using
        sonet(Synchronous Optical Network) type."                       �"The frame type that encapsulates the flag J1. Default frame type is
        sdh(Synchronous Digital Hierarchy). It also can be configured using
        sonet(Synchronous Optical Network) type."                       "Threshold for B1 TCA."                       "Threshold for B2 TCA."                       "Threshold for B3 TCA."                       "Enable traps of B1 TCA."                       "Enable traps of B2 TCA."                       "Enable traps of B3 TCA."                                "Alarm indicates loss of signal"                 "Alarm indicates loss of frame"                 "Alarm indicates out of frame"                 :"Alarm when LAIS(Line  Alarm  Indication  Signal) arrives"                 ;"Alarm when LRDI(Line  Remote  Defect  Indication) arrives"                 ;"Alarm when PRDI(Path  Remote  Defect  Indication) arrives"                 :"Alarm when PAIS(Path  Alarm  Indication  Signal) arrives"                 !"Alarm indicates loss of pointer"                 C"Alarm indicates inconsistency between sent and received J0 bytes."                 C"Alarm indicates inconsistency between sent and received J1 bytes."                 '"Alarm indicates a mismatched C2 byte."                 B"Alarm indicates that the B2 bit-error rate exceeds SD threshold."                 B"Alarm indicates that the B2 bit-error rate exceeds SF threshold."                 >"Alarm indicates that the Pos interface state returns normal."                 #"Threshold crossing alarms for B1."                 #"Threshold crossing alarms for B2."                 #"Threshold crossing alarms for B3."                            