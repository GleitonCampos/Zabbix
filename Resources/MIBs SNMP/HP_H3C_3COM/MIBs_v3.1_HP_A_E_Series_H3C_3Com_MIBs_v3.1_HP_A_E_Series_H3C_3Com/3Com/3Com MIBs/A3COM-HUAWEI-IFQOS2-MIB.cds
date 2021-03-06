�-- ============================================================================
-- Copyright (C) 2008 by H3C Technologies. All rights reserved.
--
-- Description: Interface QoS Management Information Base.
-- Reference: RFC 3291
-- Version: 1.5
-- History:
-- V1.0 created by tangshun.
-- V1.1 2006/02/24 modified by changhuifeng
--  Add  object h3cIfQoSWFQType in h3cIfQoSWFQTable.
--  Add h3cIfQoSL3PlusObjects and h3cIfQoSPortBindingTable.
--  Modify property of h3cIfQoSPortWredPreID to "not-accessible".
--  Add the  enumeration ipall to h3cIfQoSPQClassRuleType in h3cIfQoSPQClassRuleTable.
--  Modify some text errors in this file.
-- V1.2 2006/03/29 modified by xialei
--  Modify the ipv4acl value in description of h3cIfQoSPQClassRuleValue and h3cIfQoSCQClassRuleValue
--  Add the enumeration mpls to h3cIfQoSPQClassRuleType in h3cIfQoSPQClassRuleTable.
--  Add the enumeration ipall, mpls to h3cIfQoSCQClassRuleType in h3cIfQoSCQClassRuleTable.
-- V1.3 2006/05/24 add by cuichuanjin
--  Add h3cIfQoSCarlTable
-- V1.4 2007/11/12 modified by mouxuanli
--  Modify the description of the object h3cIfQoSPassPackets.
--  Add 18 objects in h3cIfQoSHardwareQueueRunInfoTable.
--  Add h3cIfQoSHQueueTcpRunInfoTable.
-- V1.5 2008/9/25 modified by yueting
--  Add h3cQoSIfTraStaConfigInfoTable.
--  Add h3cQoSIfTraStaRunInfoTable.
-- ============================================================================
   "Inbound or outbound."               L"The actions taken when packets conforming or exceeding the configured CIR."               "The type of priority queue."                                                         ,"Interface QoS management information base." �"Platform Team H3C Technologies Co.,Ltd.
                Hai-Dian District Beijing P.R. China
                http://www.h3c.com
                Zip:100085
                "                       -"A table of queue schedule mode information."                       ("Queue schedule mode information entry."                       "The mode of schedule."                       ="A table of queue schedule weight configuration information."                       8"Queue schedule weight configuration information entry."                       
