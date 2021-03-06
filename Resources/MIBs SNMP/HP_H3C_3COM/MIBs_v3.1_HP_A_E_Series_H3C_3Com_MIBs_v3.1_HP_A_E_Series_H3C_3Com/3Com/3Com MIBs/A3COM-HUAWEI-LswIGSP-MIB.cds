-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:  HUAWEI Lan Switch Igmp snooping MIB
-- Reference:
-- Version: V1.4
-- History:
--(1) Created by Zhangshilin, 2001.06.29
--(2) Revised by Qi Zhenglin, 2002.1.8
-- V1.1 2004-10-12 updated by gaolong
--        Import TEXTUAL-CONVENTION.
--        Relocate hwLswIgmpsnoopingMib MODULE-IDENTITY clause.
-- V1.2 Revised by yaochunyan, 2004.11.28
--        V1.2 Add hwIgmpSnoopingGroupLimitTable,
--        hwIgmpSnoopingFastLeaveTable and
--        hwIgmpSnoopingGroupPolicyTable.
--      Adjust format of the whole file by gaolong.
-- V1.3 2005-3-9 updated by fuzhenyu
--       Add object hwIgmpSnoopingNonFloodingStatus.
--       Change the descriptions of hwIgmpSnoopingGroupIfIndex,
--       hwIgmpSnoopingFastLeaveIfIndex, hwIgmpSnoopingGroupPolicyIfIndex
-- V1.4 2005-3-22 updated by wangxiaodong
--      Add hwIgmpSnoopingVlanStatusTable
--      Add hwRecvIGMPGQueryNum, hwRecvIGMPSQueryNum,
--          hwRecvIGMPV1ReportNum, hwRecvIGMPV2ReportNum,
--          hwRecvIGMPLeaveNum, hwRecvErrorIGMPPacketNum,
--          hwSentIGMPSQueryNum, hwIgmpSnoopingClearStats
--      Adjust file format
-- ==================================================================
--
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
   '"A simple status value for the object."                                 "" "" "200106290000Z" ""                   $"Configure to enable IGMP Snooping."                       ."Configure the aging time of the router port."                       ,"Configure the maximum query response time."                       7"Configure the aging time of the multicast group port."                       c"The table lists the maximum group number that one
             interface could do IGMP Snooping."                       �"An entry (conceptual row) representing  the maximum
             group number on an interface which IGMP Snooping operation
             is enabled."                       P"The ifIndex value of the port on which IGMP
             snooping is enabled."                       5"The maxmum group number of IGMP Snooping on a port."                       _"The table specifies the fast leave status
             on those ports that do IGMP Snooping."                       ^"An entry specifies the fast leave status
             on those ports that do IGMP Snooping."                       P"The ifIndex value of the port on which IGMP
             snooping is enabled."                       T"The fast leave status of the port on which IGMP
             Snooping is enabled."                       k"This is a table specifies the group policy parameter and
             Vlan ID of the IGMP Snooping port."                       �"An entry representing the group policy parameter and Vlan ID
             of a port on which IGMP Snooping operation is enabled."                       P"The ifIndex value of the port on which
             IGMP Snooping is enabled."                       H"The Vlan ID which the IGMP Snooping port
             is attached to."                       e"The ACL Number which is used as the group policy parameter
             of the IGMP Snooping port."                       �"This object is used to create or delete a row
             and represent the current status of this row.
             Now support three state:CreateAndGo,Active,Destroy."                       �"Configure to disable multicast flooding when no member exists
             in the destinated group. To use this function,IGMP snooping
             must be enabled."                       Y"The table used to enable or disable IGMP snooping 
             on the specified VLAN."                       V"An entry representing the IGMP snooping status on 
             the specified VLAN."                       b"An index uniquely identifies on which VLAN IGMP 
             snooping is enabled or disabled. "                       ;"Indicating whether IGMP snooping is enabled on this VLAN."                           T"The statistics of IGMP general query packets received on
             the device."                       U"The statistics of IGMP specific query packets received on
             the device."                       P"The statistics of IGMP V1 report packets received on
             the device."                       P"The statistics of IGMP V2 report packets received on
             the device."                       L"The statistics of IGMP leave packets received on
             the device."                       L"The statistics of error IGMP packets received on
             the device."                       S"The statistics of IGMP specific query packets sent from
             the device."                       <"The configuration to clear the statistics of IGMP packets."                                  