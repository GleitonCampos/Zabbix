-- ============================================================================
-- Copyright (C) 2003 by HUAWEI 3COM TECHNOLOGIES.  All rights reserved.
--
-- Description: This MIB is designed for IP Accounting Software
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 created by kongfanhua.
-- ============================================================================
  �"A unique value, greater than zero, for each interface
               or interface sub-layer in the managed system.  It is
               recommended that values are assigned contiguously
               starting from 1.  The value for each interface sub-
               layer must remain constant at least from one re-
               initialization of the entity's network management
               system to the next re-initialization."                                    �"
            This MIB is used to acquire ip accounting information.

            The h3cIpaAccountListTable is set by user to define the group of ip address
            which they want to account.
            This module can be enabled in each port,
            which was defined in the h3cIpaIfConfigTable.

            If this module has been enabled, the packets will be accounted
            when crossing the router from the ports having been enabled by user,
            according to whether the source/destination ip address is in h3cIpaAccountListTable
            and what kinds of function(in/out/both/fw) are enabled
            and also whether it is denied by the firewall.
            If it is denied by the firewall, it will be accounted in h3cIpaFWListTable
            If it is accepted by the firewall, and ip source or ip destination is in h3cIpaAccountListTable,
            it will be accounted in h3cIpaIntListTable, otherwise it will be accounted
            in h3cIpaExtListTable.

            And IP Accounting function also differentiates the packets by direction.
            If the packet is inbound, the accounting information can be seen as
              h3cIpaIntListInPackets/h3cIpaIntListInBytes in h3cIpaIntListTable,
              h3cIpaExtListInPackets/h3cIpaExtListInBytes in h3cIpaExtListTable,
              h3cIpaFWListInPackets/h3cIpaFWListInBytes in h3cIpaFWListTable.

            or else the accounting information can be seen as
              h3cIpaIntListOutPackets/h3cIpaIntListOutBytes in h3cIpaIntListTable,
              h3cIpaExtListOutPackets/h3cIpaExtListOutBytes in h3cIpaExtListTable,
              h3cIpaFWListOutPackets/h3cIpaFWListOutBytes in h3cIpaFWListTable.
            " �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085
            "                   �"
               The indication of whether Ip Accounting function is enabled.
               If it is disabled, ip packets will not be accounted.
               "                      7"
               The value of List aging timeout.
               The unit is second.
               If exceeding the interval, the item in h3cIpaIntListTable, h3cIpaExtListTable
               and h3cIpaFWListTable will be removed automaticlly.
               The range is (3600..604800).
               "                       {"
               The max number of items in h3cIpaIntListTable.
               The range is (0..16384).
               "                       z"
               The max number of items in h3cIpaExtListTable.
               The range is (0..8192).
               "                       Q"
               The max number of items in h3cIpaFWListTable.
               "                       V"
               The max number of items in h3cIpaAccountListTable.
               "                       �"
               The next available index for creating rows of h3cIpaAccountListTable.
               If the value is zero, it means the table is full and no available index
               can be used.
               "                      *"
               Cleaning List in this module.
               The default value is idle. If user wants to clean some lists, he
               can set the value to 2, 3, 4 and 5 to clean the corresponding list.
               After the operation, the value will return to idle.
               "                       �"
            Enable or disable the ip accounting inbound/outbound
            function under a particular interface.
            "                       1"
            Entry of the table.
            "                       "It equals to ifIndex"                       �"
            This object is applicable to h3cIpaIntListTable and h3cIpaExtListTable.
            If the value is disabled, inbound ip packets are not accounted.
            "                       �"
            This object is applicable to h3cIpaIntListTable and h3cIpaExtListTable.
            If the value is disabled, outbound ip packets are not accounted.
            "                      b"
            This object is applicable to h3cIpaFWListTable only.

            If the value is 'inbound', then inbound ip packets which are denied by firewall
            are accounted.
            If the value is 'outbound', then outbound ip packets which were denied by firewall
            are accounted.
            If the value is 'nodirection', neither inbound nor outbound ip packets
            which were denied by firewall are accounted.
            If the value is 'bidirection', both inbound and outbound ip packets which
            were denied by firewall are accounted.
            "                      �"
            The List is used by user to sort packets into two groups
            by source or destination ip address.
            When source/destination ip address of a packet matches a item in this table,
            the packet is accounted in h3cIpaIntListTable.
            When source/destination ip address of a packet does not match any item
            in this table, the packet is accounted in h3cIpaExtListTable.
            "                       1"
            Entry of the table.
            "                       5"
            The Index of the table.
            "                       p"
            The IP address to which this entry's addressing information
            pertains.
            "                       �"
            The subnet mask associated with the IP address of this
            entry.  The value of the mask is an IP address with all the
            network bits set to 1 and all the hosts bits set to 0.
            "                       r"
           The row status of the entry,
           Supporting CreateAndGo and Destroy operation.
           "                       �"
            If matching the ip address recorded in h3cIpaAccountListTable
            and not denied by the firewall, the packets will be accounted
            in this list.
            "                       1"
            Entry of the table.
            "                       K"
            Source IP-address of these accounted packets.
            "                       P"
            Destination IP-address of these accounted packets.
            "                       Y"
            The type of these accounted IP packets defined in RFC 1700.
            "                       R"
            The number of inbound packets in h3cIpaIntListTable.
            "                       P"
            The number of inbound bytes in h3cIpaIntListTable.
            "                       S"
            The number of outbound Packets in h3cIpaIntListTable.
            "                       Q"
            The number of outbound bytes in h3cIpaIntListTable.
            "                       �"
            If mismatching the ip address recorded in the h3cIpaAccountListTable
            and not denied by the firewall, the packets will be accounted
            in this list.
            "                       /"
           Entry of the table.
           "                       K"
            Source IP-address of these accounted packets.
            "                       P"
            Destination IP-address of these accounted packets.
            "                       �"
            The value indicates the value of the 'protocol' field
            which is part of ip packet header.
            "                       R"
            The number of inbound packets in h3cIpaExtListTable.
            "                       P"
            The number of inbound bytes in h3cIpaExtListTable.
            "                       S"
            The number of outbound packets in h3cIpaExtListTable.
            "                       Q"
            The number of outbound bytes in h3cIpaExtListTable.
            "                       v"
            If the packet is denied by the firewall,
            it will be accounted in this list.
            "                       1"
            Entry of the table.
            "                       M"
             Source IP-address of these accounted packets.
             "                       R"
             Destination IP-address of these accounted packets.
             "                       T"
             The number of outbound packets in h3cIpaFWListTable.
             "                       O"
            The number of inbound bytes in h3cIpaFWListTable.
            "                       R"
            The number of outbound packets in h3cIpaFWListTable.
            "                       N"
           The number of outbound bytes in h3cIpaFWListTable.
           "                              