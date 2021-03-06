e-- =================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: interface extension mib
-- Reference: IF-MIB
-- Version: V1.5
-- History:
--   V1.0 created by gaolong
--     Initial version 2004-11-13
--   V1.1 2007-01-13 Modified by wanglirong
--     Add h3cIfStatGlobalFlowInterval and h3cIfSpeedStatTable
--   V1.2 Modified by chenxi
--     Add h3cRTParentIfTable, h3cRTSubIfTable and
--     h3cIfLinkModeTable 2007-10-15
--   V1.3 2009-05-05 Add h3cIfPhysicalNumber, h3cIfTable
--   V1.4 2009-08-08 Add h3cIfMtu, h3cIfBandwidth, h3cIfDiscardPktRate,
--     h3cIfExtTrapCfgTable
--   V1.5 2010-09-04 Add h3cIfInNUcastPkts, h3cIfOutNUcastPkts and h3cIfStatusKeepTime by shuaixj
-- =================================================================
                                                        C"This MIB is an extension of interface MIBs such as IF-MIB.

        This MIB is applicable to routers, switches and other products.

        Some objects in this may be used only for some specific products,
        so users should refer to the related documents to acquire more
        detail information.
        " �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "200905061936Z" "200411131936Z" "Update this MIB module." *"The initial revision of this MIB module."       -- May 6, 2009 at 19:36 GMT
           v"Sampling interval for in/out flow of all interfaces.
        Setting zero indicates closing the statistic function."                                       ^"This table contains objects to get statistic information
        of interfaces on a device."                       "Entry items"                       �"Sampling interval for in/out flow of interface.
        Setting zero indicates closing this statistic function
        and objects in this table should return 0."                       #"In bits in the specific interval."                        "Out bits in specific interval."                       &"In Packets in the specific interval."                       '"Out packets in the specific interval."                       $"In bytes in the specific interval."                       %"Out bytes in the specific interval."                       {"This table contains objects to get average speed information
        in the specific interval of interfaces on a device."                       "Entry items"                       �"Sampling interval for in/out flow of interface.
        Setting zero indicates closing this statistic function
        and objects in this table should return 0."                       b"Average of input packets per second in the specific interval by
        h3cIfSpeedStatInterval."                       c"Average of output packets per second in the specific interval by
        h3cIfSpeedStatInterval."                       `"Average of input bytes per second in the specific interval by
        h3cIfSpeedStatInterval."                       a"Average of output bytes per second in the specific interval by
        h3cIfSpeedStatInterval."                           L"This table contains all interfaces that can create sub
        interface."                       J"This entry describes a interface that can create sub
        interface."                       z"The index of interface that can creat sub interface. The value
        is the same as ifIndex value for this interface."                       :"The minimum ordinal of the sub interface can be created."                       6"The max ordinal of the sub interface can be created."                      �"This table contains objects to create or delete sub interfaces.
        To create a sub interface, a valid parent interface must be
        specified by h3cRTSubIfParentIfIndex and the h3cRTSubIfOrdinal
        must be in the range between h3cRTMinSubIfOrdinal and
        h3cRTMaxSubIfOrdinal of the parent interface from
        h3cRTParentIfTable.

        Sub interfaces are logical virtual interfaces configured on a
        main interface. The main interface can be either a physical
        interface (such as a Layer 3 Ethernet interface) or a logical
        interface (such as an MFR interface). The subinterfaces on a
        main interface share the physical layer parameters of the main
        interface but can have link layer and network layer parameters
        of their own. Disabling or enabling a subinterface does not
        affect the main interface, but the main interface status change
        affects the subinterfaces. The subinterfaces cannot operate
        normally unless the main interface is connected.
        A single physical interface containing multiple subinterfaces
        enables you to network in a more flexible way.

        You can create subinterfaces for the following physical
        interfaces:
        Ethernet interface. An Ethernet subinterface associated with no
        VLAN supports only IPX, while an Ethernet subinterface associated
        with a VLAN supports both IP and IPX.
        WAN interfaces with their data link layer protocols being frame
        relay, whose subinterfaces support IP and IPX.
        WAN interfaces with their data link layer protocols being X.25,
        whose subinterfaces support IP and IPX.
        ATM interface, whose subinterfaces support only IP."                       !"The h3cRTSubIfTable entry items"                       ^"The parent interface index. The value should be the same as the
        h3cRTParentIfIndex."                       �"The ordinal of sub interface. It should between
        h3cRTMinSubIfOrdinal and h3cRTMaxSubIfOrdinal of the parent
        interface."                       ("The ifIndex value of the sub interface"                       "The name of the interface"                       "Operation status."                       �"This table contains objects to get or set the link mode of an
        interface.
        According to the layer at which the device processes received
        data packets, Ethernet interfaces can operate in bridge or route
        mode."                       %"The interface link mode table entry"                       "The value is same as ifIndex."                       �"The current link mode of the interface
        If h3cIfLinkModeSwitchSupport is true, writing to the object can
        change the link mode of the interface."                       �"Whether the interface supports link mode switching.
        If this object is true, the interface can operate in either
        bridge mode or route mode. Otherwise the interfaces can operate
        only in bridge or route mode."                           ="Represents the number of physical interfaces in the device."                       a"A list of interface entries. The number of entries is given by
         the value of IfNumber."                       \"An entry containing management information applicable to a
         particular interface."                       B"The interface's up/down times, since the device was initialized."                      "The size of the largest datagram which can be sent/received on the
        interface, specified in octets.  For interfaces that are used for
        transmitting network datagram, this is the size of the largest network
        datagram that can be sent on the interface."                       -"The rate of the bandwidth for an interface."                       5"The rate of the discarded packets for an interface."                       N"The time since the interface
        entered its current operational state."                       �"The number of non-unicast (i.e., subnetwork-
        broadcast or subnetwork-multicast) packets
        delivered to a higher-layer protocol."                       �"The total number of packets that higher-level
        protocols requested be transmitted to a non-
        unicast (i.e., a subnetwork-broadcast or
        subnetwork-multicast) address."                               s"The notification is generated when the rate of the bandwidth for the
         interface exceeds the upper limit."                 {"The notification is generated when the rate of the discarded packets
         for the interface exceeds the upper limit."                     "The trap configuration table."                       "An entry for this table."                       9"The rate of the bandwidth upper limit for an interface."                       A"The rate of the discarded packets upper limit for an interface."                                  