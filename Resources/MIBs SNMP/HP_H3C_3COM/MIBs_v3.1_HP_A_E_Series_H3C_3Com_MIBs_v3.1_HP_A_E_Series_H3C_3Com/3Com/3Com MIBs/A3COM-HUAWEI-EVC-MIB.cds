�-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: Ethernet Virtual Connection MIB
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2009-08-08 Initial version Created by Jianyong Song
-- =============================================================================
                         !"Ethernet Virtual Connection MIB" �"Platform Team Hangzhou H3C Tech. Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip:100085" "200908081000Z" ""The initial version of this MIB."       -- Aug 08, 2009 at 10:00 GMT
              �"This object displays the encapsulation capabilities of service
         instance with respect to certain fields. The following values may be
         supported:
         encapPortBased:     Support for matching packets by port.
         encapUntagged:      Support for matching untagged packets.
         encapTagged:        Support for matching all tagged packets.
         encapSvlanId:       Support for matching packets by a SVLAN ID, and
                             the packets may be untagged if PVID of the port is
                             the SVLAN ID when the encapSvlanIdOnlyTagged field
                             is not set.
         encapSvlanIdList:   Support for matching packets by SVLAN ID list, and
                             the packets may be untagged if PVID of the port is
                             in SVLAN ID list when the encapSvlanIdOnlyTagged
                             field is not set.
         encapSvlanIdOnlyTagged:  encapSvlanId or encapSvlanId field indicates
                                  to support for matching only tagged packets
                                  when this field is set."                       ,"The max service instance number of a port."                       A"A table for configuring service instance parameter of the port."                       B"An entry for configuring service instance parameter of the port."                       `"Service instance ID. Its value ranges from 1 to the value of
        h3cEvcPortMaxSrvInstNum."                      �"Encapsulation mode of a service instance.
        none : Invalid value.
        portBased :  Match packets by port. It is supported when encapPortBased
                     field of h3cEvcCapabilities is set.
        untagged :   Match untagged packets. It is supported when encapUntagged
                     field of h3cEvcCapabilities is set.
        tagged :     Match all tagged packets. It is supported when encapTagged
                     field of h3cEvcCapabilities is set.
        svlanIdList: Match packets by SVLAN ID list and untagged packets if
                     PVID of the port is in SVLAN ID list, the SVLAN ID list is
                     denoted by h3cEvcSrvInstSvlanIdListLow and
                     h3cEvcSrvInstSvlanIdListLow. It is supported when
                     encapSvlanId or encapSvlanIdList field of
                     h3cEvcCapabilities is set. Only a VLAN ID is supported
                     when encapSvlanId field of h3cEvcCapabilities is set.
        svlanIdListOnlyTagged: Match only tagged packets by SVLAN ID list, the
                               SVLAN ID is denoted by
                               h3cEvcSrvInstSvlanIdListLow and
                               h3cEvcSrvInstSvlanIdListLow. It is
                               supported when encapSvlanId (or
                               encapSvlanIdList) and encapSvlanIdOnlyTagged
                               fields of h3cEvcCapabilities are set. Only a
                               VLAN ID is supported when encapSvlanId and
                               encapSvlanIdOnlyTagged field of
                               h3cEvcCapabilities are set."                      �"This object contains the first 2048 bits of the 4096 bit vector
        indicating which SVLAN IDs are assigned to this service instance. The
        lowest order bit of the first octet corresponds to SVLAN 1, while the
        highest order bit of the last octet corresponds to SVLAN 2048. A bit
        that is on (equal to 1) indicates that the corresponding SVLAN ID is
        assigned to this service instance."                      �"This object contains the second 2048 bits of the 4096 bit vector
        indicating which SVLAN IDs are assigned to this service instance. The
        lowest order bit of the first octet corresponds to SVLAN 2049, while
        the third highest order bit of the last octet corresponds to SVLAN
        4094. A bit that is on (equal to 1) indicates that the corresponding
        SVLAN ID is assigned to this service instance."                       '"Operation status of this table entry."                                  