"Queue ID"                       "Group type of WRR and WFQ."                       "Schedule type."                       "Schedule value."                       "Max delay."                           )"A table of queue statistic information."                       $"Queue statistic information entry."                       ""The number of forwarded packets."                        "The number of dropped packets."                       !"The bytes of forwarded packets."                       9"The PPS of forwarded packets.  PPS: packets per second."                       7"The BPS of forwarded packets.  BPS: bytes per second."                       "The bytes of dropped packets."                       5"The max number of packets which the queue can hold."                       4"The max bytes of packets which the queue can hold."                       -"The number of packets in the current queue."                       ,"The bytes of packets in the current queue."                       *"The PPS of packets in the current queue."                       *"The BPS of packets in the current queue."                       1"The number of packets dropped by tail dropping."                       0"The bytes of packets dropped by tail dropping."                       ."The PPS of packets dropped by tail dropping."                       ."The BPS of packets dropped by tail dropping."                       ("The number of packets dropped by WRED."                       '"The bytes of packets dropped by WRED."                       %"The PPS of packets dropped by WRED."                       %"The BPS of packets dropped by WRED."                       Y"A table of queue statistic information
                 about TCP and non-TCP packets."                       T"Queue statistic information entry
                 about TCP and non-TCP packets."                       ?"The number of low-precedence non-TCP packets dropped by WRED."                       >"The bytes of low-precedence non-TCP packets dropped by WRED."                       g"The PPS of low-precedence non-TCP packets dropped by WRED.
                 PPS: packets per second."                       e"The BPS of low-precedence non-TCP packets dropped by WRED.
                 BPS: bytes per second."                       ;"The number of low-precedence TCP packets dropped by WRED."                       :"The bytes of low-precedence TCP packets dropped by WRED."                       8"The PPS of low-precedence TCP packets dropped by WRED."                       8"The BPS of low-precedence TCP packets dropped by WRED."                       @"The number of high-precedence non-TCP packets dropped by WRED."                       ?"The bytes of high-precedence non-TCP packets dropped by WRED."                       ="The PPS of high-precedence non-TCP packets dropped by WRED."                       ="The BPS of high-precedence non-TCP packets dropped by WRED."                       <"The number of high-precedence TCP packets dropped by WRED."                       ;"The bytes of high-precedence TCP packets dropped by WRED."                       9"The PPS of high-precedence TCP packets dropped by WRED."                       9"The BPS of high-precedence TCP packets dropped by WRED."                               $"A table of FIFO queue information."                       "FIFO queue information entry."                       #"The maximum length of FIFO queue."                       ."A table of FIFO queue statistic information."                       )"FIFO queue statistic information entry."                       %"The number of packet in FIFO queue."                       "The number of discard packet."                               >"A table of priority queue default configuration information."                       9"Priority queue default configuration information entry."                       "Priority queue list number."                       :"Specify priority queue that packets put into by default."                       F"A table of queue length of priority queue configuration information."                       A"Queue length of priority queue configuration information entry."                       "Type of priority queue."                       "The size of priority queue."                       6"A table of class rule of priority queue information."                       6"A table of class rule of priority queue information."                       D"Type of class rule.
                'ipall' means all ip packets."                      �"Value of class rule.
                 interface : ifIndex
                 ipv4acl : 2000..3999
                 ipv6acl : 2000..3999, 10000..42767
                 greater-than : 0..65535
                 less-than : 0..65535
                 tcp : 0..65535
                 udp : 0..65535
                 mpls(exp-mask) : 1..255
                 other types: 0
                "                       ("Specify the queue for matched packets."                       "RowStatus."                       %"A table of priority queue instance."                       &"Priority queue instance information."                       "Priority queue list number."                       "RowStatus."                           2"A table of priority queue statistic information."                       -"Priority queue statistic information entry."                       "The type of priority queue."                       ."The number of packets in the priority queue."                       '"The maximum length of priority queue."                       ."The packet number of priority queue discard."                               <"A table of custom queue default configuration information."                       7"Custom queue default configuration information entry."                       "Custom queue list number."                       "Default queue ID."                       D"A table of queue length of custom queue configuration information."                       ?"Queue length of custom queue configuration information entry."                       "Custom queue index."                       "The size of custom queue."                       G"The maximum bytes that the specified queue can transmit in each turn."                       4"A table of class rule of custom queue information."                       4"A table of class rule of custom queue information."                       D"Type of class rule.
                'ipall' means all ip packets."                      |"Value of class rule.
                 interface : ifIndex
                 ipv4acl : 2000..3999
                 ipv6acl : 2000..42767
                 greater-than : 0..65535
                 less-than : 0..65535
                 tcp : 0..65535
                 udp : 0..65535
                 mpls(exp-mask) : 1..255
                 other types: 0.
                "                       ("Specify the queue for matched packets."                       "RowStatus."                       #"A table of custom queue instance."                       $"Custom queue instance information."                       "Custom queue list number."                       "RowStatus."                           0"A table of custom queue statistic information."                       +"Custom queue statistic information entry."                       ,"The number of packets in the custom queue."                       %"The maximum length of custom queue."                       ,"The packet number of custom queue discard."                               -"A table of weighted fair queue information."                       ("Weighted fair queue information entry."                       $"The length of weighted fair queue."                       $"The number of weighted fair queue."                       "RowStatus."                       ""The type of weighted fair queue."                           7"A table of weighted fair queue statistic information."                       2"Weighted fair queue statistic information entry."                       )"The number of packets in all the queues"                       $"The length of weighted fair queue."                       4"The number of discarded packets in all the queues."                       "The number of active queues."                       &"The number of maximum active queues."                       "The number of queues."                           0"A table of bandwidth of interface information."                       "Bandwidth information entry."                       2"The maximum bandwidth of interface.  Unit : Kbps"                       2"Max reserved bandwidth of the interface for QoS."                       "RowStatus."                           !"A table of qmtoken information."                       "Qmtoken information entry."                       "The number of tokens."                       "RowStatus"                               2"A table of Real-time protocol queue information."                       4"The information of Real-time protocol queue entry."                       ,"Minimum threshold of UDP destination port."                       ,"Maximum threshold of UDP destination port."                       !"Maximum bandwidth.  unit : kbps"                       ""Committed Burst Size. Unit: byte"                       "RowStatus."                           E"A table of statistic information of Real-time protocol information."                       @"Statistic information of Real-time protocol information entry."                       8"The number of packets in the Real-time protocol queue."                       '"The size of Real-time protocol queue."                       "The number of output packets."                        "The number of discard packets."                               )"Committed Access Rate List(CARL) table."                        "CARL configuration infomation."                       3"The index of the table, which is the CARL number."                       $"Parameter type of the CARL number."                       $"Parameter value of the CARL table."                       "RowStatus."                           1"A table of line rate configuration information."                       ,"Line rate configuration information entry."                       6"Line rate on the inbound or outbound of data stream."                       )"Committed Information Rate. Unit: kbps."                       ""Committed Burst Size. Unit: byte"                        "Excess Burst Size. Unit: byte."                       "RowStatus."                       ,"A table of line rate run info information."                       '"Line rate run info information entry."                       "The number of passed packets."                       "The number of passed bytes."                        "The number of delayed packets."                       "The number of delayed bytes."                       "The flag of shaping."                               �"This object contains an appropriate value to be used for h3cIfQoSAggregativeCarIndex
                 when creating rows in the h3cIfQoSAggregativeCarConfigTable.
                 Begin with 1.
                "                       )"A table of aggregative car information."                       "Aggregative car information."                       "The index of aggregative car."                       "The name of aggregative car."                       *"Committed-information-rate.  Unit : kbps"                       $"Committed-burst-size.  Unit : byte"                       !"Excess-burst-size.  Unit : byte"                       %"Peak-information-rate.  Unit : kbps"                      %"Supported green action:
                 invalid(0),
                 pass(1),
                 discard(3),
                 remark(4),
                 remark-ip-pass(6),
                 remark-mplsexp-pass(8),
                 remark-dscp-pass(10),
                 Hardware QoS : pass, discard, remark.
                 Software QoS : pass, discard, remark-ip-pass(6),
                 remark-mplsexp-pass(8), remark-dscp-pass(10).
                 'invalid' is returned only when getting value from software QoS.
                 "                      �"The value is to remark When green action is remarking.
                 For remark-dscp-pass, the range is 0~63;
                 For remark-ip-pass and remark-mplsexp-pass, the range is 0~7;
                 Only software QoS support this node.
                 255 is returned only when getting value from hardware QoS or
                 when action being pass, discard of software QoS.
                 255 can't be set.
                "                      %"Supported yellow action:
                 invalid(0),
                 pass(1),
                 discard(3),
                 remark(4),
                 remark-ip-pass(6),
                 remark-mplsexp-pass(8),
                 remark-dscp-pass(10),
                 Hardware QoS : pass, discard, remark.
                 Software QoS : pass, discard, remark-ip-pass(6),
                 remark-mplsexp-pass(8), remark-dscp-pass(10).
                 'invalid' is returned only when getting value from software QoS.
                "                      �"The value is to remark When yellow action is remarking.
                 For remark-dscp-pass, the range is 0~63;
                 For remark-ip-pass and remark-mplsexp-pass, the range is 0~7;
                 Only software QoS support this node.
                 255 is returned only when getting value from hardware QoS or
                 when action being pass, discard of software QoS.
                 255 can't be set.
                "                      ""Supported red action:
                 invalid(0),
                 pass(1),
                 discard(3),
                 remark(4),
                 remark-ip-pass(6),
                 remark-mplsexp-pass(8),
                 remark-dscp-pass(10),
                 Hardware QoS : pass, discard, remark.
                 Software QoS : pass, discard, remark-ip-pass(6),
                 remark-mplsexp-pass(8), remark-dscp-pass(10).
                 'invalid' is returned only when getting value from software QoS.
                "                      �"The value is to remark When red action is remarking.
                 For remark-dscp-pass, the range is 0~63;
                 For remark-ip-pass and remark-mplsexp-pass, the range is 0~7;
                 Only software QoS support this node.
                 255 is returned only when getting value from hardware QoS or
                 when action being pass, discard of software QoS.
                 255 can't be set.
                "                      0"The type of aggregative CAR.
                 The enumeration 'aggregative' indicates that the ports
                 with a same aggregative CAR use one token bulk.

                 The enumeration 'notAggregative' indicates that each port
                 uses one token bulk.
                "                       "RowStatus."                       &"A table of aggregative car instance."                       '"Aggregative car instance information."                       "Direction."                       "The type of class rule."                       �"The number of class rule.
                 ipv4acl : 2000..5999
                 ipv6acl : 2000..42767
                 carl : 1..16
                 other types: 0.
                "                       "The index of aggregative car."                       "RowStatus."                       3"A table of aggregative car statistic information."                       ("Aggregative car statistic information."                       #"Number of packets conforming CIR."                        "Number of bytes conforming CIR"                       "Number of yellow packets."                       "Number of yellow bytes."                       ""Number of packets exceeding CIR."                        "Number of bytes exceeding CIR."                           4"A table of tricolor car configuration information."                       /"Tricolor car configuration information entry."                       "Direction."                       �"The index of the table, which is the matching type for the
                 packets on interface: ipv4acl, ipv6acl, carl, any."                       �"The index of the table.
                 ipv4acl: the number is ipv4 acl number;
                 ipv6acl: the number is ipv6 acl number;
                 carl: the number is CARL number;
                 any: the number is 0;
                "                       )"Committed Information Rate. Unit: kbps."                       #"Committed Burst Size. Unit: byte."                        "Excess Burst Size. Unit: byte."                       $"Peak Information Rate. Unit: kbps."                       "Green Action."                      �"The value is to remark when green action is remarking.
                 For remark-dscp-continue and remark-dscp-pass, the range is 0~63;
                 For remark-ip-continue and remark-ip-pass and
                 remark-mplsexp-continue and remark-mplsexp-pass and
                 remark-dot1p-continue and remark-dot1p-pass, the range is 0~7;
                 For remark-fr-de-continue and remark-fr-de-pass and
                 remark-atm-clp-continue and remark-atm-clp-pass, the range is 0~1.
                 255 is returned only when getting value from hardware QoS
                 or when action being pass, discard of software QoS.
                 255 can't be set.
                "                       "Yellow Action."                      �"The value is to remark when yellow action is remarking.
                 For remark-dscp-continue and remark-dscp-pass, the range is 0~63;
                 For remark-ip-continue and remark-ip-pass and
                 remark-mplsexp-continue and remark-mplsexp-pass and
                 remark-dot1p-continue and remark-dot1p-pass, the range is 0~7;
                 For remark-fr-de-continue and remark-fr-de-pass and
                 remark-atm-clp-continue and remark-atm-clp-pass, the range is 0~1.
                 255 is returned only when getting value from hardware QoS
                 or when action being pass, discard of software QoS.
                 255 can't be set.
                "                       "Red Action"                      �"The value is to remark when red action is remarking.
                 For remark-dscp-continue and remark-dscp-pass, the range is 0~63;
                 For remark-ip-continue and remark-ip-pass and
                 remark-mplsexp-continue and remark-mplsexp-pass and
                 remark-dot1p-continue and remark-dot1p-pass, the range is 0~7;
                 For remark-fr-de-continue and remark-fr-de-pass and
                 remark-atm-clp-continue and remark-atm-clp-pass, the range is 0~1.
                 255 is returned only when getting value from hardware QoS
                 or when action being pass, discard of software QoS.
                 255 can't be set.
                "                       "RowStatus."                       0"A table of tricolor car statistic information."                       +"Tricolor car statistic information entry."                       "The number of green packets."                       "The number of green bytes."                       "The number of yellow packets."                       "The number of yellow bytes."                       "The number of red packets."                       "The number of red bytes."                           1"A table of generic traffic shaping information."                       ,"Generic traffic shaping information entry."                       �"The index of the table,
                 which is the matching type for the packets on interface:
                 ipv4acl, ipv6acl, any, queue.
                "                       �"Value of type.
                 ipv4acl : 2000..4999
                 ipv6acl : 2000..42767
                 any : 0
                 queue : 0..7
                 "                       )"Committed Information Rate. Unit: kbps."                       #"Committed Burst Size. Unit: byte."                        "Excess Burst Size. Unit: byte."                       "The length of queue."                       "RowStatus."                       >"A table of  generic traffic shaping's statistic information."                       8"Generic traffic shaping's statistic information entry."                       %"The number of packets in the queue."                       "The number of passed packets."                       "The number of passed bytes."                        "The number of discard packets."                       "The number of discard bytes."                        "The number of delayed packets."                       "The number of delayed bytes."                               �"This object contains an appropriate value to be used for h3cIfQoSWredGroupIndex
                 when creating rows in the h3cIfQoSWredGroupTable.
                 Begin with 0.
                "                       $"A table of WRED group information."                       "WRED group information."                       "WRED group index."                       "WRED group name."                       "Type of WRED group."                      h"Exponent for WRED calculates the average length of queue.
                 If 'h3cIfQoSWredGroupType' is 'queue', the object is ineffective.
                 So, it must use the object, which is 'h3cIfQoSWredGroupExponent' of
                 h3cIfQoSWredGroupContentTable, to indicate the exponent of
                 each queue of the queue WRED group."                       "RowStatus."                       '"A table of priority WRED information."                       ""Priority WRED information entry."                      "The priority of a packet.
                 Different type of packet has different priority.
                 Type of priority    Range of priority
                 dot1p              0..7
                 ippre              0..7
                 dscp               0..63
                 atmclp             0..1
                 frde               0..1
                 exp                0..7
                 queue              0..7 ( defined by product )
                 dropLevel          0..2
                 "                       �"The sub index.
                 Different type of packet has different value.
                 Type of priority    Range of value
                 queue              0..2
                 other types : 0
                 "                       "Discard low limit."                       "Discard high limit."                       "Discard probability."                      "Exponent for WRED calculates the average length of queue.
                 Only 'h3cIfQoSWredGroupType' is 'queue', the object is effective.
                 This object is designed to indicate the exponent of
                 each queue of the queue WRED group.
                "                       "RowStatus."                       6"A table of WRED group applied interface information."                       +"WRED group applied interface information."                       "WRED group index."                       "WRED group name."                       "RowStatus."                       ("A table of WRED statistic information."                       "WRED statistic information."                       "The number of random drop."                       "The number of tail drop."                           1"A table of port WRED configuration information."                       ,"Port WRED configuration information entry."                       �"The object is used to enable or disable WRED function of the port.
                 true: Enable WRED function of a port.
                 false: Disable WRED function of a port.
                "                       "Weight constant."                       "RowStatus."                       O"A table of weighted random early detect precedence configuration information."                       J"Weighted random early detect precedence configuration information entry."                       "IP precedence, from 0 to 7."                       "Low Limit(number of packets)"                       "High limit(number of packets)"                       !"Discard probability denominator"                       "RowStatus."                       ("A table of WRED statistic information."                       #"WRED statistic information entry."                       "The number of tail drop."                       "The number of random drop."                               *"A table of priority of port information."                       )"The priority of port information entry."                       "The priority of port."                       4"A table of the trust-priority of port information."                       +"Trust-priority of port information entry."                       "The trust type of port."                       "The overcast type."                               �"This object contains an appropriate value to be used for h3cIfQoSPriMapGroupIndex
                 when creating rows in the h3cIfQoSPriMapGroupTable.
                 Begin with 64.
                "                       #"A table of map group information."                       "Map group information entry."                      \"The index of map, which are defined by system and user.
                 The index of system defined map is 1 to 9.
                 System defined map-name/map-index pairs like this:
                 Map-index    Map-name
                 1            dot1p-dp
                 2            dot1p-dscp
                 3            dot1p-lp
                 4            dscp-dot1p
                 5            dscp-dp
                 6            dscp-dscp
                 7            dscp-lp
                 8            exp-dp
                 9            exp-lp
                "                       "The type of map group."                       "The name of map group."                       "RowStatus."                       4"A table of priority map configuration information."                       /"Priority map configuration information entry."                      >"Priority map table import value list.
                 Different map has different h3cIfQoSPriMapConfigImportValue.
                 Map-name       Range of h3cIfQoSPriMapConfigImportValue
                 dot1p-dp       (0..7)
                 dot1p-dscp     (0..7)
                 dot1p-lp       (0..7)
                 dscp-dot1p     (0..63)
                 dscp-dp        (0..63)
                 dscp-dscp      (0..63)
                 dscp-lp(7)     (0..63)
                 exp-dp(8)      (0..7)
                 exp-lp         (0..7)
                "                      �"Priority map table output.
                 Different map has different h3cIfQoSPriMapGroupExportValue.
                 dot1p-dp:   0..7
                 dot1p-dscp: 0..63
                 dot1p-lp:   0..7
                 dscp-dot1p: 0..7
                 dscp-dp:    0..7
                 dscp-dscp:  0..63
                 dscp-lp:    0..7
                 exp-dp:     0..7
                 exp-lp:     0..7
                "                       "RowStatus."                               U"A table of EACL sub-interface binding information
                 for L3+ board ."                       "Binding information entry."                       "The binding interface."                       "RowStatus"                               :"A table of traffic statistics configuration information."                       E"An entry of interface traffic statistics configuration information."                       *"The direction of the traffic statistics."                      G"The bitmap of Queue ID.
                        The octet specifies queues 0 through 7.  If a bit has
                        a value of '1', the corresponding queue is configured
                        in the set of Queues; if a bit has a value of '0',
                        the corresponding queue is not configured."                      {"The bitmap of Dot1p value.
                        The octet specifies Dot1p values 0 through 7.  If a bit
                        has a value of '1', the corresponding Dot1p value is
                        configured in the set of Dot1p values; if a bit has a
                        value of '0', the corresponding Dot1p value is not
                        configured."                      2"The bitmap of Dscp value.
                        Each octet within this value specifies a set of
                        eight Dscp values, with the first octet specifying
                        Dscp values 0 through 7, the second octet specifying
                        Dscp values 8 through 15, etc.  If a bit has a value
                        of '1', the corresponding Dscp value is configured
                        in the set of Dscp values; if a bit has a value of
                        '0', the corresponding Dscp value is not configured."                      "The bitmap of VLAN ID.
                        Each octet within this value specifies a set of
                        eight VLANs, with the first octet specifying
                        VLANs 0 through 7, the second octet specifying VLANs
                        8 through 15, etc.  If a bit has a value of '1', the
                        corresponding VLAN is configured in the set of VLANs;
                        if a bit has a value of '0', the corresponding VLAN
                        is not configured."                       %"The row status of this table entry."                           4"A table of traffic statistics running information."                       ?"An entry of interface traffic statistics running information."                       "Type of statistics object."                       �"Value range for the object type:
                 for Queue: 0~7
                 for Dot1p: 0~7
                 for Dscp: 0~63
                 for VlanID: 1~4094
                 "                       *"The direction of the traffic statistics."                       "Number of passed packets."                       "Number of dropped packets."                       "Number of passed bytes."                       "Number of dropped bytes."                       -"PPS (packets per second) of passed packets."                       +"BPS (bytes per second) of passed packets."                                  