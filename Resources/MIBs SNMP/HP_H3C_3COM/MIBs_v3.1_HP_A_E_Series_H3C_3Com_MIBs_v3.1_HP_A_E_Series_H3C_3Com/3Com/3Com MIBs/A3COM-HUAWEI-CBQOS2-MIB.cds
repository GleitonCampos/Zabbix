+-- =========================================================================
-- Copyright (C) 2009 by H3C Technologies. All rights reserved.
--
-- Description: This MIB file is used for management of h3c Class Based
--             QoS information.
-- Reference:
-- Version: V1.7
-- History:
-- V1.0 created by tangshun.
-- V1.1 2006/01/17 modified by wangjinwang
--   add enum value 22 and 23 in MatchRuleType
--   add comment for h3cCBQoSMatchRuleIntValue1
-- V1.2 2006/02/24 modified by changhuifeng
--   Add an enumeration Bittorrent(24) to object h3cCBQoSMatchRuleType.
--   Add h3cCBQoSMirrorCfgInfoTable for flow mirror.
--   Add h3cCBQoSRedirectIpv6Interface1 and h3cCBQoSRedirectIpv6Interface2
--   object for h3cCBQoSRedirectCfgInfoTable.
--   Modify the value range of h3cCBQoSRemarkValue from "1~4094" to "1~4095"
--   in h3cIfQoSPQClassRuleTable.
-- V1.3 2006/03/29 modified by xialei
--   Modify the MAX-ACCESS clause of h3cCBQoSQueueDropType.
--   Modify the description for object h3cCBQoSQueueCbs.
--   Modify the enumeration name of object h3cCBQoSRedirectType.
-- V1.4 2007/10/15 modified by wangjinwang
--   Add h3cCBQoSGlobalApplyTable to global policy apply.
--   Add h3cCBQoSPolicyClassMode and h3cCBQoSPolicyClassCfgOrder to
--   h3cCBQoSPolicyClassCfgInfoTable.
--   Add h3cCBQoSNestCfgInfoTable to traffic behavior.
--   Add enumeration matchRuleServiceDot1p
--   to object h3cCBQoSMatchRuleType.
--   Add enumeration typeTopMostVlanID to object h3cCBQoSRemarkType.
-- V1.5 2007/12/12 modified by Xu Hang/ChenWei
--   Delete the default value of h3cCBQoSGlobalApplyDirection
--   in h3cCBQoSGlobalApplyTable
--   Add h3cCBQoSApplyPolicyIndexObjects to h3cCBQoSApplyPolicyStaticsObjects
--   Add h3cCBQoSStaticsObjects to h3cCBQoSApplyPolicyStaticsObjects
--   Modify the MAX-ACCESS clause of h3cCBQoSQueueDropType.
--   Modify the MAX-ACCESS clause of h3cCBQoSIfApplyPolicyIfIndex,
--   h3cCBQoSIfApplyPolicyDirection, h3cCBQoSVlanApplyPolicyVlanid
--   and h3cCBQoSVlanApplyPolicyDirection.
--   Add h3cCBQoSApplyingStatusObjects to h3cCBQoSObjects.
--   Add h3cCBQoSApplyingStatus to h3cCBQoSApplyPolicyObjects.
--   Add h3cCBQoSNotifications to h3cCBQoSObjects.
--   Add h3cCBQoSNotificationsPrefix to h3cCBQoSNotifications.
--   Add h3cCBQoSIfPolicyChanged and h3cCBQoSVlanPolicyChanged
--   to h3cCBQoSNotificationsPrefix.
--   Add remark-local-pre-pass and remark-drop-pre-pass to CarAction.
--   Delete the default value of h3cCBQoSVlanApplyPolicyDirection and
--   h3cCBQoSGlobalApplyDirection.
-- V1.6 2008/05/28 modified by ChenWei
--   Add h3cCBQoSNestPolicyCfgInfoTable to h3cCBQoSBehaviorObjects.
--   Add h3cCBQoSNestPolicyApplyObjectTable to h3cCBQoSApplyPolicyIndexObjects.
-- V1.7 2011/01/25 modified by XuGuoFang/zhaixiaoxiang
--   Modify the range of h3cCBQoSQueueBandwidthValue.
--   Modify the range of h3cCBQoSQueueCbs.
--   Modify the description of h3cCBQoSQueueCbsRatio.
--   Modify the description of h3cCBQoSBehaviorIndexNext.
-- ==========================================================================
   0"The direction of policy apply on at interface."               u"Bandwidth Unit:
                 Absolute, Unit : Kbps(1)
                 Percent, Unit : %(2)
                "               "WRED type."               "Type of QoS apply object."               z"The actions taken when packets conforming or exceeding
                 the configured committed information rate(CIR)."               "Type of remark."               "Type of Match Rule. "               n"Queueing Type:
                 EF:(1)
                 AF:(2)
                 WFQ:(3)
                "                                                        �"This MIB contains objects to manage configuration and
                 monitor running state for Class Based QoS feature.

                    *********************************
                            MIB Tables
                    **********************************
                 This MIB consists of the following tables:
                    1 :  h3cCBQoSClassifierCfgInfoTable
                    2 :  h3cCBQoSMatchRuleCfgInfoTable
                    3 :  h3cCBQoSBehaviorCfgInfoTable
                    4 :  h3cCBQoSCarCfgInfoTable
                    5 :  h3cCBQoSAggregativeCarCfgInfoTable
                    6 :  h3cCBQoSGtsCfgInfoTable
                    7 :  h3cCBQoSRemarkCfgInfoTable
                    8 :  h3cCBQoSQueueCfgInfoTable
                    9 :  h3cCBQoSWredCfgInfoTable
                    10:  h3cCBQoSWredClassCfgInfoTable
                    11:  h3cCBQoSPolicyRouteCfgInfoTable
                    12:  h3cCBQoSNatCfgInfoTable
                    13:  h3cCBQoSFirewallCfgInfoTable
                    14:  h3cCBQoSSamplingCfgInfoTable
                    15:  h3cCBQoSAccountCfgInfoTable
                    16:  h3cCBQoSRedirectCfgInfoTable
                    17:  h3cCBQoSPriorityMapCfgInfoTable
                    18:  h3cCBQoSPolicyCfgInfoTable
                    19:  h3cCBQoSPolicyClassCfgInfoTable
                    20:  h3cCBQoSIfApplyPolicyTable
                    21:  h3cCBQoSAtmPvcApplyPolicyTable
                    22:  h3cCBQoSVlanApplyPolicyTable
                    23:  h3cCBQoSFrClassApplyPolicyTable
                    24:  h3cCBQoSFrPvcApplyPolicyTable
                    25:  h3cCBQoSIfCbqRunInfoTable
                    26:  h3cCBQoSIfClassMatchRunInfoTable
                    27:  h3cCBQoSIfCarRunInfoTable
                    28:  h3cCBQoSIfGtsRunInfoTable
                    29:  h3cCBQoSIfRemarkRunInfoTable
                    30:  h3cCBQoSIfQueueRunInfoTable
                    31:  h3cCBQoSIfWredRunInfoTable
                    32:  h3cCBQoSIfAccountingRunInfoTable
                    33:  h3cCBQoSAtmPvcCbqRunInfoTable
                    34:  h3cCBQoSAtmPvcClassMatchRunInfoTable
                    35:  h3cCBQoSAtmPvcCarRunInfoTable
                    36:  h3cCBQoSAtmPvcGtsRunInfoTable
                    37:  h3cCBQoSAtmPvcRemarkRunInfoTable
                    38:  h3cCBQoSAtmPvcQueueRunInfoTable
                    39:  h3cCBQoSAtmPvcWredRunInfoTable
                    40:  h3cCBQoSAtmPvcAccountingRunInfoTable
                    41:  h3cCBQoSFrPvcCbqRunInfoTable
                    42:  h3cCBQoSFrPvcClassMatchRunInfoTable
                    43:  h3cCBQoSFrPvcCarRunInfoTable
                    44:  h3cCBQoSFrPvcGtsRunInfoTable
                    45:  h3cCBQoSFrPvcRemarkRunInfoTable
                    46:  h3cCBQoSFrPvcQueueRunInfoTable
                    47:  h3cCBQoSFrPvcWredRunInfoTable
                    48:  h3cCBQoSFrPvcAccountingRunInfoTable
                    49:  h3cCBQoSIfVlanClassMatchRunInfoTable
                    50:  h3cCBQoSIfVlanAccountingRunInfoTable
                    51:  h3cCBQoSMirrorCfgInfoTable
                    52:  h3cCBQoSGlobalApplyTable
                    53:  h3cCBQoSNestCfgInfoTable
                    54:  h3cCBQoSApplyObjectTable
                    55:  h3cCBQoSIntApplyObjectTable
                    56:  h3cCBQoSVlanApplyObjectTable
                    57:  h3cCBQoSPvcApplyObjectTable
                    58:  h3cCBQoSCbqRunInfoTable
                    59:  h3cCBQoSClassMatchRunInfoTable
                    60:  h3cCBQoSCarRunInfoTable
                    61:  h3cCBQoSGtsRunInfoTable
                    62:  h3cCBQoSRemarkRunInfoTable
                    63:  h3cCBQoSQueueRunInfoTable
                    64:  h3cCBQoSWredRunInfoTable
                    65:  h3cCBQoSAccountingRunInfoTable
                    66:  h3cCBQoSApplyingStatusObjects
                    67:  h3cCBQoSNotifications
            " �"Platform Team Hangzhou H3C Tech. Co., Ltd.
                Hai-Dian District Beijing P.R. China
                http://www.h3c.com
                Zip:100085
                "       --July 30, 2005 at 00:00 GMT
               �"This object contains an appropriate value to be used for
                 h3cCBQoSClassifierIndex when creating rows in the
                 h3cCBQoSClassifierCfgInfoTable. Begin with 22.
                "                       :"A table of Traffic Classifier configuration information."                       5"Traffic Classifier Configuration Information Entry."                       ,"Index of Traffic Classifier. Begin with 0."                       "Name of Traffic Classifier."                       3"The counter of match rules of Traffic classifier."                       �"Operator of the match rules of traffic classifier.
                 Software QoS supports and, or.
                 Hardware QoS supports and.
                "                       �"Configuration layer of traffic classifier.
                 Only hardware QoS support it.
                 1(unavailable) is returned only when getting value from software QoS.
                 1(unavailable) can't be set.
                "                       "The type of classifier."                      e"This object contains an appropriate value to be used for
                 h3cCBQoSMatchRuleIndex when creating rows in the
                 h3cCBQoSMatchRuleCfgInfoTable. Begin with 0.
                 If the value of this node is 65535,
                 it indicates creating a row in h3cCBQoSMatchRuleCfgInfoTable is not permitted.
                "                       "RowStatus."                       2"A table of Match Rule configuration information."                       -"Match Rule Configuration Information Entry."                       "Index of Match Rule."                       �"Whether the if-match rule is a match or matchNot statement.
                 Software QoS supports match, matchNot.
                 Hardware QoS supports match.
                "                       "Type of Match Rule."                      h"Value of Match Rule.
                 SourceMAC: SIZE (12) HHHHHHHHHHHH
                     for example: 010102020303 means the match rule is
                                  'if-match source-mac 0101-0202-0303'
                 DestinationMAC: SIZE (12) HHHHHHHHHHHH
                     for example: 010102020303 means the match rule is
                                  'if-match destination-mac 0101-0202-0303'
                 Classifier: SIZE (1..31) classifier name
                 InboundInterface: SIZE (1..47) interface description
                 TopMostVlanID, VlanID:SIZE(1..39), up to 8 value can be input;
                    for example: 1#11#111#1111 means the match rule if
                                 'if-match vlanid 1 11 111 1111'
                 SourceIp: SIZE (12) HHHHHHHHHHHH
                   for example: 010102020303 means the match rule is
                                'if-match source-ip mac-address 0101-0202-0303'
                 other types: Set is not permitted. Zero-length String  will
                              be returned when getting.
                "                      -"Value of Match Rule.
                 IPv4 ACL: 2000~5999
                 IPv6 ACL: 2000~3999; 10000~42767
                 Software QoS: 2000~3999
                 Hardware Qos: 10000~42767
                 RtpPort: start-port: 2000~65535
                 IpPrec: value: 0~7, up to 8 value can be input. The bit set to
                         1 of the last 8 bits of h3cCBQoSMatchRuleIntValue1 is
                         used to indicate the value 0~7.
                 for example: 0x53(Binary format is 01010011)
                              means the match rule is 'if-match ip-prec 0 1 4 6'
                 Dscp: value:0~63,up to 8 value can be input.
                       The bit set to 1 of h3cCBQoSMatchRuleIntValue1 is used
                       to indicate the value 32~63.
                       The bit set to 1 of h3cCBQoSMatchRuleIntValue2 is used to
                       indicate the value 0~31.
                 for example: 0x80000003 means the match rule is 'if-match
                              dscp 32 33 63'
                 Vlan8021p: value:0~7, up to 8 value can be input.  The bit set
                            to 1 of the last 8 bits of h3cCBQoSMatchRuleIntValue1
                            is used to indicate the value 0~7.
                 for example: 0x53(Binary format is 01010011) means the
                              match rule is 'if-match customer-dot1p 0 1 4 6'
                 MplsExp: value:0~7, up to 8 value can be input.  The bit set to 1
                          of the last 8 bits of h3cCBQoSMatchRuleIntValue1 is used
                          to indicate the 8 value 0~7.
                 for example: 0x53(Binary format is 01010011) means the
                              match rule is 'if-match mpls 0 1 4 6'
                 SourceIp: 1~4095
                 QosLocalID: 1~4095
                 AtmClp: 0~1
                 FrDe: 0~1
                 LocalPrecedence: 0~7, up to 8 value can be input.  The bit set to
                                  1 of the last 8 bits of h3cCBQoSMatchRuleIntValue1
                                  is used to indicate the value 0~7.
                 for example: 0x53(Binary format is 01010011) means the match
                              rule is 'if-match localprecedence 0 1 4 6'
                 DropPriority: 0~2, up to 3 value can be input.  The bit set to 1
                               of the last 3 bits of h3cCBQoSMatchRuleIntValue1 is
                               used to indicate the value 0~2.
                 ServiceDot1p: 0~7, up to 8 value can be input.
                               The bit set to 1 of the last 8 bits of
                               h3cCBQoSMatchRuleIntValue1 is used to indicate
                               the value 0~7.
                 for example: 0x53(Binary format is 01010011) means the match
                              rule is 'if-match service-dot1p 0 1 4 6'
                 other types: Set is not permitted.  0xffffffff will be returned
                              when getting.
                "                      *"Value of Match Rule.
                 RtpPort(3): end-port: 2000~65535
                 Dscp(6): value:0~63,up to 8 value can be input.
                    The bit set to 1 of h3cCBQoSMatchRuleIntValue1 is used to indicate the value 32~63.
                    The bit set to 1 of h3cCBQoSMatchRuleIntValue2 is used to indicate the value 0~31.
                    for example: 0x80000003 means the match rule is 'if-match dscp 0 1 31'
                 other types: Set is not permitted.  0xffffffff will be returned when getting.
                "                      "A value that represents a type of Internet address.
                  unknown(0)  An unknown address type. This value MUST
                    be used if the value of the corresponding
                    InetAddress object is a zero-length string.
                    It may also be used to indicate an IP address
                    which is not in one of the formats defined below.

                 ipv4(1)     An IPv4 address as defined by the
                        InetAddressIPv4 textual convention.

                 ipv6(2)     A global IPv6 address as defined by the
                        InetAddressIPv6 textual convention.

                 ipv4z(3)    A non-global IPv4 address including a zone
                        index as defined by the InetAddressIPv4z textual convention.

                 ipv6z(4)    A non-global IPv6 address including a zone
                        index as defined by the InetAddressIPv6z textual convention.

                 dns(16)     A DNS domain name as defined by the
                        InetAddressDNS textual convention.

                 Value of match rule.
                 SourceIp support this node.
                 other types: Set is not permitted.  Unknown will be returned when getting.
                "                       �"Denotes a generic Internet address.
                 SourceIP support this node.
                 other types: Set is not permitted.  NULL will be returned when getting.
                "                       "RowStatus."                           �"This object contains an appropriate value to be used for
                 h3cCBQoSBehaviorIndex when creating rows in the
                 h3cCBQoSBehaviorCfgInfoTable."                       8"A table of Traffic Behavior configuration information."                       3"Traffic Behavior Configuration Information Entry."                       "Index of Traffic Behavior."                       "Name of Traffic Behavior."                       "Type of behavior."                       "RowStatus."                       3"A table of CAR feature configuration information."                       &"CAR Configuration Information Entry."                       )"Committed Information Rate. Unit: kbps."                       #"Committed Burst Size. Unit: byte."                       �"Excess Burst Size. Unit: byte.
                 Only software QoS support this node.
                 4294967295 is returned only when getting value from hardware QoS.
                 4294967295 can't be set."                       �"Peak Information Rate. Unit: kbps.
                 Only hardware QoS support this node.
                 4294967295 is returned only when getting value from software QoS.
                 4294967295 can't be set."                       �"Peak Burst Size. Unit: byte.
                 Only hardware QoS support this node.
                 4294967295 is returned only when getting value from software QoS.
                 4294967295 can't be set."                       �"Green Action
                 Hardware QoS : pass, discard, remark.
                 Software QoS : pass, discard, remark IP Precedence, remark DSCP, remark MPLS EXP.
                "                      �"The value is to remark When green action is remarking.
                 For remarking DSCP, the range is 0~63;
                 For remarking IP Precedence and MPLS EXP, the range is 0~7;
                 Only software QoS support this node.
                 255 is returned only when getting value from hardware QoS or when action being pass,discard of software QoS.
                 255 can't be set.
                "                       �"Yellow Action:
                 Only hardware QoS support this node.  Hardware QoS support pass, discard, remark.
                 invalid is returned only when getting value from software QoS.
                 invalid can't be set.
                "                      �"The value is to remark When red action is remarking.
                 For remarking DSCP, the range is 0~63;
                 For remarking IP Precedence and MPLS EXP, the range is 0~7;
                 Only software QoS support this node.
                 255 is returned only when getting value from hardware QoS or when action being pass, discard of software QoS.
                 255 can't be set."                       �"Red Action:
                 Hardware QoS : pass, discard, remark.
                 Software QoS : pass, discard, remark IP Precedence, remark DSCP, remark MPLS EXP.
                "                      �"The value is to remark When red action is remarking.
                 For remarking DSCP, the range is 0~63;
                 For remarking IP Precedence and MPLS EXP, the range is 0~7;
                 Only software QoS support this node.
                 255 is returned only when getting value from hardware QoS or when action being pass, discard of software QoS.
                 255 can't be set."                       "Type of priority map."                       "RowStatus."                      "A table of aggregative CAR applied CBQ feature configuration information.
                 Aggregative CAR is managed by A3COM-HUAWEI-IFQOS2-MIB.  So, you can use A3COM-HUAWEI-IFQOS2-MIB
                 to get some details information about aggregative CAR.
                "                       F"Aggregative CAR feature applied CBQ configuration information entry."                       �"Index of aggregative CAR.
                 It is equal to h3cIfQoSAggregativeCarIndex at A3COM-HUAWEI-IFQOS2-MIB.
                "                       �"Name of aggregative CAR.
                 It is equal to h3cIfQoSAggregativeCarName at A3COM-HUAWEI-IFQOS2-MIB.
                "                       "RowStatus."                       3"A table of GTS feature configuration information."                       &"GTS Configuration Information Entry."                       ("Committed Information Rate. Unit: kbps"                       P"Committed Burst Size. Unit: byte
                 default: max(cir*1/2,15000)"                       "Excess Burst Size. Unit: byte"                       "The length of GTS buffer."                       "RowStatus."                       9"A table of Remarking feature configuration information."                       ,"Remarking Configuration Information Entry."                       "Remark type."                      �"Value to remark:
                 for IpPrecedence: 0~7
                 for Dscp: 0~63
                 for MplsExp: 0~7
                 for Vlan8021p: 0~7
                 for AtmClp: 0~1
                 for FrDe: 0~1
                 for VlanID: 1~4094
                 for QosLocalID: 1~4095
                 for DropPrecedence: 0~2
                 for LocalPrecedence: 0~7
                 for TopMostVlanID: 1~4094
                "                       "RowStatus"                       5"A table of queue feature configuration information."                       ("Queue Configuration Information Entry."                       \"Queueing Type:
                 EF:(1)
                 AF:(2)
                 WFQ:(3)"                       �"The drop type of queue.  Only valid for AF and WFQ queue.
                 typeUnavailable is returned only when getting value about EF queue.
                 typeUnavailable can't be set."                      "The length of QueueLength.  Only valid for tail-drop type
                 of AF and WFQ queue.
                 2147483647 is returned only when getting value about EF queue
                 or WRED type of AF and WFQ queue.
                 2147483647 can't be set."                      "Bandwidth Unit:
                 Absolute, Unit Kbps (1)
                 Percent, Unit % (2)
                 Only valid for EF and AF queue.
                 0 is returned only when getting value about WFQ queue.
                 0 can't be set.
                "                      ""Bandwidth value:
                 Absolute value: 8~10000000. Unit: Kbps
                 Percent value: 1~100.
                 Only valid for EF and AF queue.
                 2147483647 is returned only when getting value about WFQ queue.
                 2147483647 can't be set."                      &"Committed Burst Size.  Unit: byte.
                 Only valid for EF queue.
                 Default: If the value of 'h3cCBQoSQueueBandwidthValue * 25' is
                          between 1500 and 2000000, the default value of this
                          object is 'h3cCBQoSQueueBandwidthValue * 25';If the value of
                          'h3cCBQoSQueueBandwidthValue * 25' is larger than or equal to
                          2000000, the default value of this object is 2000000;
                          If the value of 'h3cCBQoSQueueBandwidthValue * 25' is
                          less than or equal to 1500, the default value of this object is 1500.
                 2147483647 is returned only when getting value about AF or WFQ queue.
                 2147483647 can't be set."                       �"Max number of hashed queues (a power of 2).
                 Only valid for WFQ.
                 'unavailable' is returned only when getting value about AF or EF queue.
                 'unavailable' can't be set."                      "Committed Burst Size Ratio.
                 CBS = CBS_Ratio * Bandwidth(k bps)
                 Only valid for EF queue.
                 2147483647 is returned only when getting value about AF or WFQ queue.
                 2147483647 can't be set.
                "                       "RowStatus."                       ,"A table of WRED configuration information."                       '"WRED Configuration Information Entry."                       "WRED type."                       2"Specify weight for calculating mean queue depth."                       ,"A table of WRED configuration information."                       -"WRED Class Configuration Information Entry."                       �"The class value.
                 For IP precedence based WRED, the class is IP precedence,
                 and range is 0~7.
                 For DSCP based WRED, the class is DSCP, and range is 0~63.
                "                       "The low limit of queue depth."                        "The high limit of queue depth."                       &"The discard probability denominator."                       6"A table of Policy Routing configuration information."                       2"Policy Routeing Configuration Information Entry."                       "Type of InetAddress."                       *"The next-hop ip address for redirection."                       �"Whether forward the packet according to the routing table
                 When the next-hop IP address for redirection is not valid.
                 Backup means forwarding. NoBackup means not forwarding.
                "                       "RowStatus."                       +"A table of Nat configuration information."                       &"Nat Configuration Information Entry."                       "The main ISP number."                       "The backup ISP number"                       "The service class."                       "RowStatus."                       0"A table of firewall configuration information."                       +"Firewall configuration information entry."                       "The firewall action "                       "RowStatus."                       0"A table of sampling configuration information."                       +"Sampling configuration information entry."                       "The sampling number."                       "RowStatus."                       /"A table of account configuration information."                       *"Account configuration information entry."                       "Account action."                       "RowStatus."                       0"A table of redirect configuration information."                       +"Redirect configuration information entry."                       "The type of redirect."                       �"ifIndex.
                 Only the value of h3cCBQoSRedirectType is interface,
                 can be set this node.
                "                      s"A value that represents a type of Internet address.
                 unknown(0)  An unknown address type. This value MUST
                     be used if the value of the corresponding
                     InetAddress object is a zero-length string.
                     It may also be used to indicate an IP address
                     which is not in one of the formats defined
                     below.

                  ipv4(1)     An IPv4 address as defined by the
                     InetAddressIPv4 textual convention.

                  ipv6(2)     A global IPv6 address as defined by the
                     InetAddressIPv6 textual convention.

                 ipv4z(3)    A non-global IPv4 address including a zone
                     index as defined by the InetAddressIPv4z
                     textual convention.

                  ipv6z(4)    A non-global IPv6 address including a zone
                     index as defined by the InetAddressIPv6z
                     textual convention.

                  dns(16)     A DNS domain name as defined by the
                     InetAddressDNS textual convention.
                 Now supports ipv4 and ipv6.
                 Only the value of h3cCBQoSRedirectType is next-hop,
                  can be set this node and h3cCBQoSRedirectIpAddress1 or h3cCBQoSRedirectIpAddress2.
                "                      $"IP Address.
                 If the value of h3cCBQoSRedirectType is not next-hop,
                 Zero-length String will be returned when getting.
                 If the value of h3cCBQoSRedirectIpAddressType is ipv6,
                 this node is set necessarily.
                "                      #"IP Address.
                 If the value of h3cCBQoSRedirectType is not next-hop,
                 Zero-length String will be returned when getting.
                 If the value of h3cCBQoSRedirectIpAddressType is ipv6,
                 this node is set optionally.
                "                       "RowStatus."                       �"IfIndex for ipv6 next hop .
                 If and only if the value of h3cCBQoSRedirectIpAddressType is ipv6
                 and h3cCBQoSRedirectIpAddress1 is set,
                 this node can be set.
                "                       �"IfIndex for ipv6 next hop .
                 If and only if the value of h3cCBQoSRedirectIpAddressType is ipv6
                 and h3cCBQoSRedirectIpAddress2 is set,
                 this node can be set.
                "                       4"A table of priority map configuration information."                       /"priority map configuration information entry."                       "Import type of map."                       "Export type of map."                       j"Index of map group.
                 Map group is managed by A3COM-HUAWEI-IFQOS2-MIB.
                "                       i"Name of map group.
                 Map group is managed by A3COM-HUAWEI-IFQOS2-MIB.
                "                       "Type of priority MAP."                       "RowStatus."                       3"A table of flow mirror configuration information."                       ."Flow mirror configuration information entry."                       "Type of flow mirror."                      `"IfIndex of destination interface.
                 Only the value of h3cCBQoSMirrorType is interface,
                 can be set this node.
                 For example: 1#11#111#1111 means the flow mirror
                 destination ifindex is 1,11,111 and 1111.
                 '#' is list separator for all IfIndex value.
                "                       �"Destination vlan of flow mirror,
                 Only the value of h3cCBQoSMirrorType is vlan,
                 can be set this node.
                "                       "RowStatus."                      5"Insert a service VLAN tag or customer VLAN tag into a packet.
                A VLAN tag contains the VLAN ID field and the 802.1p priority
                field.  Both the service VLAN ID and the customer VLAN ID can
                not be set at the same time.  One of them must be set.  The
                802.1p priority of the service VLAN tag and that of the
                customer VLAN tag can be set optionally.  However, both of
                them can not be set at the same time.  The new setting
                overwrites the previous one."                       "VLAN nesting table entry."                       �"VLAN ID of the service VLAN tag to be inserted.  If the
                customer VLAN tag has been configured, 65535 is returned
                for the service VLAN ID.  The service VLAN ID can not be
                set to 65535."                       �"802.1p priority value in the service VLAN tag to be inserted.
                If the 802.1p priority is not set, 65535 is returned.  The
                802.1p priority value can not be set to 65535."                       �"VLAN ID of the customer VLAN tag to be inserted.  If the
                service VLAN tag has been configured, 65535 is returned for
                the customer VLAN ID.  The customer VLAN ID can not be set
                to 65535."                       �"802.1p priority value in the customer VLAN tag to be inserted.
                If the 802.1p priority is not set, 65535 is returned.  The
                802.1p priority value can not be set to 65535."                       "RowStatus"                       1"This table is used for configuring nest policy."                       ""Nest policy configuration entry."                       "Name of the nested policy."                       "RowStatus"                           �"This object contains an appropriate value to be used for
                 h3cCBQoSPolicyIndex when creating rows in the
                 h3cCBQoSPolicyCfgInfoTable.
                 Begin with 1."                       2"A table of QoS policy configuration information."                       1"Traffic policy configuration information entry."                       "Index of Traffic Policy."                       "Name of Traffic Policy."                       *"The counter of policy classes of policy."                       �"Configuration mode of Traffic Policy.
                 Only hardware QoS support this node.
                 'unavailable' is returned only when getting value from software QoS.
                 'unavailable' can't be set."                       "Type of policy."                      �"This object contains an appropriate value to be used for
                 h3cCBQoSPolicyClassIndex when creating rows in the
                 h3cCBQoSPolicyClassCfgInfoTable.
                 Begin with 1.
                 If the value of this node is 65535,
                 it indicates creating a row in h3cCBQoSPolicyClassCfgInfoTable
                 is not permitted.
                "                       "RowStatus."                       F"A table of QoS Policy classifier-behavior configuration information."                       E"Traffic policy classifier-behavior configuration information entry."                       $"PolicyClass Index in a QoS policy."                       o"Index of classifier applied by a policy.
                 It should exist in h3cCBQoSClassifierCfgInfoTable."                       v"Name of classifier applied by a policy.
                 It is corresponding to h3cCBQoSPolicyClassClassifierIndex."                       k"Index of Behavior applied by a policy.
                 It should exist in h3cCBQoSBehaviorCfgInfoTable."                       r"Name of Behavior applied by a policy.
                 It is corresponding to h3cCBQoSPolicyClassBehaviorIndex."                       �"The Precedence of the class in the policy.
                 Only hardware QoS support this node.
                 2147483647 is returned only when getting value from software QoS.
                 2147483647 can't be set."                       "RowStatus."                       �"Set the mode of the classifier-behavior association.  The
                default mode modeNo is a normal mode.  modeDot1q indicates
                that the association is used for VLAN mapping."                       �"A QoS policy contains multiple classifier-behavior
                associations.  A node indicates the configuration order of
                the corresponding classifier-behavior association."                           !"A table of QoS policy instance."                       >"Policy applied on interface Configuration Information Entry."                       $"Interface Index, equal to ifIndex."                       b"Policy direction:
                 inbound (1)
                 outbound (2)
                "                       "Name of Traffic Policy."                       �"If the value of it is specified 'true',Enable dynamic qos policy.
                 'unavailable' is returned if device don't support dynamic QoS.
                 'unavailable' can't be set.
                "                       "RowStatus."                       !"A table of QoS policy instance."                       <"Policy applied on ATM PVC Configuration Information Entry."                       ("ATM Interface Index, equal to ifIndex."                       "VPI value of ATM Interface."                       "VCI value of ATM Interface."                       P"Policy direction:
                 inbound (1)
                 outbound (2)"                       "Name of Traffic Policy."                       "RowStatus"                       !"A table of QoS policy instance."                       B"Policy applied on Ethernet VLAN Configuration Information Entry."                       "Vlan of Ethernet Interface."                       P"Policy direction:
                 inbound (1)
                 outbound (2)"                       "Name of Traffic Policy."                       "The priority of policy."                       "RowStatus."                       !"A table of QoS policy instance."                       ="Policy applied on FR class Configuration Information Entry."                       "The name of FR class."                       P"Policy direction:
                 inbound (1)
                 outbound (2)"                       "Name of Traffic Policy."                       "RowStatus."                       !"A table of QoS policy instance."                       ;"Policy applied on FR PVC Configuration Information Entry."                       '"Fr Interface Index, equal to ifIndex."                       "Fr DLCI number."                       P"Policy direction:
                 inbound (1)
                 outbound (2)"                       "Name of Traffic Policy."                       "RowStatus."                       �"A table of QoS policies applied globally.  A QoS policy
                applied globally takes effect on all ports of the device."                       "A global policy entry."                       P"Policy direction:
                 inbound (1)
                 outbound (2)"                       "Name of a global policy."                       "RowStatus."                               �"A table of interface CBQ Running statistics.
                 When policy using queue behavior is applied on
                 interface the interface will using Class Based Queuing."                       !"Interface CBQ statistics entry."                       "Packet number of CBQ queue"                       ="The number of discarded packets which couldn't be enqueued."                       "Packet number of EF queue."                       "Packet number of AF queue."                       "Packet number of BE queue."                       '"The Packet number of Active BE Queue."                       +"The max Packet number of Active BE Queue."                       &"The total Packet number of BE Queue."                       *"The Allocated Packet number of AF Queue."                       u"A table of Running statistics for matching a classifier
                 in a QoS policy applied on the interface."                       5"Classifier's matching statistics information entry."                       5"Number of packets matching a class in a QoS policy."                       j"Number of bytes matching a class in a QoS policy.
                 Only software QoS support this node."                       6"Average rate matching a class of the last 5 minutes."                       c"A table of Running statistics for CAR
                 in a QoS policy applied on the interface."                       #"CAR statistics information entry."                       "Number of green packets."                       "Number of green bytes."                       "Number of red packets."                       "Number of red bytes."                       "Number of yellow packets."                       "Number of yellow bytes."                       c"A table of Running statistics for GTS
                 in a QoS policy applied on the interface."                       "GTS statistics entry."                       ""Number of packets passed by GTS."                        "Number of bytes passed by GTS."                       %"Number of packets discarded by GTS."                       #"Number of bytes discarded by GTS."                       #"Number of packets delayed by GTS."                       !"Number of bytes delayed by GTS."                       "Packet number of GTS queue."                       i"A table of Running statistics for remarking
                 in a QoS policy applied on the interface."                       "Remarking statistics entry."                       "Number of packets remarked."                       e"A table of Running statistics for queue
                 in a QoS policy applied on the interface."                       "Queue statistics entry."                       '"Number of packets matched to enqueue."                       %"Number of bytes matched to enqueue."                       "Number of packets enqueued."                       "Number of bytes enqueued."                       >"Number of packets discarded when enqueued by discard method."                       <"Number of bytes discarded when enqueued by discard method."                       d"A table of Running statistics for WRED
                 in a QoS policy applied on the interface."                       "WRED statistics entry."                       2"Number of packets that random-discarded by WRED."                       0"Number of packets that tail-discarded by WRED."                       g"A table of Running statistics for account
                 in a QoS policy applied on the interface."                       "Account statistics entry."                       "Number of packets."                       "Number of bytes."                           �"A table of ATM PVC CBQ Running statistics.
                 When policy using queue behavior is applied on
                 ATM PVC.  ATM PVC will using Class Based Queuing."                       "FR PVC CBQ statistics entry."                       "Packet number of CBQ queue."                       ="The number of discarded packets which couldn't be enqueued."                       "Packet number of EF queue."                       "Packet number of AF queue."                       "Packet number of BE queue."                       '"The packet number of Active Be Queue."                       +"The max packet number of Active Be Queue."                       &"The total packet number of Be Queue."                       *"The Allocated packet number of AF Queue."                       o"A table of Running statistics for matching a classifier
                 in a QoS policy applied on ATM PVC."                       '"Classifier matching statistics entry."                       5"Number of packets matching a class in a QoS policy."                       3"Number of bytes matching a class in a QoS policy."                       6"Average rate matching a class in the last 5 minutes."                       ]"A table of Running statistics for CAR
                 in a QoS policy applied on ATM PVC."                       "CAR statistics entry."                       2"Number of packets that conforming specified CIR."                       0"Number of bytes that conforming specified CIR."                       !"Number of packets exceeded CIR."                       "Number of bytes exceeded CIR."                       ]"A table of Running statistics for GTS
                 in a QoS policy applied on ATM PVC."                       "GTS statistics entry."                       ""Number of packets passed by GTS."                        "Number of bytes passed by GTS."                       %"Number of packets discarded by GTS."                       #"Number of bytes discarded by GTS."                       #"Number of packets delayed by GTS."                       !"Number of bytes delayed by GTS."                       "packet number of GTS queue."                       c"A table of Running statistics for remarking
                 in a QoS policy applied on ATM PVC."                       "Remarking statistics entry."                       "Number of packets remarked."                       _"A table of Running statistics for queue
                 in a QoS policy applied on ATM PVC."                       "Queue statistics entry."                       '"Number of packets matched to enqueue."                       %"Number of bytes matched to enqueue."                       "Number of packets enqueued."                       "Number of bytes enqueued."                       <"Number of packets discard when enqueued by discard method."                       :"Number of bytes discard when enqueued by discard method."                       ^"A table of Running statistics for WRED
                 in a QoS policy applied on ATM PVC."                       "WRED statistics entry."                       /"Number of packets randomly discarded by WRED."                       +"Number of packets tail-discarded by WRED."                       e"A table of Running statistics for account
                 in a QoS policy applied on the ATM PVC."                       "Account statistics entry."                       "Number of packets."                       "Number of bytes."                           �"A table of FR PVC CBQ Running statistics.
                 When policy using queue behavior is applied on FR PVC
                 will using Class Based Queuing."                       "FR PVC CBQ statistics entry."                       "Packet number of CBQ queue."                       >"The number of discarded packets which could not be enqueued."                       "Packet number of EF queue."                       "Packet number of AF queue."                       "Packet number of BE queue."                       '"The packet number of Active Be Queue."                       +"The max packet number of Active Be Queue."                       &"The total packet number of Be Queue."                       *"The Allocated packet number of AF Queue."                       n"A table of Running statistics for matching a classifier
                 in a QoS policy applied on FR PVC."                       '"Classifier matching statistics entry."                       5"Number of packets matching a class in a QoS policy."                       3"Number of bytes matching a class in a QoS policy."                       6"Average rate matching a class of the last 5 minutes."                       \"A table of Running statistics for CAR
                 in a QoS policy applied on FR PVC."                       "CAR statistics entry."                        "Number of packets conform CIR."                       "Number of bytes conform CIR."                       "Number of packets exceed CIR."                       "Number of bytes exceed CIR."                       \"A table of Running statistics for GTS
                 in a QoS policy applied on FR PVC."                       "GTS statistics entry."                       ""Number of packets passed by GTS."                        "Number of bytes passed by GTS."                       %"Number of packets discarded by GTS."                       #"Number of bytes discarded by GTS."                       #"Number of packets delayed by GTS."                       !"Number of bytes delayed by GTS."                       "Packet number of GTS queue."                       b"A table of Running statistics for remarking
                 in a QoS policy applied on FR PVC."                       "Remarking statistics entry."                       "Number of packets remarked."                       ]"A table of Running statistics for queue
                in a QoS policy applied on FR PVC."                       "Queue statistics entry."                       '"Number of packets matched to enqueue."                       &"Number of bytes matched to en-queue."                       "Number of packets en-queued."                       "Number of bytes enqueued."                       >"Number of packets discarded when enqueued by discard method."                       <"Number of bytes discarded when enqueued by discard method."                       o"A table of Running statistics for WRED
                 in a QoS policy applied on FR PVC.
                "                       "WRED statistics entry."                       /"Number of packets randomly discarded by WRED."                       +"Number of packets tail-discarded by WRED."                       g"A table of Running statistics for account
                 in a QoS policy applied on the interface."                       "Account statistics entry."                       "Number of packets."                       "Number of bytes."                           �"A table of Running statistics for matching a classifier
                 in a QoS policy applied on Ethernet VLAN.
                "                       '"Classifier matching statistics entry."                       5"Number of packets matching a class in a QoS policy."                       g"A table of Running statistics for account
                 in a QoS policy applied on the interface."                       "Account statistics entry."                       "Number of packets."                       "Number of bytes."                          !"A table of QoS apply object index.  It provides the function
                 of querying the information of QoS apply object, which
                 consists of interface type, interface index, ATM PVC, FR DLCI
                 and nesting policy index, using QoS apply object index."                       "QoS apply object index entry."                       "QoS apply object index.  It represents the unique identifier
                 of QoS policy applied position.  It generates when QoS policy
                 is applied considering ifIndex, VLAN ID, ATM PVC, FR DLCI and
                 policy nesting."                       "Apply object type."                       $"The direction of QoS apply object."                       �"Its value depends on h3cCBQoSApplyObjectType.
                 It represents VLAN ID When h3cCBQoSApplyObjectType
                 is vlan(2), otherwise it represents ifIndex."                      �"Its value depends on h3cCBQoSApplyObjectType.
                 It represents the value of VPI/VCI, of which high 16-bits
                 is VPI and low 16-bits is VCI, when h3cCBQoSApplyObjectType
                 is atmPvc(3).
                 It represents the value of data link connection identifier
                 in FR network, when h3cCBQoSApplyObjectType is frDlci(4).
                 Otherwise the value is '0xFFFFFFFF'."                       �"The value represents level-1 sub class index when the QoS
                 apply object is level-2 or level-3 nesting policy.  Otherwise
                 the value is '0xFFFFFFFF'."                       �"The value represents level-2 sub class index when the QoS
                 apply object is level-3 nesting policy.  Otherwise
                 the value is '0xFFFFFFFF'."                       �"A table used for querying the QoS apply object indexes by
                 interface index.  It is suitable for querying QoS apply
                 object indexes for policies applied on Ethernet ports, ATM
                 ports and FR ports."                       5"QoS apply object on interface index querying entry."                       "Interface index."                       "QoS apply object index."                      r"A table used for querying the QoS apply object indexes by VLAN
                 ID and policy direction.  It is suitable for querying QoS
                 apply object indexes for policies applied on VLANs.  If the
                 value of h3cCBQoSVlanApplyObjectVlanID is 0, it means querying
                 Qos apply object index for policy applied on global."                       "VLAN apply object entry."                       
