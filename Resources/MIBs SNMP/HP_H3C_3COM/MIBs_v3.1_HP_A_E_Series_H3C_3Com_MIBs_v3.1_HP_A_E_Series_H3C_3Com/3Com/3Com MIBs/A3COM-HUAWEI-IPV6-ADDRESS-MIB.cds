�-- =====================================================================
-- Copyright (C) 2006 by HUAWEI-3COM TECHNOLOGIES.  All rights reserved.
--
-- Description: IPv6 address MIB
-- Reference: HUAWEI-3COM enterprise MIB
-- Version: V1.0
-- History:
--   V1.0 2006-03-15 Created by Zhang Jun and Yu Hongqiang
--     Initial version
-- =====================================================================
                         *"The MIB module for managing IPv6 address" �"Platform Team Huawei 3Com Technologies Co., Ltd.
            HaiDian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085" "200603150000Z" *"The initial revision of this MIB module."                      �"The table of address information is relevant to this
            entity's IPv6 addresses for setting. The address information
            that can be read and set in this table is a subset of the
            address information that can be read in h3cIpv6AddrReadTable
            and ipv6AddrTable in IPV6-MIB. This table is used to configure IPv6
            addresses of an interface identified by h3cIpv6AddrSetIfIndex.
            When users create or delete an entry in this table, the agent also
            increases or reduces a corresponding entry in the
            h3cIpv6AddrReadTable and ipv6AddrTable in IPV6-MIB.
            When an interface which has been assigned IPv6 address is deleted,
            the agent also deletes the entry corresponding to
            the interface in this table and h3cIpv6AddrReadTable.
            All IPv6 addresses in this table will also show in ipv6AddrTable in
            IPV6-MIB." 
"RFC 2456"                     &"Define the IPv6 address information."                      "The index value which uniquely identifies the interface to
            which this entry is applicable. The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of RFC 1573's ifIndex."                       n"The IP address type to which this entry's address
            information pertains. The value must be ipv6."                       S"The IPv6 address to which this entry's address
            information pertains."                       a"The length of the prefix (in bits) associated with
            the IPv6 address of this entry."                      b"Indicate the type of source of IPv6 address.
            The value can be one of following:
            'assignedIp':
                Assigned global/site-local IPv6 address;
            'assignedEUI64Ip':
                Assigned global/site-local IPv6 address
                by using EUI-64 interface identifier;
            'assignedLinklocalIp':
                Assigned link-local IPv6 address.
            The value of h3cIpv6AddrSetSourceType is relevant to
                h3cIpv6AddrReadSourceType and h3cIpv6AddrReadCatalog .
            For example, if the value of h3cIpv6AddrSetSourceType is set to
                'assignedIp', then the value of h3cIpv6AddrReadSourceType is
                'assignedIp' and the value of h3cIpv6AddrReadCatalog is
                'global' or 'sitelocal'.
            The relation listed in the following table.
            ----------------------------------------------------------------
             h3cIpv6Addr-        | h3cIpv6Addr-      | h3cIpv6Addr-
             SetSourceType       | ReadSourceType    | ReadCatalog
            ----------------------------------------------------------------
             assignedIp          | assignedIp        | global or sitelocal
            ----------------------------------------------------------------
             assignedEUI64Ip     | assignedIp        | global or sitelocal
            ----------------------------------------------------------------
             assignedLinklocalIp | assignedIp        | linklocal
            ----------------------------------------------------------------
            "                       �"This object is used to create a new row or delete an
            existing row in this table, only supports active(1),
            createAndGo(4) and destroy(6)."                      "The table of address information is relevant to this
            entity's IPv6 addresses for reading.
            This is the extension of the ipv6AddrTable in IPV6-MIB.
            All IPv6 addresses in this table will also show in ipv6AddrTable
            in IPV6-MIB." 
"RFC 2456"                     &"Define the IPv6 address information."                      "The index value which uniquely identifies the interface to
            which this entry is applicable. The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of RFC 1573's ifIndex."                       n"The IP address type to which this entry's address information
            pertains. The value must be ipv6."                       S"The IPv6 address to which this entry's address information
            pertains."                       a"The length of the prefix (in bits) associated with
            the IPv6 address of this entry."                      q"Indicate the type of source of IPv6 address.
            The value can be one of following:
                'assignedIp': Assigned IPv6 address;
                'assignedEUI64Ip': Assigned IPv6 address by using EUI-64
                                   interface identifier;
                'assignedAutoIp':  Auto generated IPv6 address by user setting;
                'autoIp':          Auto generated IPv6 address as a result
                                   of non-linklocal anycast/unicast address
                                   configuration;
                'dhcpv6':          Assigned IPv6 address through DHCPv6
                                   protocol;
                'negotiate':       Assigned IPv6 address through negotiation;
                'cluster':         Assigned IPv6 address through cluster
                                   module."                      9"Indicate the category of the IPv6 address.
            The value can be one of following:
            'nodelocal': node-local scope;
            'linklocal': link-local scope;
            'sitelocal': site-local scope;
            'orglocal': organization-local scope;
            'global': global scope. "                              