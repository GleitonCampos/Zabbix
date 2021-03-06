r-- ============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:
-- Reference:
-- Version: V3.0
-- History:
-- V1.0 created by yuhui.
-- V2.0 2004-10-12 updated by gaolong
--     Define MODULE-IDENTITY for h3cAcl
--     Remove chinese characters
--     Add limitation(0..65535) for some table index
--     Fix a default value error of h3cAclAdvancedEstablish
-- V2.1 2004-11-18 updated by yubo
--     Add 'h3cAclIDSTable' for IDS
-- V2.2 2004-12-13
--     Fix syntax bugs and adjust format of the whole file by jinyi
--     Modify description of h3cAclAdvancedDscp by zhuangyu
-- V2.3 2005-1-26 updated by WuZhao02557
--     Change MAX-ACCESS from read-create to not-accessible for the
--     following MIB nodes:
--       h3cAclNumGroupAclNum, h3cAclNameGroupIndex, h3cAclBasicAclNum,
--       h3cAclBasicSubitem, h3cAclAdvancedAclNum, h3cAclAdvancedSubitem
--       h3cAclIfAclNum, h3cAclIfSubitem, h3cAclLinkAclNum, h3cAclLinkSubitem
--       h3cAclUserAclNum, h3cAclUserSubitem, h3cAclActiveAclIndex,
--       h3cAclActiveIfIndex, h3cAclActiveVlanID, h3cAclActiveDirection
--     Adjust format of whole file.
--     2005-01-27   updated by zhangyinxi
--     1. Add objects h3cAclLinkL2LabelRangeOp, h3cAclLinkL2LabelRangeBegin
--        h3cAclLinkL2LabelRangeEnd and h3cAclLinkMplsExp in h3cAclLinkTable
--     2. Add an enumeration mpls(34887) to object h3cAclLinkProtocol
--     3. Expand the range of object h3cAclActiveVlanID to Integer32
-- V2.4 2005-2-24
--     Make the index of h3cAclIDSTable IMPLIED by fuzhenyu because IDS devices
--     require fixed length index to be used. IDS devices only provide index
--     with no sub-identifier indicating the length of the string.
--     Modify enum name(value is 4) of h3cAclLinkFormatType to ieee802Dot3 by daishijun
-- V2.5 2005-7-25
--     Add objects h3cAclMib2Mode, h3cAclVersion, h3cAclMib2ObjectsCapabilities,
--      h3cAclIPAclNumGroupTable, h3cAclIPAclBasicTable, h3cAclIPAclAdvancedTable,
--      h3cAclMACTable, h3cAclEnUserTable by tangshun.
-- V2.6 2006-01-03
--     Add objects h3cAclIPAclBasicComment, h3cAclIPAclAdvancedComment,
--      h3cAclMACComment, h3cAclEnUserComment by tangshun.
-- V2.7 2006-03-09 updated by changhuifeng
--     Add object h3cAclIPAclAdvancedReflective in h3cAclIPAclAdvancedTable.
--     Modify the description of object h3cAclIPAclAdvancedFragmentFlag.
--     Modify the description of object h3cAclMib2Version.
--     Modify the description of object h3cAclLinkDestAny for text error.
--     Modify the description of object h3cAclMib2CharacteristicsValue.
-- V2.8 2006-07-06 updated by xialei
--     Modify the description of h3cAclIPAclAdvancedIcmpType
--     and h3cAclIPAclAdvancedIcmpCode.
--     Change value range of h3cAclIPAclAdvancedIcmpCode.
-- V2.9 2006-08-08 updated by chenzhaojie
--     Add enumeration value to h3cAclActiveDirection.
-- V3.0 2010-09-01 updated by zhaixiaoxiang
--     Add h3cAclResourceUsageTable.
-- ============================================================================
  �"Type of TCP.
                 invalid(0)
                 tcpack(1)  TCP protocol ACK Packet
                 tcpfin(2)  TCP protocol PIN Packet
                 tcppsh(3)  TCP protocol PUSH Packet
                 tcprst(4)  TCP protocol RST Packet
                 tcpsyn(5)  TCP protocol SYN Packet
                 tcpurg(6)  TCP protocol URG Packet
                 Default value is 'invalid'.
                "              �"The value of DSCP.
                 <0-63>  Value of DSCP
                 af11    Specify Assured Forwarding 11 service(10)
                 af12    Specify Assured Forwarding 12 service(12)
                 af13    Specify Assured Forwarding 13 service(14)
                 af21    Specify Assured Forwarding 21 service(18)
                 af22    Specify Assured Forwarding 22 service(20)
                 af23    Specify Assured Forwarding 23 service(22)
                 af31    Specify Assured Forwarding 31 service(26)
                 af32    Specify Assured Forwarding 32 service(28)
                 af33    Specify Assured Forwarding 33 service(30)
                 af41    Specify Assured Forwarding 41 service(34)
                 af42    Specify Assured Forwarding 42 service(36)
                 af43    Specify Assured Forwarding 43 service(38)
                 be      Specify Best Effort service(0)
                 cs1     Specify Class Selector 1 service(8)
                 cs2     Specify Class Selector 2 service(16)
                 cs3     Specify Class Selector 3 service(24)
                 cs4     Specify Class Selector 4 service(32)
                 cs5     Specify Class Selector 5 service(40)
                 cs6     Specify Class Selector 6 service(48)
                 cs7     Specify Class Selector 7 service(56)
                 ef      Specify Expedited Forwarding service(46)
                "              �"Address flag to select IPv6 Address.
                 Default value is 'invalid'.

                 t64SrcAddrPre64DestAddrPre(1):
                 The mean of the enumeration 't64SrcAddrPre64DestAddrPre' is
                 that system gets the 64 bits prefix of source address and
                 the 64 bits prefix of destination address.

                 t64SrcAddrPre64DestAddrSuf(2):
                 The mean of the enumeration 't64SrcAddrPre64DestAddrSuf' is
                 that system gets the 64 bits prefix of source address and
                 the 64 bits suffix of destination address.

                 t64SrcAddrSuf64DestAddrPre(3):
                 The mean of the enumeration 't64SrcAddrSuf64DestAddrPre' is
                 that system gets the 64 bits suffix of source address and
                 the 64 bits prefix of destination address.

                 t64SrcAddrSuf64DestAddrSuf(4):
                 The mean of the enumeration 't64SrcAddrSuf64DestAddrSuf' is
                 that system gets the 64 bits suffix of source address and
                 the 64 bits suffix of destination address.

                 t128SourceAddress(5):
                 The mean of the enumeration 't128SourceAddress' is that
                 system gets the 128 bits of source address.

                 t128DestinationAddress(6):
                 The mean of the enumeration 't128SourceAddress' is that
                 system gets the 128 bits of destination address.
                "              n"The operation type of TCP and UDP.
                 lt : Less than given port number.
                 eq : Equal to given port number.
                 gt : Greater than given port number.
                 neq : Not equal to given port number.
                 range : Between two port numbers.
                 Default value is 'invalid'.
                "               �"The value of rule's action.
                 permit: The packet matching the rule will be permitted to forward.
                 deny: The packet matching the rule will be denied.
                "              a"Type of fragment.
                 invalid(0)
                 fragment(1)       Frag-Type Fragment
                 fragmentSubseq(2) Frag-Type Fragment-subsequent
                 nonFragment(3)    Frag-Type non-Fragment
                 nonSubseq(4)      Frag-Type non-subsequent
                 Default value is 'invalid'.
                "               �"cleared: Reset the value of the rule's counter.
                 nouse: 'nouse' will be returned when getting.
                "                                                                     "Description" �"Platform Team Hangzhou H3C Tech. Co., Ltd.
                 Hai-Dian District Beijing P.R. China
                 http://www.h3c.com
                 Zip:100085"       -- Sept 21, 2004 at 19:36 GMT
           "Access-list mode."                       0"Configure the match-order of number-acl group."                       *"Define the index of h3cAclNumGroupTable."                       �"The index of number-acl group
                 Interface type:1000..1999
                 Basic type:2000..2999
                 Advance type:3000..3999
                 Link type:4000..4999
                 User type:5000..5999"                       &"The match-order of number-acl group."                       ("The number of number-acl group's node."                       $"The description of this acl group."                       @"Reset the value of rules' counter, which belong to this group."                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       +"Create acl-group that identified by name."                       +"Define the index of h3cAclNameGroupTable."                       "The index of name-acl group."                       "The name of name-acl group."                       "The type of name-acl group."                       $"The match-order of name-acl group."                       &"The number of name-acl group's node."                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       )"Configure the rule for basic acl group."                       +"Define the index of h3cAclBasicRuleTable."                       "The index of basic acl group."                       ""The subindex of basic acl group."                       "The action of basic acl rule."                       &"Source IP-address of basic acl rule."                       +"Source IP-address wild of basic acl rule."                       #"The Time-range of basic acl rule."                       )"The flag of matching fragmented packet."                       "The flag of log."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       %"The count of matched by basic rule."                       "Reset the value of counter."                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       ,"Configure the rule for advanced acl group."                       ."Define the index of h3cAclAdvancedRuleTable."                       ""The index of advanced acl group."                       %"The subindex of advanced acl group."                       !"The action of Advance acl rule."                      "The protocol-type of advanced acl group.
                 <1-255>  Protocol number
                  gre      GRE tunneling(47)
                  icmp     Internet Control Message Protocol(1)
                  igmp     Internet Group Management Protocol(2)
                  ip       Any IP protocol
                  ipinip   IP in IP tunneling(4)
                  ospf     OSPF routing protocol(89)
                  tcp      Transmission Control Protocol (6)
                  udp      User Datagram Protocol (17)"                       *"Source IP-address of advanced acl group."                       /"Source IP-address wild of advanced acl group."                       9"The source IP-address's operator of advanced acl group."                        "The fourth layer source port1."                        "The fourth layer source port2."                       /"Destination IP-address of advanced acl group."                       4"Destination IP-address wild of advanced acl group."                       >"The destination IP-address's operator of advanced acl group."                       %"The fourth layer destination port1."                       %"The fourth layer destination port2."                      r"The value of IP-packet's precedence.
                <0-7>           Value of precedence
                routine         Specify routine precedence(0)
                priority        Specify priority precedence(1)
                immediate       Specify immediate precedence(2)
                flash           Specify flash precedence(3)
                flash-override  Specify flash-override precedence(4)
                critical        Specify critical precedence(5)
                internet        Specify internetwork control precedence(6)
                network         Specify network control precedence(7) "                      �"The value of IP-packet's TOS.
                  <0-15>             Value of TOS(type of service)
                  max-reliability    Match packets with max reliable TOS(2)
                  max-throughput     Match packets with max throughput TOS(4)
                  min-delay          Match packets with min delay TOS(8)
                  min-monetary-cost  Match packets with min monetary cost TOS(1)
                  normal             Match packets with normal TOS(0) "                      �"The value of DSCP.
                <0-63>  Value of DSCP
                af11    Specify Assured Forwarding 11 service(10)
                af12    Specify Assured Forwarding 12 service(12)
                af13    Specify Assured Forwarding 13 service(14)
                af21    Specify Assured Forwarding 21 service(18)
                af22    Specify Assured Forwarding 22 service(20)
                af23    Specify Assured Forwarding 23 service(22)
                af31    Specify Assured Forwarding 31 service(26)
                af32    Specify Assured Forwarding 32 service(28)
                af33    Specify Assured Forwarding 33 service(30)
                af41    Specify Assured Forwarding 41 service(34)
                af42    Specify Assured Forwarding 42 service(36)
                af43    Specify Assured Forwarding 43 service(38)
                be      Specify Best Effort service(0)
                cs1     Specify Class Selector 1 service(8)
                cs2     Specify Class Selector 2 service(16)
                cs3     Specify Class Selector 3 service(24)
                cs4     Specify Class Selector 4 service(32)
                cs5     Specify Class Selector 5 service(40)
                cs6     Specify Class Selector 6 service(48)
                cs7     Specify Class Selector 7 service(56)
                ef      Specify Expedited Forwarding service(46)"                       "Establish flag."                       &"The Time-range of advanced acl rule."                      �"The type of ICMP packet.
                INTEGER<0-255>        ICMP type
                echo                  Type=8, Code=0
                echo-reply            Type=0, Code=0
                fragmentneed-DFset    Type=3, Code=4
                host-redirect         Type=5, Code=1
                host-tos-redirect     Type=5, Code=3
                host-unreachable      Type=3, Code=1
                information-reply     Type=16, Code=0
                information-request   Type=15, Code=0
                net-redirect          Type=5, Code=0
                net-tos-redirect      Type=5, Code=2
                net-unreachable       Type=3, Code=0
                parameter-problem     Type=12, Code=0
                port-unreachable      Type=3, Code=3
                protocol-unreachable  Type=3, Code=2
                reassembly-timeout    Type=11, Code=1
                source-quench         Type=4, Code=0
                source-route-failed   Type=3, Code=5
                timestamp-reply       Type=14, Code=0
                timestamp-request     Type=13, Code=0
                ttl-exceeded          Type=11, Code=0  "                       "The code of ICMP packet."                       )"The flag of matching fragmented packet."                       "The flag of log."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       ("The count of matched by advanced rule."                       "Reset the value of counter."                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       3"Configure the rule for interface-based acl group."                       ("Define the index of h3cAclIfRuleTable."                       )"The index of interface-based acl group."                       ,"The subindex of interface-based acl group."                       *"The action of interface-based acl group."                       "The index of interface."                       %"The flag of matching any interface."                       -"The Time-range of interface-based acl rule."                       "The flag of log."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       %"The count of matched by basic rule."                       ("Reset the value of the rule's counter."                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       "Create link acl."                       ""The entry of the link acl table."                       $"The index of link-based acl group."                       '"The subindex of link-based acl group."                       %"The action of link-based acl group."                       -"The layer 2 protocol-type of link acl rule."                       "Format type of link acl rule."                       ("The flag of vlan tag of link acl rule."                       !"Vlan priority of link acl rule."                       ""Source vlan ID of link acl rule."                       "Source mac of link acl rule."                       '"Source mac wildzard of link acl rule."                       ""Source IfIndex of link acl rule."                       ""The flag of matching any source."                       '"Destination vlan ID of link acl rule."                       #"Destination mac of link acl rule."                       ,"Destination mac wildzard of link acl rule."                       '"Destination IfIndex of link acl rule."                       '"The flag of matching any destination."                       ("The Time-range of link-based acl rule."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       /"The type of layer 2 protocol.0x0000...0xffff."                       /"The mask of layer 2 protocol.0x0000...0xffff."                       #"The type of LSAP.0x0000...0xffff."                       #"The mask of LSAP.0x0000...0xffff."                      o"Operation symbol of the MPLS label.
                 If the symbol is range(5), the objects h3cAclLinkL2LabelRangeBegin and
                 h3cAclLinkL2LabelRangeEnd should have different values indicating a range.
                 Otherwise, only h3cAclLinkL2LabelRangeBegin counts,
                 object h3cAclLinkL2LabelRangeEnd is ignored.

                 invalid(0) -- unavailable
                 lt(1) -- less than
                 eq(2) -- equal
                 gt(3) -- great than
                 neq(4) -- not equal
                 range(5) -- a range with two ends included
                "                       !"The beginning of VPLS VC label."                       "The end of VPLS VC label."                       !"The value of MPLS-packet's Exp."                       "Create user acl."                       "The entry of user acl table."                       "The number of the user acl."                       "The subitem of the user acl."                       "The action of the user acl."                       "Format type."                       "Vlan tag exits or not."                       "Rule string."                       "Rule mask."                       )"The Time-range of the user defined acl."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       "Active acl."                        "The entry of active acl table."                       "Acl index."                       
"IfIndex."                       �"The lower 16 bits is Vlan ID, the higher 16 bits,
                 if not zero, it describes the slot ID of the L3plus board.
                "                       "Direction."                       "The number of the user acl."                       "The subitem of the user acl."                       "The number of the IP acl."                       "The subitem of the IP acl."                       "The num of the link acl."                       "The subitem of the link acl."                       "Is run or not."                       C"RowStatus, now support three state: CreateAndGo, Active, Destroy."                       "Configure the rule for IDS."                       "The entry of acl ids table."                       ""The name index of the IDS table."                       "Source mac of IDS acl rule."                       ""Destination mac of IDS acl rule."                       $"Source IP-address of IDS acl rule."                       )"Source IP-address wild of IDS acl rule."                       )"Destination IP-address of IDS acl rule."                       ."Destination IP-address wild of IDS acl rule."                       "The fourth layer source port."                       $"The fourth layer destination port."                      #"The protocol-type of advanced acl group.
                 <1-255>  Protocol number
                  gre      GRE tunneling(47)
                  icmp     Internet Control Message Protocol(1)
                  igmp     Internet Group Management Protocol(2)
                  ip       Any IP protocol
                  ipinip   IP in IP tunneling(4)
                  ospf     OSPF routing protocol(89)
                  tcp      Transmission Control Protocol (6)
                  udp      User Datagram Protocol (17)
                 "                       ="The maximum number of seconds which deny for this acl rule."                       "The action of IDS acl rule."                       J"RowStatus, now supports three states:  CreateAndGo, Active, and Destroy."                                   "The applying mode of ACL."                       �"The version of this file.
                 The output value has the format of 'xx'or 'xxx'.
                 For example: 10 means 1.0; 125 means 12.5.
                "                       #"The objects of h3cAclMib2Objects."                       "The capability of mib2."                       ("The information of Capability of mib2."                       �"The type of entity .
                 system: The entity is systemic level.
                 interface: The entity is interface level.
                "                       �"The index of entity.
                 If h3cAclMib2EntityType is system, the value of this object is 0.

                 If h3cAclMib2EntityType is interface,
                 the value of this object is equal to 'ifIndex'.
                "                       "The module index of ACL."                       �"The characteristics index of mib2.
                 See DESCRIPTION of h3cAclMib2CharacteristicsValue
                 to get detail information about the value of this object.
                "                       %"The description of characteristics."                      
�"The value of capability of this object.
                 TypeOfRuleStringValue : notSupport(0) and the length of
                 RuleString.

                 TypeOfCodeValue : OnlyOneNotSupport(0),
                                   MoreThanOneNotSupport(1)
                 If h3cAclMib2CharacteristicsValue is 'moreThanOneNotSupport',
                 h3cAclMib2CharacteristicsDesc must be used to depict which
                 protocols are not supported.  The output value of
                 h3cAclMib2CharacteristicsDesc has the format of 'a,b'.
                 For example, 'ip,rarp'.

                 layer3 Module:
                 Index    Characteristics           value
                 1        SourceIPAddress           notSupport(0)
                 2        DestinationIPAddress      notSupport(0)
                 3        SourcePort                notSupport(0)
                 4        DestinationPort           notSupport(0)
                 5        IPPrecedence              notSupport(0)
                 6        TOS                       notSupport(0)
                 7        DSCP                      notSupport(0)
                 8        TCPFlag                   notSupport(0)
                 9        FragmentFlag              notSupport(0)
                 10       Log                       notSupport(0)
                 11       RuleMatchCounter          notSupport(0)
                 12       ResetRuleMatchCounter     notSupport(0)
                 13       VPN                       notSupport(0)
                 15       protocol                  notSupport(0)
                 16       AddressFlag               notSupport(0)

                 layer2 Module:
                 Index    Characteristics           value
                 1        ProtocolType              TypeOfCodeValue
                 2        SourceMAC                 notSupport(0)
                 3        DestinationMAC            notSupport(0)
                 4        LSAPType                  TypeOfCodeValue
                 5        CoS                       notSupport(0)

                 UserDefined Module:
                 Index    Characteristics           value
                 1        UserDefaultOffset         TypeOfRuleStringValue
                 2        UserL2RuleOffset          TypeOfRuleStringValue
                 3        UserMplsOffset            TypeOfRuleStringValue
                 4        UserIPv4Offset            TypeOfRuleStringValue
                 5        UserIPv6Offset            TypeOfRuleStringValue
                 6        UserL4Offset              TypeOfRuleStringValue
                 7        UserL5Offset              TypeOfRuleStringValue
                "                       ."A table of the number acl group information."                       %"Number acl group information entry."                      "The type of number group.
                 Basic ACL and Advanced ACL support ipv4 and ipv6.
                 The range of Basic ACL is from 2000 to 2999.
                 The range of Advanced ACL is from 3000 to 3999.

                 Simple ACL supports ipv6 only.
                 The range of Simple ACL is from 10000 to 42767.

                 MAC ACL and User ACL support ipv4 only.
                 The range of MAC ACL is from 4000 to 4999.
                 The range of User ACL is from 5000 to 5999.
                "                       �"The group index of number acl.
                 Basic type:2000..2999
                 Advanced type:3000..3999
                 MAC type:4000..4999
                 User type:5000..5999
                 Simple type:10000..42767
                "                       "RowStatus."                       &"The match-order of number acl group."                       "The step of rule index."                        "Description of this acl group."                       ,"Reset the value of counters of this group."                       %"The rule count of number acl group."                          !"A table of basic rule group.
                 If some objects of this table are not supported by some products,
                 these objects can't be created, changed and applied.
                 Default value of these objects will be returned when they are read.
                "                       "Basic rule group information."                       $"The rule index of basic acl group."                       "RowStatus."                       "The action of basic acl rule."                       #"The IP addresses type of IP pool."                       �"The value of a local IP address is available for this association.

                 The type of this address is determined by the value of
                 h3cAclIPAclBasicSrcAddrType.
                "                      "Denotes the length of a generic Internet network address prefix.
                 A value of n corresponds to an IP address mask
                 which has n contiguous 1-bits from the most significant bit (MSB)
                 and all other bits set to 0.
                "                       &"The flag of matching any IP address."                       �"Source IPv4 address wild.
                 Only IPv4 Basic Rule support this object.
                 Default value is '0.0.0.0'.
                "                       ^"The Time-range of basic acl rule.
                 Default value is null.
                "                       *"The flag of matching fragmented packets."                       5"The packet will be logged when it matches the rule."                       #"The count of matched by the rule."                       "Reset the value of counter."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       j"The VPN name, which the rule will be applied.
                 Default value is null.
                "                       g"The description of ACL rule.
                 Default value is Zero-length String.
                "                      ."A table of advanced and simple acl group.
                 If some objects of this table are not supported by some products,
                 these objects can't be created, changed and applied.
                 Default value of these objects will be returned when they are read.
                "                       !"Advanced acl group information."                       �"The rule index of advanced acl group.
                 As a Simple ACL group, the value of this object must be 0.
                 As an Advanced ACL group, the value of this object is ranging
                 from 0 to 65534.
                "                       "RowStatus."                       ""The action of advanced acl rule."                      "The protocol-type of advanced acl group.
                  <1-255>  Protocol number
                  gre      GRE tunneling(47)
                  icmp     Internet Control Message Protocol(1)
                  icmpv6   Internet Control Message Protocol6(58)
                  igmp     Internet Group Management Protocol(2)
                  ip       Any IPv4 protocol
                  ipv6     Any IPv6 protocol
                  ipinip   IP in IP tunneling(4)
                  ospf     OSPF routing protocol(89)
                  tcp      Transmission Control Protocol (6)
                  udp      User Datagram Protocol (17)
                  ipv6-ah  IPv6 Authentication Header(51)
                  ipv6-esp IPv6 Encapsulating Security Payload(50)
                "                       !"Address flag to select address."                       #"The IP addresses type of IP pool."                       �"The value of a local IP address available for this association.

                 The type of this address is determined by the value of
                 h3cAclIPAclAdvancedSrcAddrType.
                "                      "Denotes the length of a generic Internet network address prefix.
                 A value of n corresponds to an IP address mask
                 which has n contiguous 1-bits from the most significant bit (MSB)
                 and all other bits set to 0.
                "                       &"The flag of matching any IP address."                       �"Source IPv4 address wild.
                 Only IPv4 Advanced Rule supports this object.
                 Default value is '0.0.0.0'.
                "                       5"Source port operation symbol of advanced acl group."                        "The fourth layer source port1."                        "The fourth layer source port2."                       #"The IP addresses type of IP pool."                       �"The value of a local IP address available for this association.

                 The type of this address is determined by the value of
                 h3cAclIPAclAdvancedDestAddrType.
                "                      "Denotes the length of a generic Internet network address prefix.
                 A value of n corresponds to an IP address mask
                 which has n contiguous 1-bits from the most significant bit (MSB)
                 and all other bits set to 0.
                "                       &"The flag of matching any IP address."                       �"Destination IPv4 address wild.
                 Only IPv4 Advanced Rule supports this object.
                 Default value is '0.0.0.0'.
                "                       :"Destination port operation symbol of advanced acl group."                       %"The fourth layer destination port1."                       %"The fourth layer destination port2."                       "The type of ICMP packet."                       "The code of ICMP packet."                      �"The value of IP-packet's precedence.
                <0-7>           Value of precedence
                routine         Specify routine precedence(0)
                priority        Specify priority precedence(1)
                immediate       Specify immediate precedence(2)
                flash           Specify flash precedence(3)
                flash-override  Specify flash-override precedence(4)
                critical        Specify critical precedence(5)
                internet        Specify internetwork control precedence(6)
                network         Specify network control precedence(7)
                "                      �"The value of IP-packet's TOS.
                  <0-15>             Value of TOS(type of service)
                  max-reliability    Match packets with max reliable TOS(2)
                  max-throughput     Match packets with max throughput TOS(4)
                  min-delay          Match packets with min delay TOS(8)
                  min-monetary-cost  Match packets with min monetary cost TOS(1)
                  normal             Match packets with normal TOS(0)
                "                       !"The value of DSCP of IP packet."                       a"The Time-range of advanced acl rule.
                 Default value is null.
                "                       ""The packet type of TCP protocol."                       _"The flag of matching fragmented packet,
                 and now support two value: 0 or 2 ."                       "Log matched packets."                       #"The count of matched by the rule."                       "Reset the value of counter."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       h"The VPN name that the rule will be applied.
                 Default value is null.
                "                       g"The description of ACL rule.
                 Default value is Zero-length String.
                "                       "The flag of reflective."                          "A table of MAC acl group.
                 If some objects of this table are not supported by some products,
                 these objects can't be created, changed and applied.
                 Default value of these objects will be returned when they are read.
                "                       "MAC acl group information."                       ("The rule index of MAC-based acl group."                       "RowStatus."                       "The action of MAC acl rule."                       "The type of protocol." "rfc894, rfc1010."                     "The mask of protocol."                       g"Source MAC of MAC acl rule.
                 Default value is '00:00:00:00:00:00'.
                "                       p"Source MAC wildzard of MAC acl rule.
                 Default value is '00:00:00:00:00:00'.
                "                       l"Destination MAC of MAC acl rule.
                 Default value is '00:00:00:00:00:00'.
                "                       t"Destination MAC wildzard of MAC acl rule.
                 Default value is '00:00:00:00:00:00'
                "                       "The type of LSAP." "ANSI/IEEE Std 802.3"                     "The mask of LSAP."                        "Vlan priority of MAC acl rule."                       \"The Time-range of MAC acl rule.
                 Default value is null.
                "                       )"The count of matched frame by the rule."                       "Reset the value of counter."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       g"The description of ACL rule.
                 Default value is Zero-length String.
                "                          +"A table of user acl group information.
                 If some objects of this table are not supported by some products,
                 these objects can't be created, changed and applied.
                 Default value of these objects will be returned when they are read.
                "                       "User defined acl group entry."                       "The subitem of the user acl."                       "RowStatus."                       &"The action of user defined acl rule."                      �"The rule, matching packets, input like this:
                 'RuleOffset','RuleString','RuleMask'.

                 RuleOffset: The value of this object is defined by product and
                 it indicates the offset of the rule mask in the packet(unit: byte).

                 RuleString: The length of RuleString is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 RuleMask: The length of RuleMask is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 For example: 10,10af,ffff.

                 Default value is null.
                "                      �"The rule, matching layer 2 packets, input like this:
                 'RuleOffset','RuleString','RuleMask'.

                 RuleOffset: The value is defined by product and
                 it indicates offset of the rule mask in the packet(unit: byte).

                 RuleString: The length of RuleString is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 RuleMask: The length of RuleMask is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 For example: '10','10af','ffff'.

                 Default value is null.
                "                      �"The rule, matching mpls packets, input like this:
                 'RuleOffset','RuleString','RuleMask'.

                 RuleOffset: The value is defined by product and
                 it indicates offset of the rule mask in the packet(unit: byte).

                 RuleString: The length of RuleString is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 RuleMask: The length of RuleMask is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 For example: '10','10af','ffff'.

                 Default value is null.
                "                      �"The rule, matching IPv4 packets, input like this:
                 'RuleOffset','RuleString','RuleMask'.

                 RuleOffset: The value is defined by product and
                 it indicates offset of the rule mask in the packet(unit: byte).

                 RuleString: The length of RuleString is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 RuleMask: The length of RuleMask is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 For example: '10','10af','ffff'.

                 Default value is null.
                "                      �"The rule, matching IPv6 packets, input like this:
                 'RuleOffset','RuleString','RuleMask'.

                 RuleOffset: The value is defined by product and
                 it indicates offset of the rule mask in the packet(unit: byte).

                 RuleString: The length of RuleString is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 RuleMask: The length of RuleMask is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 For example: '10','10af','ffff'.

                 Default value is null.
                "                      �"The rule, matching layer 4 packets, input like this:
                 'RuleOffset','RuleString','RuleMask'.

                 RuleOffset: The value is defined by product and
                 it indicates offset of the rule mask in the packet(unit: byte).

                 RuleString: The length of RuleString is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 RuleMask: The length of RuleMask is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 For example: '10','10af','ffff'.

                 Default value is null.
                "                      �"The rule, matching layer 5 packets, input like this:
                 'RuleOffset','RuleString','RuleMask'.

                 RuleOffset: The value is defined by product and
                 it indicates offset of the rule mask in the packet(unit: byte).

                 RuleString: The length of RuleString is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 RuleMask: The length of RuleMask is defined by product.
                 The string must be hexadecimal.
                 The length of string must be multiple of 2.

                 For example: '10','10af','ffff'.

                 Default value is null.
                "                       K"The Time-range of user acl rule.
                 Default value is null."                       #"The count of matched by the rule."                       "Reset the value of counter."                       q"The rule is active or not.
                 true : active
                 false : inactive
                "                       g"The description of ACL rule.
                 Default value is Zero-length String.
                "                          M"The table shows ACL resource usage information. Support for
                resource types that are denoted by h3cAclResourceType object
                varies with products. If a type is not supported, the
                corresponding row for the type will not be instantiated
                in this table.
                "                      &"Each row contains a brief description of the resource type,
                a port range associated with the chip, total, reserved, and
                configured amount of resource of this type, the percent of
                resource that has been allocated, and so on.
                "                       �"The chassis number. On a centralized or distributed device,
                the value for this node is always zero.
                "                       d"The slot number. On a centralized device, the value for
                this node is always zero."                       d"The chip number. On a single chip device, the value for
                this node is always zero."                      "TCAM (Ternary Content Addressable Memory) resource can be of
                the following types.

                vfpAclResource indicates TCAM entries used by VFP
                for packet filtering.

                ifpAclResource indicates TCAM entries used by IFP
                for packet filtering.

                ifpMeterResource indicates TCAM entries used by IFP
                for traffic policing.

                ifpCounterResource indicates TCAM entries used by IFP
                for packet counting.

                efpAclResource indicates TCAM entries used by EFP
                for packet filtering.

                efpMeterResource indicates TCAM entries used by EFP
                for traffic policing.

                efpCounterResource indicates TCAM entries used by EFP
                for packet counting.

                aclRuleResource indicates TCAM entries for packet filtering.

                meterResource indicates TCAM entries for traffic policing.

                counterResource indicates TCAM entries for packet counting.

                ingressAclResource indicates TCAM entries for inbound packet
                filtering.

                egressAclResource indicates TCAM entries for outbound packet
                filtering.

                ipv4AclResource indicates TCAM entries for IPv4 packet
                filtering.

                ipv6AclResource indicates TCAM entries for IPv6 packet
                filtering.
                "                       �"The port range associated with the chip. Commas are used to
                separate multiple port ranges, for example, Ethernet1/2 to
                Ethernet1/12, Ethernet1/31 to Ethernet1/48.
                "                       *"Total TCAM entries of the resource type."                       ;"The amount of reserved TCAM entries of the resource type."                       ="The amount of configured TCAM entries of the resource type."                       l"The percent of TCAM entries that have been used for
                this resource type.
                "                              