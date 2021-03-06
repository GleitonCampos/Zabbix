-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:  HUAWEI Lan Switch mac management MIB
-- Reference:
-- Version: V2.3
-- History:
--(1) Created by Zhangshilin, 2001.06.29
-- V2.0 2004-10-12 updated by gaolong
--      Import TEXTUAL-CONVENTION and MODULE-IDENTITY.
--      Add hwLswMacPort MODULE-IDENTITY clause.
--      Change ACCESS to MAX-ACCESS.
--      Change MAX-ACCESS clause value from write-only to read-write.
-- V2.1 2005-03-16 by gaolong
--      Change import clause of hwdot1qVlanIndex
-- V2.2 2005-07-28 by huna kf0518
--      Add hwdot1qTpFdbGroupSetTable
-- V2.3 2005-02-25 by wangyupeng
--      Add blackhole and security for hwdot1qTpFdbSetStatus
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
  �"Each octet within this value specifies a set of eight
            ports, with the first octet specifying ports 1 through
            8, the second octet specifying ports 9 through 16, etc.
            Within each octet, the most significant bit represents
            the lowest numbered port, and the least significant bit
            represents the highest numbered port.  Thus, each port
            of the bridge is represented by a single bit within the
            value of this object.  If that bit has a value of '1'
            then that port is included in the set of ports; the port
            is not included if its bit has a value of '0'."              �"A unique value, greater than zero, for each interface
               or interface sub-layer in the managed system.  It is
               recommended that values are assigned contiguously
               starting from 1.  The value for each interface sub-
               layer must remain constant at least from one re-
               initialization of the entity's network management
               system to the next re-initialization."                                 " " " " "200106290000Z" " "               :"Information table for searching port with mac address   "                       @" Information table for searching port with mac address entry  "                       "MAC address"                       C" VLANID of the native VLAN of the MAC address to be searched for "                       2"Interface index corresponding to the MAC address"                       " Address aging time"                       !"Unicast address setting table  "                       '" Unicast address setting table entry "                       "Unicast MAC address "                       3"Interface index corresponding to the MAC address "                       ("State corresponding to the MAC address"                       >"Add or delete an MAC address.  Read operation not supported."                      "Multistcast address setting table, whose maximal row number
                 is dynamically changed by the influence of IGSP.  When
                 reaching the upper limit of the table, no more row could be
                 added, then an error will be returned."                       ("Multicast address setting table entry."                       "Multicast MAC address."                      "The complete set of ports, in this VLAN, to which
                 frames destined to this Multicast MAC address are currently
                 being explicitly forwarded.  This does not include ports
                 for which this address is only implicitly forwarded."                      \"Add or delete a Multicast MAC address.  Read operation is
                 meaningless.  When adding a Multicast MAC address, it is
                 required to provide MacAddress, VLAN and PortList all.  For
                 deleting operation, MacAddress and VLAN must be provided,
                 but hwdot1qTpFdbGroupSetPort is optional."                                      