"VLAN ID."                       "QoS apply object index."                      "A table used for querying the QoS apply object indexes by ATM
                 PVC or FR DLCI, ifIndex and policy direction. It is suitable
                 for querying QoS apply object indexes for policies applied on
                 ATM PVCs or FR DLCIs."                       K"QoS apply object querying entry for ATM PVC or FR
                 DLCI."                       "Interface index."                       �"If the QoS apply object queried is a ATM PVC, its input value
                 represents a VPI/VCI.  If the QoS apply object queried is a FR
                 DLCI, its input value represents a value of FR DLCI."                       "QoS apply object index."                       �"A table used for querying the nested QoS policy apply object indexes.
                 It is suitable for querying nested QoS apply object indexes for policies
                 applied on ifIndex, VLAN ID, ATM PVC or FR DLCI."                       ,"QoS apply object on policy querying entry."                       %"Policyclass index in father policy."                       +"QoS apply object index of the son policy."                           �"A table of CBQ running statistics.
                 When policy using queue behavior is applied on QoS apply
                 object, the QoS apply object will use Class Based Queuing."                       +"CBQ statistics entry of QoS apply object."                       !"Number of packets in CBQ queue."                       3"Number of discarded packets which couldn't queue."                        "Number of packets in EF queue."                        "Number of packets in AF queue."                        "Number of packets in BE Queue."                       "Number of Active BE Queues."                       %"The max number of Active BE Queues."                       "Number of total BE Queues."                        "Number of allocated AF Queues."                       b"A table of running statistics for matching a classifier on a
                 QoS apply object."                       5"Classifier's matching statistics information entry."                       5"Number of packets matching a class in a QoS policy."                       3"Number of bytes matching a class in a QoS policy."                       �"Average number of packets macthing the class forwarded
                 per second in the last interval.
                 Unit: pps."                       �"Average bits of packets matching the class forwarded
                 per second in the last interval.
                 Unit: bps."                       �"Average number of packets matching the class dropped
                 per second in the last interval.
                 Unit: pps."                       �"Average bits of packets matching the class dropped
                 per second in the last interval.
                 Unit: bps."                       L"Interval of collecting traffic statistics.
                 Unit: minute."                       &"Classifier-behavior applying status."                       >"A table of running statistics for CAR on a QoS apply object."                       #"CAR statistics information entry."                       "Number of green packets."                       "Number of green bytes."                       "Number of red packets."                       "Number of red bytes."                       "Number of yellow packets."                       "Number of yellow bytes."                       >"A table of running statistics for GTS on a QoS apply object."                       "GTS statistics entry."                       ""Number of packets passed by GTS."                        "Number of bytes passed by GTS."                       %"Number of packets discarded by GTS."                       #"Number of bytes discarded by GTS."                       #"Number of packets delayed by GTS."                       !"Number of bytes delayed by GTS."                       !"Number of packets in GTS queue."                       V"A table of running statistics for remarking on a QoS apply
                 object."                       "Remarking statistics entry."                       "Number of remarked packets."                       R"A table of running statistics for queue on a QoS apply
                 object."                       "Queue statistics entry."                       %"Number of packets matched to queue."                       #"Number of bytes matched to queue."                       "Number of packets queued."                       "Number of bytes queued."                       <"Number of packets discarded when queued by discard method."                       :"Number of bytes discarded when queued by discard method."                       ?"A table of running statistics for WRED on a QoS apply object."                       "WRED statistics entry."                       -"Number of packets random-discarded by WRED."                       +"Number of packets tail-discarded by WRED."                       T"A table of running statistics for account on a QoS apply
                 object."                       "Account statistics entry."                       3"Number of packets matching a class in QoS policy."                       1"Number of bytes matching a class in QoS policy."                           �"This object shows the status of the system when applying policy.
                It is forbidden to set or read in this MIB module except current
                table when the value is busy."                               u"This notification will be sent when the applying status
                of the policy on the interface is changed."                 p"This notification will be sent when the applying status
                of the policy on the VLAN is changed."                        