-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:  HGMP Information MIB for LAN Switch
-- Reference:
-- Version: V1.8
-- History:
--   V1.0 2001.5.15 Created Ye dalu
--   V1.1 2004/7/20 Modify Object Name from HwNDPNbEntry
--        to HwNDPPortNbEntry
--   V1.2 2004/8/09 add notification hgmpNetTopChange
--   V1.3 2004-09-24 modify value of STATUS clause from 'mandatory' to 'current' by gaolong
--   V1.4 2004-10-12 updated by gaolong
--        Import NOTIFICATION-TYPE.
--   V1.5 2004-11-02 updated by gaolong
--        Import Counter32.
--   V1.6 2005-12-9  added by zhanglin KF0176
--        add hgmpClusterProtocolMac
--        add hgmpWhitelistNbTable
--        add hgmpWhitelistTable
--        add hgmpBlacklistTable
--        2005-12-20 added by zushuzhi 03030
--        add hgmpMemberPriPortTable
--        add hgmpNTDPTopLinkStatus
--   V1.7 2006-04-30 modified by gaolong
--        relocate hgmpProtocolMac, hgmpTopologyManagement, hgmpMemberPriPortTable
--        and the objects below them.
--        relocate hgmpNTDPTopLinkStatus in hgmpNTDPTopLinkStatus.
--   V1.8 2006-05-08 modify the description of hgmpNTDPCollectTopTime by shanfeng
-- ==================================================================
-- ==================================================================
--
-- Varibles and types be imported
--
-- ==================================================================
                                                                 m"This MIB contains objects to manage the hgmp operations,
            which are used on lanswitch products." �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085"               p"This MIB contains objects to manage the cluster operations, which
            are used on lanswitch products."               A"Configure whether to perform the VLAN check inside the cluster."                       6"Handshaking interval of the cluster member switches."                       D"Holdtime of administrator switch and member switch in the cluster."                       �"Add 1 to the member list after it changes. The administrator checks if
            the value has changed. If not, he will not read the list once more."                       p"Disconnection times of the member and administrator switches divided by
            member number times 1000."                       "Administrator switch flag"                       *"Cluster name of the administrator switch"                       �"The private management IP address of the administrator switch,
            which can not be modified after the cluster has been created."                       �"The private management IP address mask assigned by the administrator
            switch, which cannot be modified after the cluster has been created."                       �"The cluster members can access the Ftp Server through the administrator
            switch, which can only be configured and accessed on the administrator
            switch."                       �"The cluster members can access the Tftp Server through the administrator
             switch, which can only be configured and accessed on the administrator
             switch."                       �"The Snmp Host to send the cluster trap packets, which can only be
            configured and accessed on the administrator switch."                       n"Log host of the cluster, which can only be configured and accessed on
            the administrator switch."                       ""Table of cluster member switches"                       ""                       |"4 bytes reserved as 0x0 + 6 bytes of MAC address, expressed as 
            a character string of the hexadecimal number."                       "When adding member switch to the cluster, the administrator switch
            will assign an unique integer to identify it."                       h"The private IP addresses of the member switches for the communication
            inside the cluster."                       "Hostname of the member switch"                       '"Member password for joining a cluster"                       "Set the hardware platform. A null string indicates the information
            does not exist in the device adjacency table."                       k"Member status on the administrator switch, use for displaying the
            network management status."                       r"Count of inside communication disconnection between the member switch
            and the administrator switch."                       5"Enrollment time of the member, measured in seconds."                       "Operation indication field, indicates the operation of adding/removing
            a member by the network management agent."                       '"Reset a member switch in the cluster."                       ""                       r"The management MAC address of the switch to be reset, which is the
            unique identifier of the switch."                       �"Whether to erase the configuration file from the flash after
            resetting the switch. Read this node, cannotget(65535) will be
            returned."                       -"Definition point for cluster notifications."               Y"When a cluster member failure, send a snmp trap to the network
            management."                 Y"When a cluster member recover, send a snmp trap to the network
            management."                 _"When a cluster member status change, send a snmp trap to the
            network management."                 d"When net topology of this cluster change, send a snmp trap
            to the network management."                  "This switch's role in cluster."                       ]"Max switch members that the cluster can support(include
            administrator switch)."                       t"The MAC address of administrator switch. It will be filled with
            zero when not be a member of cluster."                        "Enable cluster on this switch."                           �"Protocol MAC of HGMP protocol family. All multicast packets of this
            protocol family use this MAC as destination MAC."                          �"Cluster switches white list table. White list topology is the
            topology which has been affirmed by network administrator in a
            cluster, and all devices in white list topology are recorded in this
            table. Against to white list table, black list table records the
            devices which are denied to join in cluster. Adding a black list
            device to white list table will cause a failure."                       "Entry items"                      m"Unique identifier indicating a white list switch. Value format of the
            this object is 'XXXXYYYYYY', in which 'XXXX' is reserved as 4 bytes of
            0x0, 'YYYYYY' is a MAC address.
            For example, if the MAC is 000f-e459-000a, the value of this object is
            an octet string: '00' '00' '00' '00' '00' '0f' 'e4' '59' '00' '0a'."                       �"When adding member switch to the cluster, the administrator switch
            will assign an unique integer to identify it. 0xffff means invalid
            value for this object."                       "The row status of this table."                      "Cluster switches white list neighboring information table. White
            list neighbor table records all neighbor devices for every white
            list device. In fact, white list neighbor table displays the whole
            white list topology."                       "Entry items"                       t"Index of a switch which is the neighbor of a white list switch
            identified by 'hgmpWhitelistDeviceId'."                      �"Unique identifier indicating a neighbor switch of a white list
            switch. Value format of the this object is 'XXXXYYYYYY', in which
            'XXXX' is reserved as 4 bytes of 0x0, 'YYYYYY' is a MAC address.
            For example, if the MAC is 000f-e459-000a, the value of this object
            is an octet string: '00' '00' '00' '00' '00' '0f' 'e4' '59' '00' '0a'."                       {"The name of the port which a white list switch connects to the
            neighbor specified by 'hgmpWhitelistNbIndex'."                       �"The name of the port which a neighbor device connects to the white
            list switch specified by 'hgmpWhitelistDeviceId'."                       �"Cluster switches black list table. The black list table records all
            black list devices, and a device in black list is not permitted to
            join in any cluster."                       "Entry items"                      m"Unique identifier indicating a black list switch. Value format of the
            this object is 'XXXXYYYYYY', in which 'XXXX' is reserved as 4 bytes
            of 0x0, 'YYYYYY' is a MAC address.
            For example, if the MAC is 000f-e459-000a, the value of this object is
            an octet string: '00' '00' '00' '00' '00' '0f' 'e4' '59' '00' '0a'."                      �"Unique identifier indicating the access device of a black list switch.
            Tracing from a black list device to the cluster commander switch, the
            device which the black list switch directly connects to is the access
            device.
            Value format of the this object is 'XXXXYYYYYY', in which 'XXXX' is
            reserved as 4 bytes of 0x0, 'YYYYYY' is a MAC address. 10 bytes of 0xff
            means invalid value for this object.
            For example, if the MAC is 000f-e459-000a, the value of this object is
            an octet string: '00' '00' '00' '00' '00' '0f' 'e4' '59' '00' '0a'."                       �"The port which the access device connecting to the black list switch
            is named access port, the object returns the access port name.
            An empty string means invalid value for this object."                       "The row status of this table."                       �"This table contains port number for different network protocols
            on each member switch. The port number can be used to access
            a specified member switch with specified protocol and private
            IP address."                       �"Information about a specified member private port entry. The
            indexes of the entry are hgmpGrpMemberDevId and
            hgmpMemberPriPortProto, which indicate entries in the table."                       �"Unique identifier indicating the switch in cluster.
            Value format of the this object is 'XXXXYYYYYY', in which 'XXXX' is 
            is reserved as 4 bytes of 0x0, 'YYYYYY' is a MAC address."                       o"The index of this table. Each instance value of this object
            corresponds to a different protocol."                       �"It describes the hgmpMemberPriPortProtocol object value.
            For example, it is 'SNMP' when hgmpMemberPriPortProtocol value
            is 1."                      M"The private port number of member switch, used by specified
            hgmpMemberPriPortProto. By using the private IP address,
            specified protocol and port number, other devices outside
            cluster can access member switch. The private IP address
            can be acquired by reading hgmpGrpMemberIpAddr."                       m"This MIB contains objects to manage the stack operations, which is
            used on lanswitch products."               ."Change identifier of the stack member table."                       2"Disconnection rate of the stack member switches."                       ."The status of the local switch in the stack."                       �"The first address of the management IP network segment assigned by
            the master switch, which cannot be modified in the case that there
            is IP address assignment."                       �"The length of the management IP segment assigned by the master
            switch, which cannot be modified in the case that there is IP
            address assignment."                       �"The mask of the management IP segment assigned by the master switch,
            which cannot be modified in the case that there is IP address assignment."                       "Stack member table."                       ""                       y"2 bytes address type of the switch + 2 bytes zero + MAC address,
            expressed as a hexadecimal number string."                       x"When adding a member switch to the stack, the master switch will
            assign an unique integer to identify it."                       G"The private member IP address for the communication inside the stack."                        "Hostname of the member switch."                       &"Member password for joining a stack."                       "Set the hardware platform. A null string indicates the information
            does not exist in the device adjacency table."                       d"Member status on the master switch, use for displaying the network
            management status."                       k"Count of inside communication disconnection between the member switch
            and the master switch."                       5"Enrollment time of the member, measured in seconds."                       %"This switch's role status in stack."                       ]"Max switch members in one stack that the switch support (include
            main switch)."                       a"The MAC address of main switch. It will be 00.00.00 when not be a
            member of stack."                       +"Definition point for Stack notifications."               W"When a stack member failure, send a snmp trap to the network
            management."                 W"When a stack member Recover, send a snmp trap to the network
            management."                 ]"When a stack member status change, send a snmp trap to the network
            management."                 l"This MIB contains objects to manage the ndp operations, which are
            used on lanswitch products."               !"NDP protocol module enable flag"                       8"NDP packet transmission interval, measured in seconds."                       x"How long the NDP information of the local switch can be hold in
            the adjacent switch, measured in seconds."                       )"Change identifier of the Neighbor table"                       >"Configure to enable/disable the interface NDP of the switch."                       ""                       2"Unique identifier of an interface of the device."                       �"If it is enable, the device will send and receive the NDP
            packets via the interface. To disable the NDP function on the
            interface, set the entry as false."                       )"NDP neighbor information on the switch."                       ""                       �"2 bytes address type of the member switch + 2 bytes zero + MAC
            address, expressed as a character string of the hexadecimal
            number."                       �"Unique identifier of a port. A null string indicates that the
            field was not included in in the latest NDP packet. Interface
            type + card number / slot number / sequence number."                       m"Device name. A null string indicates that the field was not
            included in the latest NDP packet."                        "The neighbor port duplex mode."                       q"Product version. A null string indicates that the field was
            not included in the latest NDP packet."                       r"Hardware version. A null string indicates that the field was
            not included in the latest NDP packet."                       q"Bootrom version. A null string indicates that the field was
            not included in the latest NDP packet."                       r"Software version. A null string indicates that the field was
            not included in the latest NDP packet."                       x"How long the NDP information of the local switch can be hold
            in the adjacent switch, measured in seconds."                       m"This MIB contains objects to manage the ntdp operations, which
            are used on lanswitch products."               l"Topology collection interval of the administrator switch of
            the cluster, measured in minutes."                       >"Range of the topology collection of the administrator switch"                       1"Enable/Disable the NTDP function on the switch."                       e"Set the delay to forward the topology request via the ports,
            measured in milliseconds."                       f"Set the delay to forward the topology request from every hop,
            measured in milliseconds."                       k"Duration of the latest overall topology collection, a
            performance count measured in seconds."                       �"Add 1 when the device table changes. The network administrator
            will check if it has changed before accessing the table. If it
            has not changed, he will not access again."                       �"Add 1 when the topology table changes. The network
            administrator will check if it has changed before accessing
            the table. If it has not changed, he will not access again."                       -"Enable/Disable the NTDP on the switch port."                       ""                       /"Unique identifier an interface of the device."                       �"If it is true, the device will send and receive the NTDP
            packets via the interface. To disable the NTDP function on the
            interface, set the entry as false."                       B"Access the information about the switch from the topology table."                       ""                      w"Our NTDP information is saved in the HASH table on the
            administrator switch. Using DeviceID as index will lead to the
            comparison of a large amount of character strings, which puts
            too many burdens on the administrator switch. A HAHSIndex is
            added to reduce the character string comparison to the
            least range."                       �"2 bytes address type of the member switch + 2 bytes zero + MAC
            address, expressed as a character string of the
            hexadecimal number."                       +"Name of the cluster including the device."                       �"Cluster role of the current device, which can be a
            administrator switch (0x01), member switch(0x02), backup
            switch(0x03), candidate switch(0x10) or an independent
            switch (incapable of cluster member) (0x11)."                       y"The capabilities of the device. FF indicates that the field
            was not included in in the latest NTDP packet."                       �"The version information of the corresponding device. A null
            string indicates that the field was not included in in the
            latest NTDP packet."                       t"Hardware platform. A null string indicates that the field
            was not included in the latest NTDP packet."                       '"The management VLAN ID of the device."                       "Hops to this switch."                       6"Access the topology structure collected by the NTDP."                       ""                      w"Our NTDP information is saved in the HASH table on the
            administrator switch. Using DeviceID as index will lead to the
            comparison of a large amount of character strings, which puts
            too many burdens on the administrator switch. A HAHSIndex is
            added to reduce the character string comparison to the
            least range."                       �"2 bytes address type of the member switch + 2 bytes zero + MAC
            address, expressed as a character string of the hexadecimal number."                       1"Edge index of this entry in the data structure."                       �"2 bytes address type of the member switch + 2 bytes zero + MAC
            address, expressed as a character string of the hexadecimal number."                       }"The number of the first port of a topology edge. Interface
            type + card number / slot number / sequence number."                       >"The full-duplex status of the first port on a topology edge."                       1"The speed of the first port on a topology edge."                       |"The number of the last port of a topology edge. Interface
            type + card number / slot number / sequence number."                      �"In STP or RSTP, it describes link status according to port STP
            steady status. In MSTP it describes STP steady status of the
            instance which management VLAN belongs to. Either
            'hgmpNTDPTopEdgeStartPort' or 'hgmpNTDPTopEdgeEndPort' STP
            steady status is 'blocking', this object is 'blocking',
            otherwise is 'forwarding'.
            If STP or MSTP is disabled, this object is 'forwarding'."                      