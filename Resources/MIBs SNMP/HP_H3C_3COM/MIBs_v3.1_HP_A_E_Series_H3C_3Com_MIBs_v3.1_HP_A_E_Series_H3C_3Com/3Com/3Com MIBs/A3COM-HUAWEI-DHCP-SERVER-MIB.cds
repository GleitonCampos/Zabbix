 -- =================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:  DHCP Server MIB
-- Reference:
-- Version:     V1.2
-- History:
-- V1.0 Initial version Created by y04444
-- V1.1 2009-09-07 Modify by xuyufei
--      Add DHCP Server trap
-- V1.2 2010-05-30 Modify by liuxiaoming06874
--      Add h3cDHCPSrvMibObject,including h3cDHCPSrvGlobalPoolTable
--      h3cDHCPSrvGlobalPoolConfigTable,h3cDHCPSrvGlobalPoolParaTable
--      h3cDHCPSrvGlobalPoolOptionTable
--      2010-08-13 Modify by Cui Jing
--      Add h3cDHCPSrvGlobalPoolStatTable,
--      modify h3cDHCPServerReqTimes and h3cDHCPServerReqSuccessTimes.
-- =================================================================
                                         )"The MIB module is used for DHCP server." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "200905060000Z" "Initial version"        -- May 06th, 2009 at 00:00 GMT
           &"Usage factor of DHCP server ip pool."                       1"Number of requests received by the DHCP server."                       ?"Number of requests success responses sent by the DHCP server."                       D"Threshold of average IP useage of a DHCP server pool in 5 minutes."                       D"Threshold of maximum IP useage of a DHCP server pool in 5 minutes."                       ="Threshold of DHCP server allocated IP address in 5 minutes."                           "DHCP server pool name."                       0"A table for creating DHCP server global pools."                       f"An entry containing objects for creating or
            deleting a global pool for the DHCP server."                       "DHCP server global pool name."                       O"RowStatus. Three actions are used: active,
            createAndGo, destroy."                       Q"A table containing the configurations of dhcp
            server global pools."                       �"An entry containing the objects for configuring
            the network ip or host ip etc. to global pools for
            DHCP server."                      U"Type of a DHCP global pool. Any operations of
            this object will be bound with the operations
            of h3cDHCPSrvGlobalPoolNetwork, h3cDHCPSrvGlobalPoolHostIPAddr,
            or h3cDHCPSrvGlobalPoolHostHAddr.
            That means any operation of this object alone will
            be regarded as invalid operation."                       �"Network ip of a DHCP global pool.
            To delete a configured network ip, please set
            h3cDHCPSrvGlobalPoolCfgUndoFlag to 1."                      �"Net mask of a DHCP global pool(network).
            The SET operation to this object ought to be with
            the SET of h3cDHCPSrvGlobalPoolNetwork together, and
            any SET operation alone to this object will be
            regarded as an invalid operation.
            When a network ip of a DHCP global pool was
            deleted, the net mask would also be deleted
            automatically, and no further operation needed."                       �"Host ip of a DHCP global pool.
            To delete a configured network ip, please set
            h3cDHCPSrvGlobalPoolCfgUndoFlag to 2."                      �"Net mask of a DHCP global pool(host)
            The SET operation to this object ought to be with
            the SET of h3cDHCPSrvGlobalPoolHostIPAddr together,
            and any SET operation alone to this object will be
            regarded as an invalid operation.
            When a host ip of a DHCP global pool was
            deleted, the net mask would also be deleted
            automatically, and no further operation needed."                       �"Hardware address of a DHCP global pool(host).
            To delete a configured hardware address, please
            set h3cDHCPSrvGlobalPoolCfgUndoFlag to 3."                       ="Flag of undo operation for h3cDHCPSrvGlobalPoolConfigTable."                       �"Start IP of a DHCP global pool.
            To delete a configured start IP, please set
            h3cDHCPSrvGlobalPoolStartAddr to 0. It takes
            effect only when h3cDHCPSrvGlobalPoolNetwork is set."                       "End ip of a DHCP global pool."                       G"A table for configuring parameters to DHCP global
            pools."                       i"An entry containing the objects for the
            configurations of parameters of DHCP global pools."                       "Number of days of the lease."                       "Number of hours of the lease."                       !"Number of minutes of the lease."                       C"A flag denoting if the lease of a pool is
            unlimited."                       "Domain name for DHCP clients."                       �"String of gateway ip addresses for DHCP clients.
            Since mostly 8 ip can be configured for a pool
            totally, a string is defined to get or configure 8 ip
            ip at a time."                       m"A gateway ip address to delete. This object is
            only for deleting a given ip of gateway router."                       �"String of DNS server ip addresses for DHCP clients.
            Since mostly 8 ip can be configured for a pool
            totally, a string is defined to get or configure 8
            ip at a time."                       l"A DNS server ip address to delete. This object
            is only for deleting a given ip of DNS server."                       %"NetBios node type for DHCP clients."                       �"String of NetBios server ip addresses for DHCP
            clients. Since mostly 8 ip can be configured for
            a pool totally, so a string is defined to get or
            configure 8 ip at a time."                       �"A NetBios server ip address to delete. This
            object is only for deleting a given ip of NetBios
            server."                       ;"Flag of undo-operation for h3cDHCPSrvGlobalPoolParaTable."                       R"Reset the auto binding ip of the given global
            pool for DHCP server."                       #"Number of timeticks of the lease."                      "The Primary DNS server IP address to be assigned to the
            client.  To delete a configured Primary DNS server IP, please
            set h3cDHCPSrvGlbPoolPrimaryDNSIP to 0.   It takes
            effect only when h3cDHCPSrvGlobalPoolNetwork is set."                      "The Secondary DNS server IP address to be assigned to the
            client.  To delete a configured Secondary DNS server IP, please
            set h3cDHCPSrvGlbPoolSecondaryDNSIP to 0.  It takes
            effect only when h3cDHCPSrvGlobalPoolNetwork is set."                       !"Number of seconds of the lease."                       7"A table for configuring options to DHCP global pools."                       \"An entry containing the objects for configuring
            options to DHCP global pools."                       "Option code."                       "Option type."                       "Ascii string of an option."                      "Hex string of an option. 1st to 16th hex strings,
            which are 2 bytes, 4 bytes, 6 bytes or 8 bytes,
            can be configured at most simultaneously.
            That means the format of each string
            must be '12', '1234', '123456' or '12345678'."                       e"Ip string of an option. 1 to 8 ip addresses  can
            be configured at most simultaneously."                       O"RowStatus. Three actions are used: active,
            createAndGo, destroy."                       +"The statistics of each DHCP address pool."                       ?"An entry containing the statistics of each DHCP address pool."                       L"Utilization rate of IP addresses in each DHCP address pool, in percentage."                       8"Number of requests received by each DHCP address pool."                       >"Number of positive responses sent by each DHCP address pool."                               R"This trap is generated when the device DHCP server address
            exhaust."                 Z"This trap is generated when the device DHCP server address
            exhaust recover."                 s"This trap is generated when the average IP address usage
            of DHCP server pool in 5 minutes overflows."                 s"This trap is generated when the maximun IP address usage
            of DHCP server pool in 5 minutes overflows."                 q"This trap is generated when the number of DHCP server
            allocated IP address in 5 minutes overflows."                        