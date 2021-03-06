     '"A simple status value for the object."                                                                 v"The Bridge MIB Extension module for managing Priority
        and Multicast Filtering, defined by IEEE 802.1D-1998."�"       Les Bell
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
         Email: kzm@cisco.com" "9908250000Z" )"Initial version, published as RFC 2674."                       �"Indicates the optional parts of IEEE 802.1D and 802.1Q
        that are implemented by this device and are manageable
        through this MIB.  Capabilities that are allowed on a
        per-port basis are indicated in dot1dPortCapabilities." T"ISO/IEC 15802-3 Section 5.2,
        IEEE 802.1Q/D11 Section 5.2, 12.10.1.1.3/b/2"                     �"The value true(1) indicates that Traffic Classes are
        enabled on this bridge.  When false(2), the bridge
        operates with a single priority level for all traffic."                      G"The administrative status requested by management for
        GMRP.  The value enabled(1) indicates that GMRP should
        be enabled on this device, in all VLANs, on all ports
        for which it has not been specifically disabled.  When
        disabled(2), GMRP is disabled, in all VLANs, on all
        ports and all GMRP packets will be forwarded
        transparently.  This object affects both Applicant and
        Registrar state machines.  A transition from disabled(2)
        to enabled(1) will cause a reset of all GMRP state
        machines on all ports."                       o"A table that contains capabilities information about
        every port that is associated with this bridge."                       V"A set of capabilities information about this port
        indexed by dot1dBasePort."                       �"Indicates the parts of IEEE 802.1D and 802.1Q that are
        optional on a per-port basis that are implemented by
        this device and are manageable through this MIB." C"ISO/IEC 15802-3 Section 5.2,
        IEEE 802.1Q/D11 Section 5.2"                         n"A table that contains information about every port that
        is associated with this transparent bridge."                       v"A list of Default User Priorities for each port of a
        transparent bridge.  This is indexed by dot1dBasePort."                       �"The default ingress User Priority for this port.  This
        only has effect on media, such as Ethernet, that do not
        support native User Priority."                       q"The number of egress traffic classes supported on this
        port.  This object may optionally be read-only."                           j"A table of GARP control information about every bridge
        port.  This is indexed by dot1dBasePort."                       -"GARP control information for a bridge port."                       &"The GARP Join time, in centiseconds."                       '"The GARP Leave time, in centiseconds."                       *"The GARP LeaveAll time, in centiseconds."                           t"A table of GMRP control and status information about
        every bridge port.  Augments the dot1dBasePortTable."                       8"GMRP control and status information for a bridge port."                      X"The administrative state of GMRP operation on this port. The
        value enabled(1) indicates that GMRP is enabled on this port
        in all VLANs as long as dot1dGmrpStatus is also enabled(1).
        A value of disabled(2) indicates that GMRP is disabled on
        this port in all VLANs: any GMRP packets received will
        be silently discarded and no GMRP registrations will be
        propagated from other ports. Setting this to a value of
        enabled(1) will be stored by the agent but will only take
        effect on the GMRP protocol operation if dot1dGmrpStatus
        also indicates the value enabled(1).  This object affects
        all GMRP Applicant and Registrar state machines on this
        port.  A transition from disabled(2) to enabled(1) will
        cause a reset of all GMRP state machines on this port."                       e"The total number of failed GMRP registrations, for any
        reason, in all VLANs, on this port."                       Q"The Source MAC Address of the last GMRP message
        received on this port."                                      