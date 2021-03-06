�-- ==================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: Lan Switch VLAN MIB
-- Reference:
-- Version: V2.0
-- History:
-- (1) Created by Zhangshilin, 2001.06.29
-- (2) Revised by Qi Zhenglin, 2002.01.08
--   V1.1 2004-09-08 modify STATUS of hwLswVlanProtoObject from mandatory to current by gaolong.
--   V1.2 2004-09-23 add ifEntry IMPORT clause by gaolong
--   V1.3 2004-10-12 updated by gaolong
--        Import TEXTUAL-CONVENTION and OBJECT-IDENTITY.
--        Relocate hwLswVlan MODULE-IDENTITY.
--        Change MAX-ACCESS clause value of hwVLANMibSwitchGarpStatClear to read-write.
--   V1.4 2004-12-28 modified by jiaoyi
--          Add hwdot1qVlanMulticast in hwdot1qVlanMIBTable
--        2005-01-22 update by wangyingxia
--          Add all objects of hwLswVlanMngObject from A3COM-HUAWEI-LswINF-MIB into this MIB
--          Add TruthValue, RowStatus, TimeTicks, IpAddress, SnmpAdminString, VlanIndex, PortList
--          Remove InterfaceIndex and import it from A3COM-HUAWEI-LswINF-MIB
--   V1.5 2005-01-22
--        Add superVlan to hwdot1qVlanType by sunqiang
--   V1.6 2005-05-18
--        Add hwdot1qVlanBatchMIBTable by lipei
--   V1.7 2005-08-08
--        Add HwVlanIndex and modified all VlanIndex to HwVlanIndex by longyin
--   V1.8 2006-02-14
--        Modify description of hwVlanInterfaceID, hwifIsolateSecondaryVlanlistLow
--        and hwifIsolateSecondaryVlanlistHigh by wangyong
--        Adjust the format of the file by wangyong
--        Add the object hwdot1qVlanTaggedPorts, hwdot1qVlanUntaggedPorts by jiliyan
--        Add hwifSuperVlanMappingTable, hwifSuperVlanMappingEntry, hwifSuperVlanID,
--        hwifSubVlanlistLow, hwifSubVlanlistHigh by hejunwei
--        Add hwdot1qVlanBatchSetOperate, change the description of
--        hwdot1qVlanBatchMIBTable and hwDot1qVlanBatchMIBEntry by hejunwei
--   V1.9 2007-12-18 Add enmu 'vrrp' for hwVlanInterfaceIpType by Zhangyinfei
--   V2.0 2010-01-18 Add hwdot1qVlanPortIndexs and hwVlanInterfaceIfIndex by duyanbing
-- ==================================================================
  ]"A value used to index per-VLAN tables: values of 0 and
        4095 are not permitted; if the value is between 1 and
        4094 inclusive, it represents an IEEE 802.1Q VLAN-ID with
        global scope within a given bridged domain (see VlanId
        textual convention).  If the value is greater than 4095
        then it represents a VLAN with scope local to the
        particular agent, i.e. one without a global VLAN-ID
        assigned to it. Such VLANs are outside the scope of
        IEEE 802.1Q but it is convenient to be able to manage them
        in the same way using this MIB."                                                                 "" �"Platform Team Hangzhou H3C Tech. Co., Ltd.
                 Hai-Dian District Beijing P.R. China
                 http://www.h3c.com
                 Zip:100085"               "Description."               "VLAN MIB table"                       "Entries of VLAN MIB table"                       "The VLAN-ID."                       "Name of the VLAN."                       "Port list of the VLAN."                       <"Vlan types: SuperVlan(1), Common vlan(2), and Sub-vlan(3)."                       ""Whether to filter MAC addresses."                       +"Whether to broadcast the unknown packets."                       %"Whether there is virtual interface."                       �"Whether vlan interface is configured on vlan. If vlan interface is
            configured, the value of the node is vlan id, else the value is 0."                       7"MAC address learning identity. (common vlan/Sub-vlan)"                       "Status of the VLAN."                       )"The sysUPTime when the VLAN is created."                       "Priority of the VLAN."                       "Operation status."                      "Whether broadcast suppression of vlan be supported pro rata.
            The vlaue of 100 indicates no broadcast suppression. If the
            function is not supported, this object cannot be written,
            and 100 will be returned when reading"                      '"If the broadcast can be controlled with pps(packet per second)type,
            the value of 0 indicates no suppression. This node is conflicted
            with hwdot1qVlanBroadcastSuppression. If the mode is set,
            hwdot1qVlanBroadcastSuppression is unavailable. And vice versa."                       2"Multicast vlan. The default value is disable(0)."                       "Tagged port list of the VLAN."                       !"Untagged port list of the VLAN."                       G"PortIndex list of the VLAN, that delimited by comma, such as 1,3,4,7."                       '"Virtual interface configuration table"                       2"Entries of virtual interface configuration table"                       $"Index of the vlan interface table."                       	"VLAN-ID"                       "IP address of interface."                       "IP address mask of interface."                       $"Status of VLAN virtual interfaces."                       1"Frame type accepted by VLAN virtual interfaces."                       "Operation status."                       L"Vlan interface ip address acquiring method which is manual, dhcp or bootp."                       "IfIndex of VLAN interface."                       ("Secondary vlan lists of Isolate-VLANs."                       ("Secondary vlan lists of Isolate-VLANs."                       "Primary VLAN-ID."                      �"Each octet within this value specifies a set of eight
            VLANs, with the first octet specifying VLANs 1 through
            8, the second octet specifying VLANs 9 through 16, etc.
            Within each octet, the most significant bit represents
            the highest numbered VLAN, and the least significant bit
            represents the lowest numbered VLAN. Thus, each secondary
            VLAN of the primary VLAN is represented by a single bit
            within the value of this object. If that bit has a value
            of '1' then that VLAN is secondary VLAN in the set of VLANs;
            the VLAN is not secondary VLAN if its bit has a value of
            '0'."                      �"Each octet within this value specifies a set of eight
            VLANs, with the first octet specifying VLANs 2049 through
            2056, the second octet specifying VLANs 2057 through 2064,
            etc. Within each octet, the most significant bit represents
            the highest numbered VLAN, and the least significant bit
            represents the lowest numbered VLAN. Thus, each secondary
            VLAN of the primary VLAN is represented by a single bit
            within the value of this object. If that bit has a value
            of '1' then that VLAN is secondary VLAN in the set of VLANs;
            the VLAN is not secondary VLAN if its bit has a value of
            '0'."                       /"VLAN interface IP address configuration table"                       :"Entries of VLAN interface IP address configuration table"                       "Index of VLAN interfaces."                       �"IP address of VLAN interface. When taking destory operation,
            you could set it zero to destory all IP addresses(but cluster
            IP address) in this VLAN interface."                       �"IP address mask of VLAN interface. When destory single IP address,
            you must set it correct to relative IP address."                       �"IP address type. cluster(3) will only be set when taking GET or
            GET NEXT operation. primary(1) is optional when taking SET primary
            IP address operation."                       �"Operation status. active(1) will only be set when taking GET or
            GET NEXT operation. createAndGo(4) and destory(6) is valid when
            taking SET operation."                      |"VLAN batch configuration table.
            In the case of VLAN batch creation, hwdot1qVlanBatchSetOperate should
            be set to 1.
            For example, if creating a row is for creating VLANs 2 to 4, the value
            of the objects should be set as follows:
            hwdot1qVlanBatchStartIndex 2,
            hwdot1qVlanBatchEndIndex 4,
            hwdot1qVlanBatchSetOperate create(1),
            hwdot1qVlanBatchRowStatus createAndGo(4).

            In the case of VLAN batch deletion, hwdot1qVlanBatchSetOperate should
            be set to 2.
            For example, if creating a row is for deleting VLANs 10 to 20, the value
            of the objects should be set as follows:
            hwdot1qVlanBatchStartIndex 10,
            hwdot1qVlanBatchEndIndex 20,
            hwdot1qVlanBatchSetOperate delete(2),
            hwdot1qVlanBatchRowStatus createAndGo(4).

            When the action of batch VLANs deleting or creating is done, one row
            will be existent until it is deleted manually or ages out, but the VLANs
            of it won't disappear with the deletion of the row."                       !"VLAN batch configuration entry."                       "The consequence of operation."                       "The value of start VLAN-ID."                       "The value of end VLAN-ID."                       "The status of operation."                       -"The row status of HwDot1qVlanBatchMIBEntry."                       ""VLAN batch creation or deletion."                        "Sub VLAN lists of super-VLANs."                        "Sub VLAN lists of super-VLANs."                       "Super VLAN ID."                      �"Each octet within this value specifies a set of eight
            VLANs, with the first octet specifying VLANs 1 through
            8, the second octet specifying VLANs 9 through 16, etc.
            Within each octet, the most significant bit represents
            the highest numbered VLAN, and the least significant bit
            represents the lowest numbered VLAN. Thus, each sub
            VLAN of the super VLAN is represented by a single bit
            within the value of this object. If that bit has a value
            of '1' then that VLAN is a sub VLAN of the super VLAN; the
            VLAN is not a sub VLAN of the super VLAN if its bit has
            a value of '0'."                      �"Each octet within this value specifies a set of eight
            VLANs, with the first octet specifying VLANs 2049 through
            2056, the second octet specifying VLANs 2057 through 2064,
            etc. Within each octet, the most significant bit represents
            the highest numbered VLAN, and the least significant bit
            represents the lowest numbered VLAN. Thus, each sub
            VLAN of the super VLAN is represented by a single bit
            within the value of this object. If that bit has a value of
            '1' then that VLAN is a sub VLAN of the super VLAN; the
            VLAN is not a sub VLAN of the super VLAN if its bit has
            a value of '0'."                       "Description."               *"The GARP LeaveAll time, in centiseconds."                       B"A table containing the information various statistics of switch."                       B"A table containing the information various statistics of switch."                       !"Number of GMRP frames received."                       !"Number of GVRP frames received."                       $"Number of GMRP frames transmitted."                       $"Number of GVRP frames transmitted."                       "Number of discarded frames."                       ="Clear various Statistics viz. read operation not supported."                       B"A table for setting/getting the Hold Time for a particular port."                       7"A table for setting/getting the HoldTime of the port."                       "HoldTime of the port."                                          