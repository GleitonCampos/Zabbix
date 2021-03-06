�-- ==================================================================
-- Copyright (C) 2003 by HUAWEI 3COM TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI-3COM 802.1Q-in-Q and BPDU Tunnel MIB
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2006-03-10 Initial version Created by Baiping Chen
-- V1.1 2007/10/15 modified by wangjinwang
--   Add h3cQinQServiceTPIDValue and h3cQinQCustomerTPIDValue
--   to h3cQinQGlobalConfigGroup.
--   Add h3cQinQIfServiceTPIDValue h3cQinQIfCustomerTPIDValue
--   h3cQinQIfUplinkSwitch and h3cQinQIfDownlinkSwitch
--   to h3cQinQIfConfigTable.
-- ==================================================================
   G"An enumerated value which indicates the state of
            switch."                                     "HUAWEI-3COM 802.1Q-in-Q MIB" �"Platform Team Huawei-3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip: 100085" "200603100000Z" ""The initial version of this MIB."                      p"The global configuration switch of BPDU 802.1q tunnel.
            If global configuration is disabled, BPDU tunnel function
            will be disabled despite of the corresponding configuration
            of interface. BPDU tunnel function of a certain interface
            would work only if the global and interface's switch are
            both enabled."                      B"Ethernet protocol type configuring for a global value.
            The ethernet protocol type is also the TPID(Tag Protocol
            Identity) field of a VLAN tag described in 802.1q
            document. This value can be also configured for an
            individual interface or VLAN. The node that configure
            this value for a single interface is h3cQinQIfEthernetType,
            whose priority is higher than h3cQinQEthernetTypeValue.
            That means, if the value configured for a interface is
            different from the global value, the switch will select
            the configuration of the interface and ignore the global
            configuration. The ethernet protocol type of node
            h3cQinQVidEthernetType that configured for a VLAN has
            the highest priority."                      �"Ethernet protocol type configured for service VLAN tags
            globally.  The ethernet protocol type is also the TPID(Tag
            Protocol Identity) field of a VLAN tag described in 802.1q
            document.  This value can be also configured for an
            individual interface.  The node that configure this
            value for a single interface is h3cQinQIfServiceTPIDValue,
            whose priority is higher than h3cQinQServiceTPIDValue.
            That means, if the value configured for a interface is
            different from the global value, the switch will select
            the configuration of the interface and ignore the global
            configuration."                      �"Ethernet protocol type configured for customer VLAN tags
            globally.  The ethernet protocol type is also the TPID(Tag
            Protocol Identity) field of a VLAN tag described in 802.1q
            document.  This value can be also configured for an
            individual interface.  The node that configure this
            value for a single interface is h3cQinQIfCustomerTPIDValue,
            whose priority is higher than h3cQinQCustomerTPIDValue.
            That means, if the value configured for a interface is
            different from the global value, the switch will select
            the configuration of the interface and ignore the global
            configuration."                       R"A table for configuring 802.1q BPDU tunnel function
            for interfaces."                       S"An entry for configuring 802.1q BPDU tunnel function
            for interfaces."                      o"The index of protocol on which the BPDU tunnel state
            will be set. 'bpdu' represents status of BPDU tunnel.
            'stp' represents STP tunnel. 'gvrp' represents GVRP
            tunnel. 'igmp' represents IGMP tunnel. STP/GVRP/IGMP
            tunnel will start to work only if BPDU tunnel and
            STP/GVRP/IGMP tunnel are both enabled."                       '"Operation status of this table entry."                       �"A table for configuring priority field in 802.1Q-in-Q
            outer VLAN tag for interfaces. This feature uses the
            priority of an inner VLAN tag to remark the priority
            of an outer VLAN tag."                       P"An entry for configuring priority remark function for
            interfaces."                       "The priority value in inner VLAN tag. Since the priority
            range is from 0 to 7, yet the index range is from 1 to 8.
            Thus, the actual priority value equals to the value that
            subtracts 1 from corresponding index value."                       0"The new priority value used to fill outer tag."                       '"Operation status of this table entry."                       M"A table for configuring VLAN ID of the 802.1Q-in-Q
            interfaces."                       N"An entry for configuring VLAN ID of the 802.1Q-in-Q
            interfaces."                       	"VLAN ID"                      <"The inbound VLAN IDs which need 802.1Q-in-Q processing.
            The VLAN ID range, described by bitmap, is from 1 to
            2048. The length of bitmap is 256 in bytes. Each octet
            within this value specifies a set of eight VLANs, with
            the first octet specifying VLANs 1 through 8, the second
            octet specifying VLANs 9 through 16, etc. Within each
            octet, the most significant bit represents the highest
            numbered VLAN, and the least significant bit represents
            the lowest numbered VLAN."                      J"The inbound VLAN IDs which need 802.1Q-in-Q processing.
            The VLAN ID range, described by bitmap, is from 2049 to
            4094. The length of bitmap is 256 in bytes. Each octet
            within this value specifies a set of eight VLANs, with
            the first octet specifying VLANs 2049 through 2056, the
            second octet specifying VLANs 2057 through 2064, etc.
            Within each octet, the most significant bit represents
            the highest numbered VLAN, and the least significant bit
            represents the lowest numbered VLAN."                       0"Ethernet protocol type configuring for a VLAN."                       '"Operation status of this table entry."                       b"A table for configuring 802.1Q-in-Q inner VLAN ID
            swapping function for interfaces."                       c"An entry for configuring 802.1Q-in-Q inner VLAN ID
            swapping function for interfaces."                       -"The old VLAN ID of original 802.1Q packets."                       -"The new VLAN ID of original 802.1Q packets."                       '"Operation status of this table entry."                       �"A table for configuring 802.1Q-in-Q inner VLAN priority
            swapping function for interfaces. Using this function,
            the priority of inner VLAN tag can be modified."                       i"An entry for configuring 802.1Q-in-Q inner VLAN
            priority swapping function for interfaces."                      ?"The old priority of original 802.1Q packets. It is the
            priority of inner VLAN tag. Since the VLAN priority range
            is from 0 to 7, yet the index range is from 1 to 8. Thus,
            the actual priority value equals to the value that
            subtracts 1 from corresponding index value."                       o"The new priority of original 802.1Q packets. It is the
            priority of inner VLAN tag after swapped."                       '"Operation status of this table entry."                       L"A table for configuring 802.1Q-in-Q functions for
            interfaces."                       M"An entry for configuring 802.1Q-in-Q functions for
            interfaces."                       6"Ethernet protocol type configuring for an interface."                       L"Switch of 802.1Q-in-Q functions configuring for an
            interface."                       '"Operation status of this table entry."                       1"Service TPID value configured for an interface."                       2"Customer TPID value configured for an interface."                       J"Switch of the uplink 802.1Q-in-Q function
            for an interface."                       L"Switch of the downlink 802.1Q-in-Q function
            for an interface."                                  