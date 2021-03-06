�-- ============================================================================
-- Copyright (C) 2004 by HUAWEI 3Com TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI 3COM Flowtemplate Management Information Base.
-- Reference: 
-- Version: 1.0
-- History:
-- V1.0 created by tangshun.
-- ============================================================================
                                         8"Huawei-3com flow template management information base." �"Platform Team Huawei 3Com Technologies Co., Ltd.
                 Hai-Dian District Beijing P.R. China
                 http://www.huawei-3com.com
                 Zip:100085
                "       -- Nov 24, 2005 at 13:20 GMT
               �"This object contains an appropriate value to be used for h3cFTGroupIndex 
                 when creating rows in the h3cFTGroupTable.  If it is 2147483647, 
                 it denotes that h3cFTGroupTable can't create any instance. 
                "                      �"A table of flow template group.
                 A flow template group, which is applied to interface,
                 must use h3cFTGroupTable to create a instance 
                 and h3cFTBasicGroupTable or h3cFTExtendGroupTable 
                 to configure flow template's need item.
                 A basic flow template must use h3cFTBasicGroupTable 
                 to configure some basic flow template's need item, 
                 such as: address, protocol, priority.
                 A extend flow template must use h3cFTExtendGroupTable
                 to configure packet's type and offset and length.
                "                       ""Flow template group information."                       "Flow template group index."                       "Flow template group name."                       "Type of flow template."                       "RowStatus."                       '"A table of basic flow template group."                       ("Basic flow template group information."                      "Type of MAC and IP address.
                 This is a bit-map of possible conditions.
                 The various bit positions are:
                 sourceIpv4Address    source IPv4's address    
                 destIPv4Address      destination IPv4's address
                 sourceIPv6Address    source IPv6 address
                 destIPv6Address      destination IPv6 address
                 sourceMacAddress     source MAC address
                 destMacAddress       destination MAC address
                "                      8"Type of priority.
                 This is a bit-map of possible conditions.
                 The various bit positions are:
                 vlanID         VlanID
                 cos            802.1p priority
                 topVlanID      VlanID of top layer
                 topCos         802.1p priority of top layer
                 fragment       fragment
                 tcpFlag        TCP flag
                 tos            type of service
                 dscp           DSCP
                 ipprecedence   IP precedence
                "                      "Type of protocol.
                 This is a bit-map of possible conditions.
                 The various bit positions are:
                 l2Potocol               layer 2 protocol
                 ipv4L3Protocol          layer 3 protocol of IPv4 
                 ipv6L3Protocol          layer 3 protocol of IPv6
                 icmpProtocolType        Type of ICMP protocol of IPv4
                 icmpProtocolCode        Code of ICMP protocol of IPv4
                 icmpv6ProtocolType      Type of ICMP protocol of IPv6
                 icmpv6ProtocolCode      Code of ICMP protocol of IPv6
                 sourceL4Port            port of layer 4 of source
                 destL4Port              port of layer 4 of destination
                "                       3"Source MAC address field in Ethernet packet head."                       8"Destination MAC address field in Ethernet packet head."                       "RowStatus."                       4"A table of extend flow template group information."                       /"Extend flow template group information entry."                      �"Offset type of the packet.
                 start    Offset from the start of the packet
                 mpls     Offset from the head of MPLS
                 l2       Offset from the head of the L2 frame
                 l4       Offset from the head of L4 packet
                 l5       Offset from the head of the L5 packet
                 ipv4     Offset from the head of the IPv4 packet
                 ipv6     Offset from the head of the IPv6 packet
                "                       "The max value of offset."                       "The max value of length."                       "RowStatus."                          �"A table of any interface with flowtemplate.
                 A flow template, which will be applied interface,
                 is an instance at h3cFTGroupTable 
                 and h3cFTBasicGroupTable or h3cFTExtendGroupTable.
                 A basic flow template is an instance at h3cFTGroupTable 
                 and h3cFTBasicGroupTable, and the instance's RowStatus 
                 must be 'active' at each table.
                 A extend flow template is an instance at h3cFTGroupTable
                 and h3cFTExtendGroupTable, and the instance's RowStatus 
                 must be 'active' at each table.  
                "                       ."Any interface with flowtemplate information."                       "The name of flow template."                       "RowStatus."                                  