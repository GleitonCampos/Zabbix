�-- =========================================================================
-- Copyright (C) 2004 by  HUAWEI TECHNOLOGIES. All rights reserved
--
-- Description:This mib file is used for management of huawei Class Based
--             QoS information.
-- Reference:
-- Version: V1.8
-- History:
--      V1.0 tianli,2004.4.10,publish
--      V1.1 lizhiyong, 2004-9-14
--          modify the hyphens which is not allowed used in SMIv2
--      v1.2 changed by gaolong
--          replace chinese characters in this file with english characters
--          move MODULE-IDENTITY after IMPORTS CLAUSE
--          changed by yangjianjun
--          change description of hwCBQoSMatchRuleIntValue1 and hwCBQoSMatchRuleIntValue2
--          changed by wanghao
--          add an object hwCBQoSQueueCbsRatio
--      v1.3 changed by liguanmin,2004-12-23.
--          added two values in the node hwCBQoSMatchRuleType of the hwCBQoSMatchRuleCfgInfoTable.
--          this two values are typeMatchDe,typeMatchClp.
--      V1.4 2005-04-15 modify description of hwCBQoSMatchRuleStringValue by tangshun.
--      V1.5 2005-05-23 add hwCBQoSFrPvcClassAverageRate, hwCBQoSAtmPvcClassAverageRate,
--          and hwCBQoSIfClassAverageRate by dongjun.
--      V1.6 2005-08-11 add enum value 25 for MatchRuleType,
--          modify description of hwCBQoSMatchRuleType and hwCBQoSMatchRuleStringValue
--          by dongjun.
--          update file format by gaolong
--      V1.7 2006-05-18 modified by haochunbo
--          Add an enumeration unitRemainPercent for QueueBandwidthUnit.
--          Modify the description of hwCBQoSQueueBandwidthUnit and hwCBQoSQueueBandwidthValue.
--      V1.8 2007-05-23 modified by huguohua
--          Add LrCirUnit, hwCBQoSNestPolicyCfgInfoTable, hwCBQoSLrCfgInfoTable,
--              hwCBQoSIfLrRunInfoTable, hwCBQoSAtmPvcLrRunInfoTable, hwCBQoSFrPvcLrRunInfoTable
-- ==========================================================================
    "The Direction Policy apply on."              h"Bandwidth Unit:
            Absolute, Unit Kbps (1)
            Percent, Unit % (2), means the percentage of the reserved bandwidth besides the part
            configured for RTP queue.
            Remaining percent, Unit % (3), means the percentage of the reserved bandwidth besides
            the parts configured for EF and RTP queue.
            "               <"IpPrec Based (1)
            DSCP Based (2)
            "              -"The actions taken when packets conforming or exceeding the configured
            CIR:
                pass (1),
                discard (2),
                remark IP Precedence (3),
                remark DSCP(4),
                remark Mpls Exp(5),
                remark (6)
            "               �"typeIpPrec(1)
            typeDscp(2)
            typeMplsExp(3)
            typeVlan8021p(4)
            typeAtmClp(5)
            typeFrDe(6)
            "               "Type of Match Rule."               j"CIR Unit:
                Absolute, Unit bps (1)
                Percent, Unit % (2)
                "               ^"Queueing Type:
            EF: (1)
            AF: (2)
            WFQ: (3)
            "                                    '"The A3COM-HUAWEI-CBQOS-MIB contains objects to
                Manage configuration and Monitor running state
                for Class Based QoS feature.

                    *********************************
                        MIB Tables
                    **********************************
                This MIB consists of the following tables:
                     1 :  hwCBQoSClassifierCfgInfoTable
                     2 :  hwCBQoSMatchRuleCfgInfoTable
                     3 :  hwCBQoSBehaviorCfgInfoTable
                     4 :  hwCBQoSCarCfgInfoTable
                     5 :  hwCBQoSGtsCfgInfoTable
                     6 :  hwCBQoSRemarkCfgInfoTable
                     7 :  hwCBQoSQueueCfgInfoTable
                     8 :  hwCBQoSWredCfgInfoTable
                     9 :  hwCBQoSWredClassCfgInfoTable
                     10:  hwCBQoSPolicyRouteCfgInfoTable
                     11:  hwCBQoSNatCfgInfoTable
                     12:  hwCBQoSFirewallCfgInfoTable
                     13:  hwCBQoSSamplingCfgInfoTable
                     14:  hwCBQoSPolicyCfgInfoTable
                     15:  hwCBQoSPolicyClassCfgInfoTable
                     16:  hwCBQoSIfApplyPolicyTable
                     17:  hwCBQoSAtmPvcApplyPolicyTable
                     18:  hwCBQoSIfVlanApplyPolicyTable
                     19:  hwCBQoSFrClassApplyPolicyTable
                     20:  hwCBQoSFrPvcApplyPolicyTable
                     21:  hwCBQoSIfCbqRunInfoTable
                     22:  hwCBQoSIfClassMatchRunInfoTable
                     23:  hwCBQoSIfCarRunInfoTable
                     24:  hwCBQoSIfGtsRunInfoTable
                     25:  hwCBQoSIfRemarkRunInfoTable
                     26:  hwCBQoSIfQueueRunInfoTable
                     27:  hwCBQoSIfWredRunInfoTable
                     28:  hwCBQoSAtmPvcCbqRunInfoTable
                     29:  hwCBQoSAtmPvcClassMatchRunInfoTable
                     30:  hwCBQoSAtmPvcCarRunInfoTable
                     31:  hwCBQoSAtmPvcGtsRunInfoTable
                     32:  hwCBQoSAtmPvcRemarkRunInfoTable
                     33:  hwCBQoSAtmPvcQueueRunInfoTable
                     34:  hwCBQoSAtmPvcWredRunInfoTable
                     35:  hwCBQoSFrPvcCbqRunInfoTable
                     36:  hwCBQoSFrPvcClassMatchRunInfoTable
                     37:  hwCBQoSFrPvcCarRunInfoTable
                     38:  hwCBQoSFrPvcGtsRunInfoTable
                     39:  hwCBQoSFrPvcRemarkRunInfoTable
                     40:  hwCBQoSFrPvcQueueRunInfoTable
                     41:  hwCBQoSFrPvcWredRunInfoTable
                     42:  hwCBQoSIfVlanClassMatchRunInfoTable

                Software QoS supports the following tables:
                     1 :  hwCBQoSClassifierCfgInfoTable
                     2 :  hwCBQoSMatchRuleCfgInfoTable
                     3 :  hwCBQoSBehaviorCfgInfoTable
                     4 :  hwCBQoSCarCfgInfoTable
                     5 :  hwCBQoSGtsCfgInfoTable
                     6 :  hwCBQoSRemarkCfgInfoTable
                     7 :  hwCBQoSQueueCfgInfoTable
                     8 :  hwCBQoSWredCfgInfoTable
                     9 :  hwCBQoSWredClassCfgInfoTable
                     14:  hwCBQoSPolicyCfgInfoTable
                     15:  hwCBQoSPolicyClassCfgInfoTable
                     16:  hwCBQoSIfApplyPolicyTable
                     17:  hwCBQoSAtmPvcApplyPolicyTable
                     19:  hwCBQoSFrClassApplyPolicyTable
                     20:  hwCBQoSFrPvcApplyPolicyTable
                     21:  hwCBQoSIfCbqRunInfoTable
                     22:  hwCBQoSIfClassMatchRunInfoTable
                     23:  hwCBQoSIfCarRunInfoTable
                     24:  hwCBQoSIfGtsRunInfoTable
                     25:  hwCBQoSIfRemarkRunInfoTable
                     26:  hwCBQoSIfQueueRunInfoTable
                     27:  hwCBQoSIfWredRunInfoTable
                     28:  hwCBQoSAtmPvcCbqRunInfoTable
                     29:  hwCBQoSAtmPvcClassMatchRunInfoTable
                     30:  hwCBQoSAtmPvcCarRunInfoTable
                     31:  hwCBQoSAtmPvcGtsRunInfoTable
                     32:  hwCBQoSAtmPvcRemarkRunInfoTable
                     33:  hwCBQoSAtmPvcQueueRunInfoTable
                     34:  hwCBQoSAtmPvcWredRunInfoTable
                     35:  hwCBQoSFrPvcCbqRunInfoTable
                     36:  hwCBQoSFrPvcClassMatchRunInfoTable
                     37:  hwCBQoSFrPvcCarRunInfoTable
                     38:  hwCBQoSFrPvcGtsRunInfoTable
                     39:  hwCBQoSFrPvcRemarkRunInfoTable
                     40:  hwCBQoSFrPvcQueueRunInfoTable
                     41:  hwCBQoSFrPvcWredRunInfoTable

                Hardware QoS supports the following tables:
                     1 :  hwCBQoSClassifierCfgInfoTable
                     2 :  hwCBQoSMatchRuleCfgInfoTable
                     3 :  hwCBQoSBehaviorCfgInfoTable
                     4 :  hwCBQoSCarCfgInfoTable
                     6 :  hwCBQoSRemarkCfgInfoTable
                     10:  hwCBQoSPolicyRouteCfgInfoTable
                     11:  hwCBQoSNatCfgInfoTable
                     12:  hwCBQoSFirewallCfgInfoTable
                     13:  hwCBQoSSamplingCfgInfoTable
                     14:  hwCBQoSPolicyCfgInfoTable
                     15:  hwCBQoSPolicyClassCfgInfoTable
                     16:  hwCBQoSIfApplyPolicyTable
                     18:  hwCBQoSIfVlanApplyPolicyTable
                     22:  hwCBQoSIfClassMatchRunInfoTable
                     42:  hwCBQoSIfVlanClassMatchRunInfoTable
                "3" R&D BeiJing, Huawei Technologies co.,Ltd.
                Huawei Bld.,NO.3 Xinxi Rd.,
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                Zip:100085
                Http://www.huawei.com
                E-mail:support@huawei.com "        -- April 10, 2004 at 00:00 GMT
               �"This object contains an appropriate value to be used for
                 hwCBQoSClassifierIndex when creating rows in the
                 hwCBQoSClassifierCfgInfoTable. Begin with 0."                       :"A table of Traffic Classifier configuration information."                       5"Traffic Classifier Configuration Information Entry."                       ,"Index of Traffic Classifier. Begin with 0."                       "Name of Traffic Classifier."                       �"The count of match rules of Traffic classifier. It can be used
                for hwCBQoSMatchRuleIndex when creating rows in the
                hwCBQoSMatchRuleCfgInfoTable. Begin with 0."                       �"Operator of the match rules of traffic classifier.
                Software QoS support and,or.
                Hardware QoS support and."                       �"Configuration layer of traffic classifier.
                Only hardware QoS support it.
                -1(unavailable) is returned only when getting value from software QoS.
                -1(unavailable) can't be set."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       2"A table of Match Rule configuration information."                       -"Match Rule Configuration Information Entry."                       "Index of Match Rule."                       �"whether the if-match rule is a Match or Match-Not statement.
                Software QoS support match,match-Not.
                Hardware QoS support match."                      !"Type of Match Rule.
                typeAny(1)
                typeAcl(2),
                typeRtpPort(3),
                typeProtocol(4),
                typeIpPrec(5),
                typeDscp(6),
                typeVlan8021p(7),
                typeMplsExp(8),
                typeSourceMac(9),
                typeDestinationMac(10),
                typeClassifier(11),
                typeInboundInterface(12),
                typeMacGroup(13),
                typeMatchDe(16),  /* the match rule is FR DE   */
                typeMatchClp(17),  /* the match rule is ATM CLP */
                typeOutboundInterface(25)
                Software QoS supports any type except typeMacGroup.
                Hardware QoS supports typeAcl,typeDscp,typeMacGroup.
                "                      �"Value of Match Rule.
                 SourceMAC(9): SIZE (12) HHHHHHHHHHHH  for example: 010102020303 means
                               the match rule is 'if-match source-mac 0101-0202-0303'
                 DestinationMAC(10): SIZE (12) HHHHHHHHHHHH for example: 010102020303 means
                               the match rule is 'if-match destination-mac 0101-0202-0303'
                 Classifier(11): SIZE (1..31)
                 InboundInterface(12): SIZE (1..47)
                 typeOutboundInterface(25): SIZE (1..47)
                 other type: Set is not permitted. Zero-length String  will be
                             returned when getting.
                "                      "Value of Match Rule.
                Acl(2):
                      Software QoS: 2000~3999  Hardware Qos: 10000~42767
                RtpPort(3): start-port: 2000~65535
                Protocol(4): 1(Ip)
                IpPrec(5):  value:0~7, up to 8 value can be input. The bit set
                            to 1 of the last 8 bits of hwCBQoSMatchRuleIntValue1
                            is used to indicate the value 0~7.
                            For example: 0x00000053(Binary format is 01010011)
                                         means the match rule is 'if-match ip-prec 0 1 4 6'
                Dscp(6):     value:0~63,up to 8 value can be input.
                             The bit set to 1 of hwCBQoSMatchRuleIntValue1 is
                             used to indicate the value 32~63.
                             The bit set to 1 of hwCBQoSMatchRuleIntValue2 is
                             used to indicate the value 0~31.
                             For example: 0x80000003 means the match rule is
                                          'if-match dscp 32 33 63'
                Vlan8021p(7): value:0~7, up to 8 value can be input. The bit
                              set to 1 of the last 8 bits of hwCBQoSMatchRuleIntValue1
                              is used to indicate the 8 value 0~7.
                              For example: 0x53(Binary format is 01010011) means
                                           the match rule is 'if-match vlan 0 1 4 6'
                MplsExp(8): value:0~7, up to 8 value can be input. The bit set
                            to 1 of the last 8 bits of hwCBQoSMatchRuleIntValue1
                            is used to indicate the 8 value 0~7.
                            For example: 0x53(Binary format is 01010011) means
                            the match rule is 'if-match mpls 0 1 4 6'
                MacGroup(13): 1~63
                other type: Set is not permitted.  0xffffffff will be returned
                            when getting.
                "                      �"Value of Match Rule.
                 RtpPort(3): end-port: 2000~65535
                 Dscp(6):  value:0~63,up to 8 value can be input.
                           The bit set to 1 of hwCBQoSMatchRuleIntValue1 is used
                           to indicate the value 32~63.
                           The bit set to 1 of hwCBQoSMatchRuleIntValue2 is used
                           to indicate the value 0~31.
                           for example: 0x80000003 means the match rule is
                                        'if-match dscp 0 1 31'
                 other type: Set is not permitted.  0xffffffff will be returned
                             when getting.
                "                       g"RowStatus for Match Rule Table.
                Three actions are used: active, createAndGo, destroy"                           �"This object contains an appropriate value to be used for
                hwCBQoSBehaviorIndex when creating rows in the
                hwCBQoSBehaviorCfgInfoTable. Begin with 0."                       8"A table of Traffic Behavior configuration information."                       3"Traffic Behavior Configuration Information Entry."                       "Index of Traffic Behavior."                       "Name of Traffic Behavior."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       3"A table of CAR feature configuration information."                       &"CAR Configuration Information Entry."                       "Committed Information Rate. Unit: kbps.
                software QoS: 8..155000
                hardware QoS: 100..10000000"                       �"Committed Burst Size. Unit: byte
                 software QoS: 1875..19375000 (default:max(cir*125/2,1875))
                 hardware QoS: 64..131071(default:12288)"                       �"Excess Burst Size. Unit: byte. 0..19375000
                Only software QoS support this node.
                -1 is returned only when getting value from hardware QoS.
                -1 can't be set."                       �"Peak Information Rate. Unit: kbps. 100..10000000
                Only hardware QoS support this node.
                -1 is returned only when getting value from software QoS.
                -1 can't be set."                      "Peak Burst Size. Unit: byte.
                64..4000000.(default:cbs when Peak Information Rate configured)
                Only hardware QoS support this node.
                -1 is returned only when getting value from software QoS.
                -1 can't be set."                      �"Green Action:
                pass (1)
                discard (2)
                remark IP Precedence (3)
                remark DSCP (4)
                remark MPLS EXP (5)
                remark (6)
                Hardware QoS : pass, discard, remark.
                Software QoS : pass, discard, remark IP Precedence, remark DSCP,
                               remark MPLS EXP.
                "                      �"The value is to remark When green action is remarking.
                For remarking DSCP, the range is 0~63;
                For remarking IP Precedence and MPLS EXP, the range is 0~7;
                Only software QoS support this node.
                -1 is returned only when getting value from hardware QoS or
                when action being pass, discard of software QoS.
                -1 can't be set."                      �"Yellow Action:
                unavailable(-1)
                pass (1)
                discard (2)
                remark IP Precedence (3)
                remark DSCP (4)
                remark MPLS EXP (5)
                remark(6)
                Only hardware QoS support this node. Hardware QoS support pass,
                discard, remark.
                -1 is returned only when getting value from software QoS.
                -1 can't be set."                      �"Red Action:
                pass (1)
                discard (2)
                remark IP Precedence (3)
                remark DSCP (4)
                remark MPLS EXP (5)
                remark (6)
                Hardware QoS : pass, discard, remark.
                Software QoS : pass, discard, remark IP Precedence, remark DSCP,
                               remark MPLS EXP.
                "                      �"The value is to remark When red action is remarking.
                For remarking DSCP, the range is 0~63;
                For remarking IP Precedence and MPLS EXP, the range is 0~7;
                Only software QoS support this node.
                -1 is returned only when getting value from hardware QoS or
                when action being pass, discard of software QoS.
                -1 can't be set."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       3"A table of GTS feature configuration information."                       &"GTS Configuration Information Entry."                       '"Committed Information Rate. Unit: bps"                       O"Committed Burst Size. Unit: bit
                 default: max(cir*1/2,15000)"                       "Excess Burst Size. Unit: bit"                       "The length of GTS buffer."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       9"A table of Remarking feature configuration information."                       ,"Remarking Configuration Information Entry."                      "IpPrec(1)
                Dscp(2)
                MplsExp(3)
                Vlan8021p(4)
                AtmClp(5)
                FrDe(6)
                Hardware QoS support IpPrec, Dscp,MplsExp, Vlan8021p.
                Software QoS support each type.
                "                       �"Value to remark:
                for IpPrec: 0~7;
                for Dscp: 0~63;
                for Vlan8021p: 0~7;
                for AtmClp: 0~1;
                for FrDe: 0~1;
                for MplsExp: 0~7"                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       8"A table of queueing feature configuration information."                       ("Queue Configuration Information Entry."                       \"Queueing Type:
                EF: (1)
                AF: (2)
                WFQ: (3)"                       �"The drop type of queue. Only valid for AF and WFQ queue.
                -1 is returned only when getting value about EF queue.
                -1 can't be set."                       �"The length of QueueLength. Only valid for tail-drop type
                of AF and WFQ queue.
                -1 is returned only when getting value about EF queue or
                wred type of AF and WFQ queue.
                -1 can't be set."                      �"Bandwidth Unit:
                Absolute, Unit Kbps (1)
                Percent, Unit % (2)
                Remaining percent, Unit % (3)
                Absolute unit and percent unit are valid for EF and AF queue,
                but remaining percent unit is only valid for AF queue.
                -1 is returned only when getting value about WFQ queue.
                -1 can't be set."                      �"Bandwidth value:
                Absolute value: 8~1000000. Unit: Kbps
                Percent value: 1~100.
                Remaining percent value: 1~100.
                Absolute value and percent value are valid for EF and AF queue,
                but remaining percent value is only valid for AF queue.
                -1 is returned only when getting value about WFQ queue.
                -1 can't be set."                       �"Committed Burst Size. Unit: byte.
                 Only valid for EF queue.
                 Default:min( Bandwidth*25 , 2000000)
                 -1 is returned only when getting value about AF or WFQ queue.
                 -1 can't be set."                       �"Max number of hashed queues (a power of 2).
                Only valid for WFQ.
                -1 is returned only when getting value about AF or EF queue.
                -1 can't be set."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       �"Committed Burst Size Ratio. Unit: byte.
                CBS = CBS_Ratio * Bandwidth(kbps)
                Only valid for EF queue.
                -1 is returned only when getting value about AF or WFQ queue.
                -1 can't be set."                       ,"A table of WRED configuration information."                       '"WRED Configuration Information Entry."                       4"IP-Prec Based (1)
                 DSCP Based (2)"                       2"Specify weight for calculating mean queue depth."                       ,"A table of WRED configuration information."                       -"WRED Class Configuration Information Entry."                       �"The class value.
                For IP precedence based WRED, the class is IP precedence,
                and range is 0~7.
                For DSCP based WRED, the class is DSCP, and range is 0~63."                       "The low limit of queue depth."                        "The high limit of queue depth."                       &"The discard probability denominator."                       7"A table of Policy Routeing configuration information."                       2"Policy Routeing Configuration Information Entry."                       )"The next-hop ip address for redirection"                       �"Whether forward the packet according to the routing table
                When the next-hop ip address for redirection is not valid.
                Backup means forwarding. NoBackup means not forwarding"                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       +"A table of Nat configuration information."                       &"Nat Configuration Information Entry."                       "The main ISP number"                       "The backup ISP number"                       "The service class. DEFVAL: 2"                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       0"A table of Firewall configuration information."                       +"Firewall Configuration Information Entry."                       "The firewall action "                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       0"A table of Sampling configuration information."                       +"Sampling Configuration Information Entry."                       "The sampling number"                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       1"A table of Line Rate configuration information."                       %"LR Configuration Information Entry."                       X"CIR Unit:
                Absolute, Unit bps (1)
                Percent, Unit % (2)"                       �"Committed Information Rate.
                Absolute value: 8000..1000000000. Unit: bps
                Percent value: 1~100."                      g"Committed Burst Size.
                When CIR is absolute value,
                CBS value: 15000..1000000000,
                default value: max(cir*1/2,15000),
                Unit: bit;
                When CIR is percent value,
                CBS value: 50..2000,
                default value: 500,
                Unit: ms.
                "                       �"Excess Burst Size.
                When CIR is absolute value,
                EBS value: 0..1000000000, Unit: bit;
                When CIR is percent value,
                EBS value: 0..2000, Unit: ms."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       :"A table of Hierachical Policy configuration information."                       5"Hierachical Policy Configuration Information Entry."                       %"Name of hierachical traffic policy."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                           �"This object contains an appropriate value to be used
                for hwCBQoSPolicyIndex when creating rows in the
                hwCBQoSPolicyCfgInfoTable. Begin with 0."                       2"A table of QoS policy configuration information."                       1"Traffic Policy Configuration Information Entry."                       "Index of Traffic Policy."                       "Name of Traffic Policy."                       �"The count of policy classes of policy. It can be used
                for hwCBQoSPolicyClassIndex when creating rows in the
                hwCBQoSPolicyClassCfgInfoTable. Begin with 0."                       �"Configuration mode of Traffic Policy.
                Only hardware QoS support this node.
                -1 is returned only when getting value from software QoS.
                -1 can't be set."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       F"A table of QoS Policy classifier-behavior configuration information."                       E"Traffic Policy classifier-behavior Configuration Information Entry."                       $"PolicyClass Index in a QoS policy."                       m"Index of classifier applied by a policy.
                It should exist in hwCBQoSClassifierCfgInfoTable."                       t"Name of classifier applied by a policy.
                It is corresponding to hwCBQoSPolicyClassClassifierIndex."                       i"Index of Behavior applied by a policy.
                It should exist in hwCBQoSBehaviorCfgInfoTable."                       p"Name of Behavior applied by a policy.
                It is corresponding to hwCBQoSPolicyClassBehaviorIndex."                       �"The Precedence of the class in the policy.
                Only hardware QoS support this node.
                -1 is returned only when getting value from software QoS.
                -1 can't be set."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                           !"A table of QoS policy instance."                       >"Policy applied on interface Configuration Information Entry."                       $"Interface Index, equal to ifIndex."                       N"Policy direction:
                inbound (1)
                outbound (2)"                       "Name of Traffic Policy."                       �"
                  If the value of it is specified 'true', enable dynamic qos policy.
                  -1(unavailable) is returned if device doesn't support dynamic QoS.
                  -1(unavailable) can't be set.
                "                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       !"A table of QoS policy instance."                       <"Policy applied on ATM PVC Configuration Information Entry."                       ("ATM Interface Index, equal to ifIndex."                       "VPI value of ATM Interface."                       "VCI value of ATM Interface."                       N"Policy direction:
                inbound (1)
                outbound (2)"                       "Name of Traffic Policy."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       !"A table of QoS policy instance."                       B"Policy applied on Ethernet Vlan Configuration Information Entry."                       -"Ethernet Interface Index, equal to ifIndex."                       "Vlan of Ethernet Interface."                       N"Policy direction:
                inbound (1)
                outbound (2)"                       "Name of Traffic Policy."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       !"A table of QoS policy instance."                       ="Policy applied on fr class Configuration Information Entry."                       "The name of fr class."                       N"Policy direction:
                inbound (1)
                outbound (2)"                       "Name of Traffic Policy."                       R"RowStatus. Three actions are used: active,
                createAndGo, destroy"                       !"A table of QoS policy instance."                       ;"Policy applied on FR PVC Configuration Information Entry."                       '"Fr Interface Index, equal to ifIndex."                       "Fr DLCI number."                       N"Policy direction:
                inbound (1)
                outbound (2)"                       "Name of Traffic Policy."                               �"A table of interface CBQ Running statistics. When policy using
                queue behavior is applied on
                interface the interface will using Class Based Queuing."                       !"Interface CBQ statistics entry."                       "Packet number of CBQ queue"                       ="The number of discarded packets which coundn't be enqueued."                       "Packet number of EF queue"                       "Packet number of of AF queue"                       "Packet number of BE queue"                       &"the Packet number of Active Be Queue"                       *"the max Packet number of Active Be Queue"                       %"the total Packet number of Be Queue"                       )"the Allocated Packet number of Af Queue"                       t"A table of Running statistics for matching a classifier
                in a QoS policy applied on the interface."                       5"Classifier's matching statistics information entry."                       5"Number of packets matching a class in a QoS policy."                       i"Number of bytes matching a class in a QoS policy.
                Only software QoS support this node."                       6"Average rate matching a class of the last 5 minutes."                       b"A table of Running statistics for CAR
                in a QoS policy applied on the interface."                       #"CAR statistics information entry."                       #"Number of packets conforming CIR."                       !"Number of bytes conforming CIR."                       ""Number of packets exceeding CIR."                        "Number of bytes exceeding CIR."                       b"A table of Running statistics for GTS
                in a QoS policy applied on the interface."                       "GTS statistics entry."                       ""Number of packets passed by GTS."                        "Number of bytes passed by GTS."                       %"Number of packets discarded by GTS."                       #"Number of bytes discarded by GTS."                       #"Number of packets delayed by GTS."                       !"Number of bytes delayed by GTS."                       "Packet number of GTS queue."                       h"A table of Running statistics for remarking
                in a QoS policy applied on the interface."                       "Remarking statistics entry."                       "Number of packets remarked."                       d"A table of Running statistics for queue
                in a QoS policy applied on the interface."                       "Queue statistics entry."                       '"Number of packets matched to enqueue."                       %"Number of bytes matched to enqueue."                       "Number of packets enqueued."                       "Number of bytes enqueued."                       >"Number of packets discarded when enqueued by discard method."                       <"Number of bytes discarded when enqueued by discard method."                       c"A table of Running statistics for WRED
                in a QoS policy applied on the interface."                       "WRED statistics entry."                       2"Number of packets that random-discarded by WRED."                       0"Number of packets that tail-discarded by WRED."                       a"A table of Running statistics for LR
                in a QoS policy applied on the interface."                       "LR statistics entry."                       !"Number of packets passed by LR."                       "Number of bytes passed by LR."                       $"Number of packets discarded by LR."                       ""Number of bytes discarded by LR."                       ""Number of packets delayed by LR."                        "Number of bytes delayed by LR."                       "Packet number of LR queue"                           �"A table of atm pvc CBQ Running statistics. When policy using
                queue behavior is applied on
                atm pvc atm pvc will using Class Based Queuing."                       "FR PVC CBQ statistics entry."                       "Packet number of CBQ queue"                       ="The number of discarded packets which coundn't be enqueued."                       "Packet number of EF queue"                       "Packet number of AF queue"                       "Packet number of BE queue"                       &"the packet number of Active Be Queue"                       *"the max packet number of Active Be Queue"                       %"the total packet number of Be Queue"                       )"the Allocated packet number of Af Queue"                       n"A table of Running statistics for matching a classifier
                in a QoS policy applied on ATM PVC."                       '"Classifier matching statistics entry."                       5"Number of packets matching a class in a QoS policy."                       3"Number of bytes matching a class in a QoS policy."                       6"Average rate matching a class in the last 5 minutes."                       \"A table of Running statistics for CAR
                in a QoS policy applied on ATM PVC."                       "CAR statistics entry."                       2"Number of packets that conforming specified CIR."                       0"Number of bytes that conforming specified CIR."                       !"Number of packets exceeded CIR."                       "Number of bytes exceeded CIR."                       \"A table of Running statistics for GTS
                in a QoS policy applied on ATM PVC."                       "GTS statistics entry."                       ""Number of packets passed by GTS."                        "Number of bytes passed by GTS."                       %"Number of packets discarded by GTS."                       #"Number of bytes discarded by GTS."                       #"Number of packets delayed by GTS."                       !"Number of bytes delayed by GTS."                       "packet number of GTS queue."                       b"A table of Running statistics for remarking
                in a QoS policy applied on ATM PVC."                       "Remarking statistics entry."                       "Number of packets remarked."                       ^"A table of Running statistics for queue
                in a QoS policy applied on ATM PVC."                       "Queue statistics entry."                       '"Number of packets matched to enqueue."                       %"Number of bytes matched to enqueue."                       "Number of packets enqueued."                       "Number of bytes enqueued."                       <"Number of packets discard when enqueued by discard method."                       :"Number of bytes discard when enqueued by discard method."                       ]"A table of Running statistics for WRED
                in a QoS policy applied on ATM PVC."                       "WRED statistics entry."                       /"Number of packets randomly discarded by WRED."                       +"Number of packets tail-discarded by WRED."                       ["A table of Running statistics for LR
                in a QoS policy applied on ATM PVC."                       "LR statistics entry."                       !"Number of packets passed by LR."                       "Number of bytes passed by LR."                       $"Number of packets discarded by LR."                       ""Number of bytes discarded by LR."                       ""Number of packets delayed by LR."                        "Number of bytes delayed by LR."                       "Packet number of LR queue"                           �"A table of fr pvc CBQ Running statistics. When policy using
                queue behavior is applied on
                fr pvc fr pvc will using Class Based Queuing."                       "FR PVC CBQ statistics entry."                       "packet number of CBQ queue"                       ="The number of discarded packets which coundn't be enqueued."                       "packet number of EF queue"                       "packet number of AF queue"                       "packet number of BE queue"                       &"the packet number of Active Be Queue"                       *"the max packet number of Active Be Queue"                       %"the total packet number of Be Queue"                       )"the Allocated packet number of Af Queue"                       m"A table of Running statistics for matching a classifier
                in a QoS policy applied on FR PVC."                       '"Classifier matching statistics entry."                       5"Number of packets matching a class in a QoS policy."                       3"Number of bytes matching a class in a QoS policy."                       6"Average rate matching a class of the last 5 minutes."                       ["A table of Running statistics for CAR
                in a QoS policy applied on FR PVC."                       "CAR statistics entry."                        "Number of packets conform CIR."                       "Number of bytes conform CIR."                       "Number of packets exceed CIR."                       "Number of bytes exceed CIR."                       ["A table of Running statistics for GTS
                in a QoS policy applied on FR PVC."                       "GTS statistics entry."                       ""Number of packets passed by GTS."                        "Number of bytes passed by GTS."                       %"Number of packets discarded by GTS."                       #"Number of bytes discarded by GTS."                       #"Number of packets delayed by GTS."                       !"Number of bytes delayed by GTS."                       "packet number of GTS queue."                       a"A table of Running statistics for remarking
                in a QoS policy applied on FR PVC."                       "Remarking statistics entry."                       "Number of packets remarked."                       ]"A table of Running statistics for queue
                in a QoS policy applied on FR PVC."                       "Queue statistics entry."                       '"Number of packets matched to enqueue."                       %"Number of bytes matched to enqueue."                       "Number of packets enqueued."                       "Number of bytes enqueued."                       >"Number of packets discarded when enqueued by discard method."                       <"Number of bytes discarded when enqueued by discard method."                       \"A table of Running statistics for WRED
                in a QoS policy applied on FR PVC."                       "WRED statistics entry."                       /"Number of packets randomly discarded by WRED."                       +"Number of packets tail-discarded by WRED."                       Z"A table of Running statistics for LR
                in a QoS policy applied on FR PVC."                       "LR statistics entry."                       !"Number of packets passed by LR."                       "Number of bytes passed by LR."                       $"Number of packets discarded by LR."                       ""Number of bytes discarded by LR."                       ""Number of packets delayed by LR."                        "Number of bytes delayed by LR."                       "Packet number of LR queue"                           t"A table of Running statistics for matching a classifier
                in a QoS policy applied on ethernet vlan."                       '"Classifier matching statistics entry."                       5"Number of packets matching a class in a QoS policy."                              