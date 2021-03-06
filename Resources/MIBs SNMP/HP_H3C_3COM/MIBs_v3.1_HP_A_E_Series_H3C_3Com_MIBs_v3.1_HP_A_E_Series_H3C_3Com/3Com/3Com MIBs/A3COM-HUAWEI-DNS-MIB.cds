i-- =================================================================
-- Copyright (C) 2009 by H3C Technologies.  All rights reserved.
--
-- Description: DNS MIB File
-- Reference:
-- Version: V1.0
-- History:
--      V1.0 created by jiangshuaihua
--      initial version 2009-02-12
-- =================================================================
                         ."This MIB contains objects to manage the DNS." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.h3c.com
            Zip:100085
            " "200902120000Z" " "                   �"
            This table is a list of DNS static server IPv4 address
            configuration, which is manually specified.
            "                       A"
            An entry of h3cDnsStaticSrvIpTable.
            "                       ["
            This node gives the type of the static DNS server IP address.
            "                       r"
            This node gives the IP address of the DNS server
            specified by the user.
            "                       �"
            This node gives the priority of the DNS server, according to the
            creation order.  The smaller the value is, the higher the priority
            level is.
            "                       W"
            This node gives the operation status of this table entry.
            "                       �"
            This table is a list of DNS dynamic server IPv4 address
            configuration, which is dynamically obtained through DHCP.
            "                       &"An entry of h3cDnsDynamicSrvIpTable."                       \"
            This node gives the type of the dynamic DNS server IP address.
            "                       ~"
            This node gives the IP address of the DNS server dynamically
            obtained through DHCP.
            "                       �"
            This node gives the priority of the DNS server, according to the
            order obtained through DHCP.  The smaller the value is, the higher
            the priority level is.
            "                               y"
                The compliance statement for entities which implement
                the DNS MIB.
                "                   �"
                A collection of objects providing mandatory DNS server IP
                addresses manually specified.
                "                 �"
                A collection of objects providing mandatory DNS server IP
                addresses dynamically obtained through DHCP.
                "                        