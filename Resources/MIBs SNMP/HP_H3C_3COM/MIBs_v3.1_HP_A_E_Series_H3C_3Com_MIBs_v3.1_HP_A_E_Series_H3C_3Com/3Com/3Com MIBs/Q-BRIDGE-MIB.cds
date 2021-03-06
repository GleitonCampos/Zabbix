    s"Each octet within this value specifies a set of eight
        ports, with the first octet specifying ports 1 through
        8, the second octet specifying ports 9 through 16, etc.
        Within each octet, the most significant bit represents
        the lowest numbered port, and the least significant bit
        represents the highest numbered port.  Thus, each port
        of the bridge is represented by a single bit within the
        value of this object.  If that bit has a value of '1'
        then that port is included in the set of ports; the port
        is not included if its bit has a value of '0'."               /"A 12-bit VLAN ID used in the VLAN Tag header."              ]"A value used to index per-VLAN tables: values of 0 and
        4095 are not permitted; if the value is between 1 and
        4094 inclusive, it represents an IEEE 802.1Q VLAN-ID with
        global scope within a given bridged domain (see VlanId
        textual convention).  If the value is greater than 4095
        then it represents a VLAN with scope local to the
        particular agent, i.e. one without a global VLAN-ID
        assigned to it. Such VLANs are outside the scope of
        IEEE 802.1Q but it is convenient to be able to manage them
        in the same way using this MIB."                                                                 w"The VLAN Bridge MIB module for managing Virtual Bridged
        Local Area Networks, as defined by IEEE 802.1Q-1998."�"       Les Bell
        Postal: 3Com Europe Ltd.
                3Com Centre, Boundary Way
                Hemel Hempstead, Herts. HP2 7YU
                UK
         Phone: +44 1442 438025
         Email: Les_Bell@3Com.com

                Andrew Smith
        Postal: Extreme Networks
                3585 Monroe St.
                Santa Clara CA 95051
                USA
         Phone: +1 408 579 2821
         Email: andrew@extremenetworks.com

                Paul Langille
        Postal: Newbridge Networks
                5 Corporate Drive
                Andover, MA 01810
                USA
         Phone: +1 978 691 4665
         Email: langille@newbridge.com

                Anil Rijhsinghani
        Postal: Cabletron Systems
                50 Minuteman Road
                Andover, MA 01810
                USA
         Phone: +1 978 684 1295
         Email: anil@cabletron.com

                Keith McCloghrie
        Postal: cisco Systems, Inc.
                170 West Tasman Drive
                San Jose, CA 95134-1706
                USA
         Phone: +1 408 526 5260
         Email: kzm@cisco.com" "9908250000Z" )"Initial version, published as RFC 2674."                       G"The version number of IEEE 802.1Q that this device
        supports." #"IEEE 802.1Q/D11 Section 12.10.1.1"                     E"The maximum IEEE 802.1Q VLAN ID that this device
        supports." !"IEEE 802.1Q/D11 Section 9.3.2.3"                     M"The maximum number of IEEE 802.1Q VLANs that this
        device supports." #"IEEE 802.1Q/D11 Section 12.10.1.1"                     V"The current number of IEEE 802.1Q VLANs that are
        configured in this device." ""IEEE 802.1Q/D11 Section 12.7.1.1"                    %"The administrative status requested by management for
        GVRP.  The value enabled(1) indicates that GVRP should
        be enabled on this device, on all ports for which it has
        not been specifically disabled.  When disabled(2), GVRP
        is disabled on all ports and all GVRP packets will be
        forwarded transparently.  This object affects all GVRP
        Applicant and Registrar state machines.  A transition
        from disabled(2) to enabled(1) will cause a reset of all
        GVRP state machines on all ports."                          "A table that contains information about unicast entries
        for which the device has forwarding and/or filtering
        information.  This information is used by the
        transparent bridging function in determining how to
        propagate a received frame."  "IEEE 802.1Q/D11 Section 12.7.7"                     �"Information about a specific unicast MAC address for
        which the device has some forwarding and/or filtering
        information."                       b"A unicast MAC address for which the device has
        forwarding and/or filtering information."                      �"Either the value '0', or the port number of the port on
        which a frame having a source address equal to the value
        of the corresponding instance of dot1qTpFdbAddress has
        been seen.  A value of '0' indicates that the port
        number has not been learned but that the device does
        have some forwarding/filtering information about this
        address (e.g. in the dot1qStaticUnicastTable).
        Implementors are encouraged to assign the port value to
        this object whenever it is learned even for addresses
        for which the corresponding value of dot1qTpFdbStatus is
        not learned(3)."                      "The status of this entry.  The meanings of the values
        are:
            other(1) - none of the following.  This may include
                the case where some other MIB object (not the
                corresponding instance of dot1qTpFdbPort, nor an
                entry in the dot1qStaticUnicastTable) is being
                used to determine if and how frames addressed to
                the value of the corresponding instance of
                dot1qTpFdbAddress are being forwarded.
            invalid(2) - this entry is no longer valid (e.g., it
                was learned but has since aged out), but has not
                yet been flushed from the table.
            learned(3) - the value of the corresponding instance
                of dot1qTpFdbPort was learned and is being used.
            self(4) - the value of the corresponding instance of
                dot1qTpFdbAddress represents one of the device's
                addresses.  The corresponding instance of
                dot1qTpFdbPort indicates which of the device's
                ports has this address.
            mgmt(5) - the value of the corresponding instance of
                dot1qTpFdbAddress is also the value of an
                existing instance of dot1qStaticAddress."                      R"A table containing filtering information for VLANs
        configured into the bridge by (local or network)
        management, or learnt dynamically, specifying the set of
        ports to which frames received on a VLAN for this FDB
        and containing a specific Group destination address are
        allowed to be forwarded."                      V"Filtering information configured into the bridge by
        management, or learnt dynamically, specifying the set of
        ports to which frames received on a VLAN and containing
        a specific Group destination address, are allowed to be
        forwarded.  The subset of these ports learnt dynamically
        is also provided."                       l"The destination Group MAC address in a frame to which
        this entry's filtering information applies."                       "The complete set of ports, in this VLAN, to which
        frames destined for this Group MAC address are currently
        being explicitly forwarded.  This does not include ports
        for which this address is only implicitly forwarded, in
        the dot1qForwardAllPorts list."                       �"The subset of ports in dot1qTpGroupEgressPorts which
        were learnt by GMRP or some other dynamic mechanism, in
        this Filtering database."                           �"A table containing static configuration information for
        each VLAN configured into the device by (local or
        network) management.  All entries are permanent and will
        be restored after the device is reset."                       e"Static information for a VLAN configured into the
        device by (local or network) management."                       W"An administratively assigned string, which may be used
        to identify the VLAN." #"IEEE 802.1Q/D11 Section 12.10.2.1"                    "The set of ports which are permanently assigned to the
        egress list for this VLAN by management.  Changes to a
        bit in this object affect the per-port per-VLAN
        Registrar control for Registration Fixed for the
        relevant GVRP state machine on each port.  A port may
        not be added in this set if it is already a member of
        the set of ports in dot1qVlanForbiddenEgressPorts.  The
        default value of this object is a string of zeros of
        appropriate length, indicating not fixed." ."IEEE 802.1Q/D11 Section 12.7.7.3, 11.2.3.2.3"                    h"The set of ports which are prohibited by management
        from being included in the egress list for this VLAN.
        Changes to this object that cause a port to be included
        or excluded affect the per-port per-VLAN Registrar
        control for Registration Forbidden for the relevant GVRP
        state machine on each port.  A port may not be added in
        this set if it is already a member of the set of ports
        in dot1qVlanStaticEgressPorts.  The default value of
        this object is a string of zeros of appropriate length,
        excluding all ports from the forbidden set." ."IEEE 802.1Q/D11 Section 12.7.7.3, 11.2.3.2.3"                    b"The set of ports which should transmit egress packets
        for this VLAN as untagged.  The default value of this
        object for the default VLAN (hwdot1qVlanIndex = 1) is a string
        of appropriate length including all ports.  There is no
        specified default for other VLANs.  If a device agent cannot
        support the set of ports being set then it will reject the
        set operation with an error. An example might be if a
        manager attempts to set more than one VLAN to be untagged
        on egress where the device does not support this IEEE 802.1Q
        option." #"IEEE 802.1Q/D11 Section 12.10.2.1"                     1"This object indicates the status of this entry."                       k"A table containing per port control and status
        information for VLAN configuration in the device."                       r"Information controlling VLAN configuration for a port
        on the device.  This is indexed by dot1dBasePort."                       m"The PVID, the VLAN ID assigned to untagged frames or
        Priority-Tagged frames received on this port." #"IEEE 802.1Q/D11 Section 12.10.1.1"                    �"When this is admitOnlyVlanTagged(2) the device will
        discard untagged frames or Priority-Tagged frames
        received on this port.  When admitAll(1), untagged
        frames or Priority-Tagged frames received on this port
        will be accepted and assigned to the PVID for this port.

        This control does not affect VLAN independent BPDU
        frames, such as GVRP and STP.  It does affect VLAN
        dependent BPDU frames, such as GMRP." #"IEEE 802.1Q/D11 Section 12.10.1.3"                    w"When this is true(1) the device will discard incoming
        frames for VLANs which do not include this Port in its
        Member set.  When false(2), the port will accept all
        incoming frames.

        This control does not affect VLAN independent BPDU
        frames, such as GVRP and STP.  It does affect VLAN
        dependent BPDU frames, such as GMRP." #"IEEE 802.1Q/D11 Section 12.10.1.4"                    �"The state of GVRP operation on this port.  The value
        enabled(1) indicates that GVRP is enabled on this port,
        as long as dot1qGvrpStatus is also enabled for this
        device.  When disabled(2) but dot1qGvrpStatus is still
        enabled for the device, GVRP is disabled on this port:
        any GVRP packets received will be silently discarded and
        no GVRP registrations will be propagated from other
        ports.  This object affects all GVRP Applicant and
        Registrar state machines on this port.  A transition
        from disabled(2) to enabled(1) will cause a reset of all
        GVRP state machines on this port."                       W"The total number of failed GVRP registrations, for any
        reason, on this port."                       Q"The Source MAC Address of the last GVRP message
        received on this port."                       �"The type of constraint set to which a VLAN belongs, if
        there is not an explicit entry for that VLAN in
        dot1qLearningConstraintsTable.  The types are as defined
        for dot1qConstraintType."                                          