$-- ====================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: IPv4 address MIB
-- Reference:
-- Version: V1.4
-- History:
--   V1.0 2005-11-22 Created by Wang Hui and Liu Jinguang
--        Initial version
--   V1.1 2006-03-16 Modify by Yu Hongqiang
--        Modify the description of some objects.
--   V1.2 2007-12-18 Modify by Zhangyinfei
--        Add enmu 'vrrp' for h3cIpAddrReadSourceType and h3cIpAddrReadCatalog
--   V1.3 2009-8-11 Modify by lifei
--        Add ip address change notify trap
--   V1.4 2010-03-06 Modify by Jianzhuang Ge
--        Add ipv4 address management table h3cIpv4AddrTable
-- ====================================================================
                         +"The MIB module for managing IPv4 address." �"Platform Team H3C Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.h3c.com
            Zip:100085
            " "200511220000Z" *"The initial revision of this MIB module."                      �"The table of address information is relevant to this
            entity's IPv4 addresses for setting. The address information
            that can be read and set in this table is a subset of the
            address information that can be read in h3cIpAddrReadTable
            and ipAddrTable in IP-MIB. This table is used to configure IPv4
            addresses of an interface identified by h3cIpAddrSetIfIndex.
            When users create or delete an entry in this table, the agent also
            increases or reduces a corresponding entry in the
            h3cIpAddrReadTable and ipAddrTable in IP-MIB.
            When an interface which has been assigned IPv6 address is deleted,
            the agent also deletes the entry corresponding to the interface
            in this table and h3cIpAddrReadTable.
            All IPv4 addresses in this table will also show in ipAddrTable in
            IP-MIB.
            " 
"RFC 2011"                     4"Define the IPv4 address information.
            "                      "The index value which uniquely identifies the interface to
            which this entry is applicable. The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of RFC 1573's ifIndex.
            "                       |"The IP address type to which this entry's address information
            pertains. The value must be ipv4.
            "                       a"The IPv4 address to which this entry's address information
            pertains.
            "                       �"The subnet mask associated with the IPv4 address of this
            entry. The value of the mask is an IPv4 address with all the
            network bits set to 1 and all the hosts bits set to 0.
            "                       2"Indicate the type of source of the IPv4 address."                       ,"Indicate the category of the IPv4 address."                       �"This object is used to create a new row or delete an
            existing row in this table, only support active,
            createAndGo and destroy.
            "                      "The table of address information is relevant to this
            entity's IP addresses for reading. This is the extension
            of the ipAddrTable in IP-MIB.
            All IPv4 addresses in this table will also show in ipAddrTable
            in IP-MIB.
            " 
"RFC 2011"                     4"Define the IPv4 address information.
            "                      "The index value which uniquely identifies the interface to
            which this entry is applicable. The interface identified by
            a particular value of this index is the same interface as
            identified by the same value of RFC 1573's ifIndex.
            "                       |"The IP address type to which this entry's address information
            pertains. The value must be ipv4.
            "                       a"The IPv4 address to which this entry's address information
            pertains.
            "                       �"The subnet mask associated with the IPv4 address of this
            entry. The value of the mask is an IPv4 address with all the
            network bits set to 1 and all the hosts bits set to 0.
            "                       2"Indicate the type of source of the IPv4 address."                       ,"Indicate the category of the IPv4 address."                       k"This table is used to configure primary IPv4 address of an
             interface identified by ifIndex."                       4"Define the IPv4 address information.
            "                       a"The IPv4 address to which this entry's address information
            pertains.
            "                       �"The subnet mask associated with the IPv4 address of this
            entry.  The value of the mask is an IPv4 address with all the
            network bits set to 1 and all the hosts bits set to 0.
            "                       �"This object is used to create a new row or delete an
            existing row in this table, only support active,
            notInService, createAndGo and destroy.
            "                               >"The IP address IfIndex of specified interface on the device."                       :"The Old IP address of specified interface on the device."                       :"The New IP address of specified interface on the device."                              *"This notification will be generated when the IP address of interface
        is changed.  The change maybe originate from NMS, DHCP server or
        administrator.

        This notification announces useful IP address change.  So it
        is triggered by significative IP address change."                            