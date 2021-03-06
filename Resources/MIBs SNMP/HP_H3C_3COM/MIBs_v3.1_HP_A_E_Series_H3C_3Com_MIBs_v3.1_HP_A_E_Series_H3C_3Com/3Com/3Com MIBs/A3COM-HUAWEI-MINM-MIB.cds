�-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: 802.1ah MAC-in-MAC MIB
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2009-08-08 Initial version Created by Jianyong Song
--        2010-08-05 Add 'h3cMinmBmac' by Wei Zhang
-- =============================================================================
   9"A enumerated value which indicates the state of object."                                                         "802.1ah MAC-in-MAC MIB" �"Platform Team Hangzhou H3C Tech. Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip:100085" "200908081000Z" ""The initial version of this MIB."       -- Aug 08, 2009 at 10:00 GMT
              q"This object displays the MAC-in-MAC capabilities with respect to
         certain fields. The following values may be supported:
         reEncapsulation:     Support for configuring re-encapsulation (denoted
                              by h3cMinmVsiReEncapsulation).
         uplink:              Support for configuring uplink (denoted
                              by h3cMinmUplinkTable).
         vsiShareConnection:  It indicates that connection entry is shared in
                              all VSIs. h3cVsiIndex is meaningless and must
                              be value 1 in h3cMinmConnectionTable."                       �"A MAC address used in creating the MAC header of I-tagged frames
        transmitted across a Provider Backbone Bridged Network. The invalid
        value FF:FF:FF:FF:FF:FF indicates that this node is not supported by
        the device."                       @"A table for configuring MAC-in-MAC service instance parameter."                       A"An entry for configuring MAC-in-MAC service instance parameter."                       �"BVLAN ID. The value 65535 indicates the BVLAN has not been configured
        for get operation, and it indicates deleting the BVLAN configration
        for set operation."                       �"Whether the re-encapsulation is enabled. The reEncapsulation field of
        h3cMinmCapabilities denotes whether this node is supported."                      o"Next available connection entry index for creating a connection entry.
        Its value ranges from 0x1 to 0xFFFFFFFF.The invalid value 0xFFFFFFFF
        indicates that connection entry can not be created. When the
        vsiShareConnection field of h3cMinmCapabilities is set, this node
        returns an invalid value if the value of h3cVsiIndex is not 1."                       �"A table for uplink ports of the VSI in MAC-in-MAC. The uplink field of
        h3cMinmCapabilities denotes whether this table is supported."                       5"An entry for uplink ports of the VSI in MAC-in-MAC."                       '"Operation status of this table entry."                       1"A table for the connection information of BMAC."                       "An entry for the connection information of BMAC.
        When the vsiShareConnection field of h3cMinmCapabilities is set,
        connection entry is shared in all VSIs. h3cVsiIndex is meaningless
        and must be value 1 in h3cMinmConnectionTable."                      C"Entry index when the vsiShareConnection bit of h3cMinmCapabilities
        is set(h3cVsiIndex is meaningless and must be value 1),
        else entry index in the VSI of h3cVsiIndex.Its value ranges
        from 0x1 to 0xFFFFFFFE. It should be obtained from
        h3cMinmVsiNextAvailableLinkId for create operation."                       "BMAC of an connection entry."                       "BVLAN of an connection entry."                       &"Port ifindex of an connection entry."                       "State of an connection entry."                       $"Aging time of an connection entry."                       '"Operation status of this table entry."                                  