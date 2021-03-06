-- =================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: This file describes the enterprise mib implementation
--              of sending some traps.
-- Reference:
-- Version: V1.5
-- History:
--   V1.0 created by Huang Yang
--     Initial version 2005-01-25
--   V1.1 2005-10-27  added h3cArpPortDynamicEntryFullTrap by ZhangLin
--   V1.2 2007-02-06  added h3cNdTabTrapEnable, h3cNdTabTrapInterval,
--                    h3cNdTabLen and h3cNdTabFullTrap by lizuxing04859
--   V1.3 2008-07-18  added h3cPeriodicalTrapGroup by songhao
--   V1.4 2009-10-09   modified h3cPeriodicalTrapInterval by lisong
--   V1.5 2010-03-06  added h3cPeriodicalTrapSwitch, h3cTrapDesInfoTable
--                    h3cTrapConfigTable by haoyan
--        2010-04-29  added h3cDefaultRtDelTrap by wenchenhua
--        2010-06-05  added h3cTrapDesAddrTAddress by jinyi
-- =================================================================
                                                        "This MIB is applicable to routers, switches and other products.

            Some objects in this may be used only for some specific products,
            so users should refer to the related documents to acquire more
            detail information.
            " �"Platform Team H3C Technologies Co., Ltd.
             Hai-Dian District Beijing P.R. China
             http://www.h3c.com
             Zip: 100085" "201006051050Z" *"The initial revision of this MIB module."                       �"Indicates whether h3cMacTabFullTrap and
            h3cMacTabAlmostFullTrap traps should be generated
            when the MAC table is filled."                       �"Definition of the minimum interval between two
            traps which occur when the MAC table is full or
            two traps which occur when the MAC table is almost full."                           "The length of the MAC table."                           �"Send this trap when the MAC table is filled.  The
                interval between two traps generated should be longer
                than h3cMacTabTrapInterval."                 �"Send this trap when the MAC table is almost full.  The
                interval between two traps generated should be longer
                than h3cMacTabTrapInterval."                     j"Indicates whether h3cArpTabFullTrap traps
            should be generated when the ARP table is filled."                       m"Definition of the minimum interval between two traps
            which occur when the ARP table is filled."                           "The length of the ARP table."                           �"Send this trap when the ARP table is filled.  The
                interval between two traps generated should be longer
                than h3cArpTabTrapInterval."                ="Send this trap when the dynamic ARP number of the
                port exceeds the limitation. The object h3cArpTabLen
                describes the limitation of the max dynamic ARP number
                of this port. The interval between two traps should be
                longer than h3cArpTabTrapInterval."                     V"This table contains objects to decide what kind of
            trap should be sent."                       "Entry items"                       ^"The index value which uniquely identifies an entry
            in the h3cDetailRtTrapTable."                       �"Indicates whether h3cDetailRtTabFullTrap traps
            should be generated when a specific routing table
            is filled."                       m"Indicates whether h3cRtTabFullTrap traps should
            be generated when the routing table is filled."                       q"Definition of the minimum interval between two
            traps which occur when the routing table is filled."                           d"The length of the routing table.  The detail
            routing tables also use the same object."                       g"The IP address type of the next hop of the default route.
            The value must be ipv4 or ipv6"                       6"The IP address of the next hop of the default route."                      A"The index value which uniquely identifies the
             local interface through which the next hop of this
             route should be reached.  The interface identified
             by a particular value of this index is the same
             interface as identified by the same value of
             ifIndex."                           �"Send this trap when the routing table is filled.  The
                interval between two traps generated should be longer
                than h3cRtTabTrapInterval."                 �"Send this trap when the detail routing table is filled.  The
                interval between two traps generated should be longer than
                h3cRtTabTrapInterval."                 3"Send this trap when the default route is deleted."                 q"Indicates whether h3cDefaultRtDelTrap traps should
            be generated when the default route is deleted."                           v"Indicates whether h3cMulticastTabFullTrap traps
            should be generated when the multicast table is filled."                       s"Definition of the minimum interval between two traps
            which occur when the multicast table is filled."                           ="Defining the type of the multicast table, layer2 or layer3."                       $"The length of the multicast table."                           �"Send this trap when the multicast table is filled.  The
                interval between two traps generated should be longer
                than h3cMulticastTabTrapInterval."                     h"Indicates whether h3cNdTabFullTrap traps
            should be generated when the ND table is filled."                       l"Definition of the minimum interval between two traps
            which occur when the ND table is filled."                           "The length of the ND table."                           �"Send this trap when the ND table is filled.  The
                interval between two traps generated should be longer
                than h3cNdTabTrapInterval."                         �"Definition of the periodical interval.
            If no trap occurs during the certain interval, an h3cPeriodicalTrap
            will be generated.
            If the interval is set to 0, no h3cPeriodicalTrap will be generated."                       �"Definition of the periodical switch.
            If the value is off,the h3cPeriodicalTrap will not be generated.
            the h3cPeriodicalTrapInterval will be set to 0."                                   �"If no trap occurs during the interval spicified by
                h3cPeriodicalTrapInterval, an h3cPeriodicalTrap
                will be generated. If the interval is set to 0, no
                h3cPeriodicalTrap will be generated."                     5"A table of trap destination host address and port ."                       6"The entry of trap destination host address and port."                       "The index of this table."                       ."The host IP address of the trap destination."                       #"The port of the trap destination."                       !"The status of this table entry."                       +"This object contains a transport address."                            "A table of trap configuration."                       ""The entry of trap configuration."                       "The index of this table."                       ""The name of the appointed traps."                       )"The description of the appointed traps."                       M"Indicates whether the appointed traps
                should be generated."                              