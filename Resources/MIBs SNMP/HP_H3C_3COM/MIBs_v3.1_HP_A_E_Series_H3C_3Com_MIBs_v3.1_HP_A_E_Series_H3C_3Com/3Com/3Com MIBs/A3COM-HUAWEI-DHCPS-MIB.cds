'-- =========================================================================
-- Copyright (C) 2005 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description:  DHCP Server MIB
-- Reference:  Enterprise MIB
-- Version:V1.52
-- History:
--     initial version 2003-03-06
--     V1.0 6th Mar 2004
--  V1.1 Modified by chenhua 2004-08-13
--   Add 0 to the vlaue list of hwDHCPSIPResetFlag for get-opporation
--  V1.2 Modified by chenhua 2004-09-16
--   Modify  the default value of hwDHCPSWriteDataDelay  to 300
--  V1.3 2004-10-12 updated by gaolong
--   Import TEXTUAL-CONVENTION
--  v1.4 Modified by xinhaing 2004-03-03
--   Add a new table  : hwDHCPSIPInUseExTable
--   The satus of the table hwDHCPSIPInUseTable is modified to be deprecated
--   Correct some spelling errors in hwDHCPSIPInUseTable's description
--   Adjust file format
-- v1.5 2006-02-22 Modified by xuyufei
--   Modify the default value of hwDHCPSDetectingServerStatus to disabled
--   Modify the default value of hwDHCPSGlobalPoolClientNetbiosType
--   and hwDHCPSInterfacePoolClientNetbiosType to 0
--   Correct the description of hwDHCPSGlobalPoolOptionHexString,
--   hwDHCPSInterfacePoolOptionHexString, hwDHCPSGlobalPoolNumber,
--   hwDHCPSInterfacePoolNumber
-- v1.51 2006-04-13
--   change value range of hwDHCPSIPInUsePoolName and hwDHCPSIPInUsePoolNameEx
-- v1.52 2011-01-19 Modified by ganchanghua
--   change SYNTAX of hwDHCPSConflictIPDetectTime to OCTET STRING(SIZE(1..20))
-- =========================================================================
   N"To descript the status of some function is Enabled or
            Disabled."                                                 ;"This MIB describes objects used for managing DHCP server." �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085"       #-- February 20, 2006 at 00:00 GMT
           0"A table for creating DHCP server global pools."                       f"An entry containing objects for creating or
            deleting a global pool for the DHCP server."                       "DHCP server global pool name."                       O"RowStatus. Three actions are used: active,
            createAndGo, destroy."                       Q"A table containing the configurations of dhcp
            server global pools."                       �"An entry containing the objects for configuring
            the network ip or host ip etc. to global pools for
            DHCP server."                      L"Type of a DHCP global pool. Any operations of
            this object will be bound with the operations
            of hwDHCPSGlobalPoolNetwork, hwDHCPSGlobalPoolHostIPAddr,
            or hwDHCPSGlobalPoolHostHAddr.
            That means any operation of this object alone will
            be regarded as invalid operation."                       �"Network ip of a DHCP global pool.
            To delete a configured network ip, please set
            hwDHCPSGlobalPoolConfigUndoFlag to 1."                      �"Net mask of a DHCP global pool(network).
            The SET operation to this object ought to be with
            the SET of hwDHCPSGlobalPoolNetwork together, and
            any SET operation alone to this object will be
            regarded as an invalid operation.
            When a network ip of a DHCP global pool was
            deleted, the net mask would also be deleted
            automatically, and no further operation needed."                       �"Host ip of a DHCP global pool.
            To delete a configured network ip, please set
            hwDHCPSGlobalPoolConfigUndoFlag to 2."                      �"Net mask of a DHCP global pool(host)
            The SET operation to this object ought to be with
            the SET of hwDHCPSGlobalPoolHostIPAddr together,
            and any SET operation alone to this object will be
            regarded as an invalid operation.
            When a host ip of a DHCP global pool was
            deleted, the net mask would also be deleted
            automatically, and no further operation needed."                       �"Hardware address of a DHCP global pool(host).
            To delete a configured hardware address, please
            set hwDHCPSGlobalPoolConfigUndoFlag to 3."                       :"Flag of undo operation for hwDHCPSGlobalPoolConfigTable."                       G"A table for configuring parameters to DHCP global
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
            server."                       8"Flag of undo-operation for hwDHCPSGlobalPoolParaTable."                       R"Reset the auto binding ip of the given global
            pool for DHCP server."                       7"A table for configuring options to DHCP global pools."                       \"An entry containing the objects for configuring
            options to DHCP global pools."                       "Option code."                       "Option type."                       "Ascii string of an option."                      "Hex string of an option. 1st to 16th hex strings,
            which are 2 bytes, 4 bytes, 6 bytes or 8 bytes,
            can be configured at most simultaneously.
            That means the format of each string
            must be '12', '1234', '123456' or '12345678'."                       e"Ip string of an option. 1 to 8 ip addresses  can
            be configured at most simultaneously."                       O"RowStatus. Three actions are used: active,
            createAndGo, destroy."                       S"A table containing the information of the tree of
            DHCP global pools."                       k"An entry of objects containing the information
            for displaying the tree of DHCP global pools."                       "Pool name of the parent node."                       "Pool name of the child node."                       #"Pool name of the presibling node."                        "Pool name of the sibling node."                       J"A table for configuring parameters to DHCP interface
            pools."                       �"An entry of objects for configuring parameters
            to DHCP interface pools.
            The index of this entry is the ifIndex of ethernet."                       "Number of days of the lease."                       "Number of hours of the lease."                       !"Number of minutes of the lease."                       C"A flag denoting if the lease of a pool is
            unlimited."                       "Domain name for DHCP clients."                       �"String of DNS server ip addresses for DHCP clients.
            Since mostly 8 ip can be configured for a pool
            totally, a string is defined to get or configure 8
            ip at a time."                       l"A DNS server ip address to delete. This object
            is only for deleting a given ip of DNS server."                       %"NetBios node type for DHCP clients."                       �"String of NetBios server ip addresses for DHCP
            clients. Since mostly 8 ip can be configured for
            a pool totally, so a string is defined to get or
            configure 8 ip at a time."                       �"A NetBios server ip address to delete. This
            object is only for deleting a given ip of NetBios
            server."                       H"Flag of undo-operation for
            hwDHCPSInterfacePoolParaTable."                       U"Reset the auto binding ip of the given interface
            pool for DHCP server."                       :"A table for configuring options to DHCP interface pools."                       �"An entry of objects for configuring options
            to DHCP interface pools.
            The index of this entry is the ifIndex of ethernet."                       "Option Code."                       "Option type."                       "Ascii string of an option."                      "Hex string of an option. 1st to 16th hex strings,
            which are 2 bytes, 4 bytes, 6 bytes or 8 bytes,
            can be configured at most simultaneously.
            That means the format of each string
            must be '12', '1234', '123456' or '12345678'."                       e"Ip string of an option. 1 to 8 ip addresses  can
            be configured at most simultaneously."                       O"RowStatus. Three actions are used: active,
            createAndGo, destroy."                       N"A table for configuring static binding to DHCP
            interface pools."                       �"An entry of objects for configuring static
            binding to DHCP interface pools.
            The index of this entry is the ifIndex of ethernet."                       E"Ip address in static binding for DHCP
            interface pools."                       K"Hardware address in static binding for DHCP
            interface pools."                       O"RowStatus. Three actions are used: active,
            createAndGo, destroy."                       Y"A table for displaying the information of ip in use
            for DHCP server pools."                       a"An entry of objects for displaying information
            of ip in use for DHCP server pools."                       "Hardware address."                       "Ip address in use."                       �"End time of lease.
            The structure of the OCTET STRING is
            month/day/year hour:munite:second --
            MM/DD/YYYY hh:mm:ss. "                       "Type of binding."                       1"Name of the DHCP server pool the ip belongs to."                       "Interface index information."                       "Vlan information."                       "Pvc information."                       6"A table for configuring forbidden ip to DHCP server."                       D"An entry for configuring forbidden ip to DHCP
            server."                       "Start ip of forbidden ip."                       "End ip of forbidden ip."                       O"RowStatus. Three actions are used: active,
            createAndGo, destroy."                       U"A table for displaying the information of conflict
            ip for DHCP server."                       V"An entry for displaying the information of
            conflict ip for DHCP server."                       "Conflict ip."                       '"Type of the detection of conflict ip."                       �"Time when the conflict is detected.
            The structure of the OCTET STRING is
            month/day/year hour:munite:second --
            MM/DD/YYYY hh:mm:ss."                       "The status of DHCP service."                       0"The status of DHCP servers detecting function."                       &"The number of ping packets sent out."                       K"The delay for the reply of a ping packet.
            Unit: millisecond."                       G"The status of the function writing data to the
            harddisk."                       ."The direction of writing data to a harddisk."                       Q"The allowable delay of writing data to the
            harddisk. Unit: second."                       P"The flag used to recover DHCP data with the data on
            the harddisk."                       O"An ip in use that will be cleared. 0 returned for SET
            operation."                       P"A conflict ip that will be cleared. 0 returned for
            SET operation."                       +"A flag that descript the reset operation."                       /"The total number of DHCP server global-pools."                       B"The total number of auto binding ip in DHCP server global-pools."                       Q"The total number of manual binding ip in DHCP
            server global-pools."                       R"The total number of expired binding ip in DHCP
            server global-pools."                       2"The total number of DHCP server interface-pools."                       R"The total number of auto binding ip in DHCP server
            interface-pools."                       T"The total number of manual binding ip in DHCP server
            interface-pools."                       U"The total number of expired binding ip in DHCP server
            interface-pools."                       /"The total number of the bad packets received."                       Y"The total number of the packets received by DHCP
            Server from DHCP clients."                       \"The total number of the DHCP Discover packets
            received from the DHCP clients."                       ["The total number of the DHCP Request packets
            received from the DHCP clients."                       ["The total number of the DHCP Decline packets
            received from the DHCP clients."                       ["The total number of the DHCP Release packets
            received from the DHCP clients."                       Z"The total number of the DHCP Inform packets
            received from the DHCP clients."                       S"The total number of the packets sent by DHCP server
            to DHCP clients."                       R"The total number of the DHCP Offer packets
            sent by the DHCP server."                       P"The total number of the DHCP Ack packets
            sent by the DHCP server."                       P"The total number of the DHCP Nak packets
            sent by the DHCP server."                       e"Reset the above statistic information of packets
            received and sent by the DHCP server."                       Z"A table for displaying the information of ip in use
            for DHCP Server pools. "                       a"An entry of objects for displaying information
            of ip in use for DHCP server pools."                       "Hardware address."                       s"User's vlanID.
            60000 means that a client doesn't have vlanID or have an
            invalid vlanID."                       "Ip address in use."                       �"End time of lease.
            The structure of the OCTET STRING is
            month/day/year hour:munite:second --
            MM/DD/YYYY hh:mm:ss."                       "Type of binding."                       1"Name of the DHCP server pool the ip belongs to."                       "Interface index information."                       a"Vlan information of port on server through
             which the client user accesses server."                       "Pvc information."                                   S"The basic collection of objects providing management of
            DHCP server."                                