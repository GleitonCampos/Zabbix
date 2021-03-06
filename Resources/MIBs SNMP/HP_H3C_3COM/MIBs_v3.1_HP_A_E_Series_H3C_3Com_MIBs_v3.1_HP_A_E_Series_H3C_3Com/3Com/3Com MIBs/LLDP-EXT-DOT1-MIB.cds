                              c"The LLDP Management Information Base extension module for
            IEEE 802.1 organizationally defined discovery information.

            In order to assure the uniqueness of the LLDP-MIB,
            lldpXdot1MIB is branched from lldpExtensions using OUI value
            as the node.  An OUI/'company_id' is a 24 bit globally unique
            assigned number referenced by various standards.

            Copyright (C) IEEE (2005).  This version of this MIB module
            is published as Annex F.7.1 of IEEE Std 802.1AB-2005;
            see the standard itself for full legal notices."�"  WG-URL: http://grouper.ieee.org/groups/802/1/index.html
             WG-EMail: stds-802-1@ieee.org

              Contact: Paul Congdon
               Postal: Hewlett-Packard Company
                       8000 Foothills Blvd.
                       Roseville, CA 95747
                       USA
                  Tel: +1-916-785-5753
               E-mail: paul_congdon@hp.com" "200505060000Z" ="Published as part of IEEE Std 802.1AB-2005 initial version."       -- May 06, 2005
     +-- OUI for IEEE 802.1 is 32962 (00-80-C2)
         o"A table that controls selection of LLDP Port VLAN-ID TLVs
            to be transmitted on individual ports."                      �"LLDP configuration information that controls the
            transmission of IEEE 802.1 organizationally defined Port
            VLAN-ID TLV on LLDP transmission capable ports.

            This configuration object augments the lldpPortConfigEntry of
            the LLDP-MIB, therefore it is only present along with the port
            configuration defined by the associated lldpPortConfigEntry
            entry.

            Each active lldpConfigEntry must be restored from non-volatile
            storage (along with the corresponding lldpPortConfigEntry)
            after a re-initialization of the management system."                      �"The lldpXdot1ConfigPortVlanTxEnable, which is defined as
            a truth value and configured by the network management,
            determines whether the IEEE 802.1 organizationally defined
            port VLAN TLV transmission is allowed on a given LLDP
            transmission capable port.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."  "IEEE Std 802.1AB-2005 10.2.1.1"                     w"The table that controls selection of LLDP VLAN name TLV
            instances to be transmitted on individual ports."                      �"LLDP configuration information that specifies the set of
            ports (represented as a PortList) on which the Local System
            VLAN name instance will be transmitted.

            This configuration object augments the lldpLocVlanEntry,
            therefore it is only present along with the VLAN Name instance
            contained in the associated lldpLocVlanNameEntry entry.

            Each active lldpXdot1ConfigVlanNameEntry must be restored
            from non-volatile storage (along with the corresponding
            lldpXdot1LocVlanNameEntry) after a re-initialization of the
            management system."                      Z"The boolean value that indicates whether the corresponding
            Local System VLAN name instance will be transmitted on the
            port defined by the given lldpXdot1LocVlanNameEntry.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."  "IEEE Std 802.1AB-2005 10.2.1.1"                     �"The table that controls selection of LLDP Port and Protocol
            VLAN ID TLV instances to be transmitted on individual ports."                      �"LLDP configuration information that specifies the set of
            ports (represented as a PortList) on which the Local System
            Protocol VLAN instance will be transmitted.

            This configuration object augments the lldpXdot1LocVlanEntry,
            therefore it is only present along with the Port and
            Protocol VLAN ID instance contained in the associated
            lldpXdot1LocVlanEntry entry.

            Each active lldpXdot1ConfigProtoVlanEntry must be restored
            from non-volatile storage (along with the corresponding
            lldpXdot1LocProtoVlanEntry) after a re-initialization of
            the management system."                      u"The boolean value that indicates whether the corresponding
            Local System Port and Protocol VLAN instance will
            be transmitted on the port defined by the given
            lldpXdot1LocProtoVlanEntry.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."  "IEEE Std 802.1AB-2005 10.2.1.1"                     v"The table that controls selection of LLDP Protocol
            TLV instances to be transmitted on individual ports."                      �"LLDP configuration information that specifies the set of
            ports (represented as a PortList) on which the Local System
            Protocol instance will be transmitted.

            This configuration object augments the lldpXdot1LocProtoEntry,
            therefore it is only present along with the Protocol instance
            contained in the associated lldpXdot1LocProtoEntry entry.

            Each active lldpXdot1ConfigProtocolEntry must be restored
            from non-volatile storage (along with the corresponding
            lldpXdot1LocProtocolEntry) after a re-initialization of the
            management system."                      b"The boolean value that indicates whether the corresponding
            Local System Protocol Identity instance will be transmitted
            on the port defined by the given lldpXdot1LocProtocolEntry.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."  "IEEE Std 802.1AB-2005 10.2.1.1"                         �"This table contains one row per port for IEEE 802.1
            organizationally defined LLDP extension on the local system
            known to this agent."                       T"Information about IEEE 802.1 organizationally defined
            LLDP extension."                      "The integer value used to identify the port's VLAN identifier
            associated with the local system.   A value of zero shall
            be used if the system either does not know the PVID or does
            not support port-based VLAN operation." "IEEE Std 802.1AB-2005 F.2.1"                     r"This table contains one or more rows per Port and Protocol
            VLAN information about the local system."                       �"Port and protocol VLAN ID Information about a particular
            port component.  There may be multiple port and protocol VLANs,
            identified by a particular lldpXdot1LocProtoVlanId, configured
            on the given port."                      J"The integer value used to identify the port and protocol
            VLANs associated with the given port associated with the
            local system.  A value of zero shall be used if the system
            either does not know the protocol VLAN ID (PPVID) or does
            not support port and protocol VLAN operation." "IEEE Std 802.1AB-2005 F.3.2"                     �"The truth value used to indicate whether the given port
            (associated with the local system) supports port and protocol
            VLANs." "IEEE Std 802.1AB-2005 F.3.1"                     �"The truth value used to indicate whether the port and
            protocol VLANs are enabled on the given port associated with
            the local system." "IEEE Std 802.1AB-2005 F.3.1"                     �"This table contains one or more rows per IEEE 802.1Q VLAN
            name information on the local system known to this agent."                       �"VLAN name Information about a particular port component.
            There may be multiple VLANs, identified by a particular
            lldpXdot1LocVlanId, configured on the given port."                       s"The integer value used to identify the IEEE 802.1Q
            VLAN IDs with which the given port is compatible." "IEEE Std 802.1AB-2005 F.4.2"                    A"The string value used to identify VLAN name identified by the
            Vlan Id associated with the given port on the local system.

            This object should contain the value of the dot1QVLANStaticName
            object (defined in IETF RFC 2674) identified with the given
            lldpXdot1LocVlanId." "IEEE Std 802.1AB-2005 F.4.4"                     ~"This table contains one or more rows per protocol identity
            information on the local system known to this agent." "IEEE Std 802.1AB-2005 F.5"                     �"Information about particular protocols that are accessible
            through the given port component.

            There may be multiple protocols, identified by particular
            lldpXdot1ProtocolIndex, and lldpLocPortNum." "IEEE Std 802.1AB-2005 F.5"                     �"This object represents an arbitrary local integer value used
            by this agent to identify a particular protocol identity."                       x"The octet string value used to identify the protocols
            associated with the given port of the local system." "IEEE Std 802.1AB-2005 F.5.3"                        @"This table contains one or more rows per physical network
            connection known to this agent.  The agent may wish to
            ensure that only one lldpXdot1RemEntry is present for
            each local port, or it may choose to maintain multiple
            lldpXdot1RemEntries for the same local port."                       0"Information about a particular port component."                      -"The integer value used to identify the port's VLAN identifier
            associated with the remote system.  if the remote system
            either does not know the PVID or does not support port-based
            VLAN operation, the value of lldpXdot1RemPortVlanId should
            be zero." "IEEE Std 802.1AB-2005 F.2.1"                     �"This table contains one or more rows per Port and Protocol
            VLAN information about the remote system, received on the
            given port."                       �"Port and protocol VLAN name Information about a particular
            port component.  There may be multiple protocol VLANs,
            identified by a particular lldpXdot1RemProtoVlanId, configured
            on the remote system."                      �"The integer value used to identify the port and protocol
            VLANs associated with the given port associated with the
            remote system.

            If port and protocol VLANs are not supported on the given
            port associated with the remote system, or if the port is
            not enabled with any port and protocol VLAN, the value of
            lldpXdot1RemProtoVlanId should be zero." "IEEE Std 802.1AB-2005 F.3.2"                     �"The truth value used to indicate whether the given port
            (associated with the remote system) is capable of supporting
            port and protocol VLANs." "IEEE Std 802.1AB-2005 F.3.1"                     �"The truth value used to indicate whether the port and
            protocol VLANs are enabled on the given port associated with
            the remote system." "IEEE Std 802.1AB-2005 F.3.1"                     �"This table contains one or more rows per IEEE 802.1Q VLAN
            name information about the remote system, received on the
            given port." "IEEE Std 802.1AB-2005 F.4"                     �"VLAN name Information about a particular port component.
            There may be multiple VLANs, identified by a particular
            lldpXdot1RemVlanId, received on the given port."                       �"The integer value used to identify the IEEE 802.1Q
            VLAN IDs with which the given port of the remote system
            is compatible." "IEEE Std 802.1AB-2005 F.4.2"                     w"The string value used to identify VLAN name identified by the
            VLAN Id associated with the remote system." "IEEE Std 802.1AB-2005 F.4.4"                     �"This table contains one or more rows per protocol information
            about the remote system, received on the given port."                       �"Protocol information about a particular port component.
            There may be multiple protocols, identified by a particular
            lldpXdot1ProtocolIndex, received on the given port."                       �"This object represents an arbitrary local integer value used
            by this agent to identify a particular protocol identity."                       u"The octet string value used to identify the protocols
            associated with the given port of remote system." "IEEE Std 802.1AB-2005 F.5.3"                             �"The compliance statement for SNMP entities which implement
            the IEEE 802.1 organizationally defined LLDP extension MIB."                  ("The collection of objects which are used to configure the
            IEEE 802.1 organizationally defined LLDP extension
            implementation behavior.

            This group is mandatory for agents which implement the
            IEEE 802.1 organizationally defined LLDP extension."                U"The collection of objects which are used to represent
            IEEE 802.1 organizationally defined LLDP extension associated
            with the Local Device Information.

            This group is mandatory for agents which implement the
            IEEE 802.1 organizationally defined LLDP extension in the
            TX mode."                	"The collection of objects which are used to represent LLDP
            802.1 organizational extension Local Device Information.

            This group is mandatory for agents which implement the
            LLDP 802.1 organizational extension in the RX mode."                                        