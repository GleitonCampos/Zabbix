�-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:  HUAWEI Lan Switch Rstp MIB
-- Reference:
-- Version: V1.4
-- History:
--(1) Created by Zhangshilin, 2001.06.29
--(2) Revised by Qi Zhenglin, 2002.01.08
-- V1.1 2004-10-12 updated by gaolong
--      Import TEXTUAL-CONVENTION, OBJECT-IDENTITY, NOTIFICATION-TYPE.
--      Relocate hwLswRstpMib MODULE-IDENTITY clause.
--      Substitute chinese characters with English words.
--      Change MAX-ACCESS clause value of hwdot1dStpClearStatistics and
--      hwdot1dSetStpDefaultPortCost from write-only to read-write.
-- V1.2 2004-11-10 add hwdot1dStpRXTCBPDU by xuboning
-- V1.3 2004-12-21 add hwdot1dStpPortSendingBPDUType, hwdot1dStpOperPortPointToPoint,
--                 change hwdot1dStpPortPointToPoint by zhuchaopeng
-- V1.4 2005-07-04 modify hwdot1dStpPathCostStandard by zhanghaihong
--                 adjust file format by gaolong 
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
   '"A simple status value for the object."                                                     "" "" "200106290000Z" ""                   $" Bridge STP enabled/disabled state"                       0" Running mode of the bridge RSTP state machine"                       C" Permitted amount of bridges between any two ends on the network."                       !" MAC address of the root bridge"                       N" If BPDU guard enabled. The edge port will discard illegal BPDU when enabled"                       " Root type of the bridge"                       !" Time Out Factor of the bridge."                       �" Path Cost Standard of the bridge. Value 'dot1d-1998' is
          IEEE 802.1d standard in 1998, value 'dot1t' is IEEE 802.1t standard,
          and value 'legacy' is a private legacy standard."                       ("RSTP extended information of the port "                       *" RSTP extended information of the port  "                       " RSTP status of the port"                       '" Whether the port can be an edge port"                      1" It is the administrative value indicates whether the port
          can be connected to a point-to-point link or not.

          If the value is 'auto', the operative value of a point-to-point link state is
          determined by device itself, and can be read from hwdot1dStpOperPortPointToPoint."                       2" Check if the port transfer state machine enters"                       G" Packet transmission limit of the bridge in a duration of Hello Time."                       !" Number of STP BPDU received   "                       %" Number of STP BPDU transmitted    "                       "" Number of TCN BPDU received    "                       %" Number of TCN BPDU transmitted    "                       "Number of RSTP BPDU received"                       &" Number of RSTP BPDU transmitted    "                       7"Clear RSTP statistics. Read operation not supported. "                       I"Set PathCost back to the default setting. Read operation not supported."                       w" If the port guard root bridge. Other bridge which want to be root can not become root through this port if enabled. "                       �" Loop guard function that keep a root port or an alternate port in discarding state while the information on the port is aged out."                      M" Record the block reason of the port.
               notBlock         (1) means that the port is not in block state,.
               blockForProtocol (2) means that the port is blocked by stp protocol to avoid loop.
               blockForRootGuard(3) means that the root guard flag of bridge is set and a better message received from the port,and the port is blocked.
               blockForBPDUGuard(4) means that the port has been configured as an edge port and receive a BPDU and thus blocked.
               blockForLoopGuard(5) means that the port is blocked for loopguarded. "                       #" The number of received TC BPDUs "                       +" Type of BPDU which the port is sending. "                       �" This object indicates whether the port
          has connected to a point-to-point link or not.

          The administrative value should be read from hwdot1dStpPortPointToPoint. "                       *"Definition point for RSTP notifications."               d"The SNMP trap that is generated when an edged port of the BPDU-guard switch recevies BPDU packets."                 R"The SNMP trap that is generated when a root-guard port receives a superior bpdu."                 �"The SNMP trap that is generated when the bridge is no longer the root bridge of the spanning tree.
          Another switch with higher priority has already been the root bridge. "                 F"The SNMP trap that is generated when a loop-guard port is aged out ."                 $"RSTP extended information of vlan "                       *" RSTP extended information of the vlan  "                       " Vlan id supported"                       "" Whether the vlan is stp Ignored"                                  