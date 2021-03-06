     �"This TC describes the link aggregation status.

            The bit 'aggCapable(0)' indicates the link is capable of being
            aggregated.

            The bit 'aggEnabled(1)' indicates the link is currently in
            aggregation."               ="This TC describes the Power over Ethernet (PoE) port class."                                        c"The LLDP Management Information Base extension module for
            IEEE 802.3 organizationally defined discovery information.

            In order to assure the uniqueness of the LLDP-MIB,
            lldpXdot3MIB is branched from lldpExtensions using OUI value
            as the node.  An OUI/'company_id' is a 24 bit globally unique
            assigned number referenced by various standards.

            Copyright (C) IEEE (2005).  This version of this MIB module
            is published as Annex G.6.1 of IEEE Std 802.1AB-2005;
            see the standard itself for full legal notices."�"  WG-URL: http://grouper.ieee.org/groups/802/1/index.html
             WG-EMail: stds-802-1@ieee.org

              Contact: Paul Congdon
               Postal: Hewlett-Packard Company
                       8000 Foothills Blvd.
                       Roseville, CA 95747
                       USA
                  Tel: +1-916-785-5753
               E-mail: paul_congdon@hp.com" "200505060000Z" ="Published as part of IEEE Std 802.1AB-2005 initial version."       -- May 06, 2005
     *-- OUI for IEEE 802.3 is 4623 (00-12-0F)
         b"A table that controls selection of LLDP TLVs to be transmitted
            on individual ports."                      v"LLDP configuration information that controls the
            transmission of IEEE 802.3 organizationally defined TLVs on
            LLDP transmission capable ports.

            This configuration object augments the lldpPortConfigEntry of
            the LLDP-MIB, therefore it is only present along with the port
            configuration defined by the associated lldpPortConfigEntry
            entry.

            Each active lldpXdot3PortConfigEntry must be from non-volatile
            storage (along with the corresponding lldpPortConfigEntry)
            after a re-initialization of the management system."                      �"The lldpXdot3PortConfigTLVsTxEnable, defined as a bitmap,
            includes the IEEE 802.3 organizationally defined set of LLDP
            TLVs whose transmission is allowed on the local LLDP agent by
            the network management.  Each bit in the bitmap corresponds
            to an IEEE 802.3 subtype associated with a specific IEEE
            802.3 optional TLV.  The bit 0 is not used since there is
            no corresponding subtype.

            The bit 'macPhyConfigStatus(0)' indicates that LLDP agent
            should transmit 'MAC/PHY configuration/status TLV'.

            The bit 'powerViaMDI(1)' indicates that LLDP agent should
            transmit 'Power via MDI TLV'.

            The bit 'linkAggregation(2)' indicates that LLDP agent should
            transmit 'Link Aggregation TLV'.

            The bit 'maxFrameSize(3)' indicates that LLDP agent should
            transmit 'Maximum-frame-size TLV'.

            The default value for lldpXdot3PortConfigTLVsTxEnable object
            is an empty set, which means no enumerated values are set.

            The value of this object must be restored from non-volatile
            storage after a re-initialization of the management system."  "IEEE Std 802.1AB-2005 10.2.1.1"                         �"This table contains one row per port of Ethernet port
            information (as a part of the LLDP 802.3 organizational
            extension) on the local system known to this agent."                       0"Information about a particular port component."                       �"The truth value used to indicate whether the given port
            (associated with the local system) supports Auto-negotiation." "IEEE Std 802.1AB-2005 G.2.1"                     �"The truth value used to indicate whether port
            Auto-negotiation is enabled on the given port associated
            with the local system." "IEEE Std 802.1AB-2005 G.2.1"                     �"This object contains the value (bitmap) of the
            ifMauAutoNegCapAdvertisedBits object (defined in IETF RFC
            3636) which is associated with the given port on the
            local system." "IEEE Std 802.1AB-2005 G.2.2"                    �"An integer value that indicates the operational MAU type
            of the given port on the local system.

            This object contains the integer value derived from the
            list position of the corresponding dot3MauType as listed
            in IETF RFC 3636 (or subsequent revisions) and is equal
            to the last number in the respective dot3MauType OID.

            For example, if the ifMauType object is dot3MauType1000BaseTHD
            which corresponds to {dot3MauType 29}, the numerical value of
            this field will be 29. For MAU types not listed in RFC 3636
            (or subsequent revisions), the value of this field shall be
            set to zero." "IEEE Std 802.1AB-2005 G.2.3"                     �"This table contains one row per port of power ethernet
            information (as a part of the LLDP 802.3 organizational
            extension) on the local system known to this agent."                       0"Information about a particular port component."                       k"The value that identifies the port Class of the given port
            associated with the local system." "IEEE Std 802.1AB-2005 G.3.1"                     �"The truth value used to indicate whether the MDI power is
            supported on the given port associated with the local system." "IEEE Std 802.1AB-2005 G.3.1"                     �"The truth value used to identify whether MDI power is
            enabled on the given port associated with the local system." "IEEE Std 802.1AB-2005 G.3.1"                    !"The truth value is derived from the value of
            pethPsePortPowerPairsControlAbility object (defined in IETF
            RFC 3621) and is used to indicate whether the pair selection
            can be controlled on the given port associated with the
            local system." "IEEE Std 802.1AB-2005 G.3.1"                     �"This object contains the value of the pethPsePortPowerPairs
            object (defined in IETF RFC 3621) which is associated with
            the given port on the local system." "IEEE Std 802.1AB-2005 G.3.2"                     �"This object contains the value of the
            pethPsePortPowerClassifications object (defined in IETF
            RFC 3621) which is associated with the given port on the
            local system." "IEEE Std 802.1AB-2005 G.3.3"                     �"This table contains one row per port of link aggregation
            information (as a part of the LLDP 802.3 organizational
            extension) on the local system known to this agent."                       N"Link Aggregation information about a particular port
            component."                       z"The bitmap value contains the link aggregation capabilities
            and the current aggregation status of the link." "IEEE Std 802.1AB-2005 G.4.1"                    �"This object contains the IEEE 802.3 aggregated port
            identifier, aAggPortID (IEEE 802.3-2002, 30.7.2.1.1),
            derived from the ifNumber of the ifIndex for the port
            component in link aggregation.

            If the port is not in link aggregation state and/or it
            does not support link aggregation, this value should be set
            to zero." "IEEE Std 802.1AB-2005 G.4.2"                     �"This table contains one row per port of maximum frame
            size information (as a part of the LLDP 802.3 organizational
            extension) on the local system known to this agent."                       P"Maximum Frame Size information about a particular port
            component."                       }"An integer value indicating the maximum supported frame
             size in octets on the given port of the local system." "IEEE Std 802.1AB-2005 G.5.1"                         �"This table contains Ethernet port information (as a part
            of the LLDP 802.3 organizational extension) of the remote
            system."                       ="Information about a particular physical network connection."                       �"The truth value used to indicate whether the given port
            (associated with remote system) supports Auto-negotiation." "IEEE Std 802.1AB-2005 G.2.1"                     �"The truth value used to indicate whether port
            Auto-negotiation is enabled on the given port associated
            with the remote system." "IEEE Std 802.1AB-2005 G.2.1"                     �"This object contains the value (bitmap) of the
            ifMauAutoNegCapAdvertisedBits object (defined in IETF RFC
            3636) which is associated with the given port on the
            remote system." "IEEE Std 802.1AB-2005 G.2.2"                    �"An integer value that indicates the operational MAU type
            of the sending device.

            This object contains the integer value derived from the
            list position of the corresponding dot3MauType as listed in
            in IETF RFC 3636 (or subsequent revisions) and is equal
            to the last number in the respective dot3MauType OID.

            For example, if the ifMauType object is dot3MauType1000BaseTHD
            which corresponds to {dot3MauType 29}, the numerical value of
            this field will be 29. For MAU types not listed in RFC 3636
            (or subsequent revisions), the value of this field shall be
            set to zero." "IEEE Std 802.1AB-2005 G.2.3"                     �"This table contains Ethernet power information (as a part
            of the LLDP 802.3 organizational extension) of the remote
            system."                       ="Information about a particular physical network connection."                       l"The value that identifies the port Class of the given port
            associated with the remote system." "IEEE Std 802.1AB-2005 G.3.1"                     �"The truth value used to indicate whether the MDI power
            is supported on the given port associated with the remote
            system." "IEEE Std 802.1AB-2005 G.3.1"                     �"The truth value used to identify whether MDI power is
            enabled on the given port associated with the remote system." "IEEE Std 802.1AB-2005 G.3.1"                    ""The truth value is derived from the value of
            pethPsePortPowerPairsControlAbility object (defined in IETF
            RFC 3621) and is used to indicate whether the pair selection
            can be controlled on the given port associated with the
            remote system." "IEEE Std 802.1AB-2005 G.3.1"                     �"This object contains the value of the pethPsePortPowerPairs
            object (defined in IETF RFC 3621) which is associated with
            the given port on the remote system." "IEEE Std 802.1AB-2005 G.3.2"                     �"This object contains the value of the
            pethPsePortPowerClassifications object (defined in IETF
            RFC 3621) which is associated with the given port on the
            remote system." "IEEE Std 802.1AB-2005 G.3.3"                     �"This table contains port link aggregation information
            (as a part of the LLDP IEEE 802.3 organizational extension)
            of the remote system."                       Q"Link Aggregation information about remote system's port
            component."                       z"The bitmap value contains the link aggregation capabilities
            and the current aggregation status of the link." "IEEE Std 802.1AB-2005 G.4.1"                    �"This object contains the IEEE 802.3 aggregated port
            identifier, aAggPortID (IEEE Std 802.3-2002, 30.7.2.1.1),
            derived from the ifNumber of the ifIndex for the port
            component associated with the remote system.

            If the remote port is not in link aggregation state and/or
            it does not support link aggregation, this value should be
            zero." "IEEE Std 802.1AB-2005 G.4.2"                     �"This table contains one row per port of maximum frame
            size information (as a part of the LLDP IEEE 802.3 organizational
            extension) of the remote system."                       P"Maximum Frame Size information about a particular port
            component."                       �"An integer value indicating the maximum supported frame
             size in octets on the port component associated with the
             remote system." "IEEE Std 802.1AB-2005 G.5.1"                             v"The compliance statement for SNMP entities which implement
            the LLDP 802.3 organizational extension MIB."                   �"The collection of objects which are used to configure the
            LLDP 802.3 organizational extension implementation behavior.

            This group is mandatory for agents which implement the
            LLDP 802.3 organizational extension."                	"The collection of objects which are used to represent LLDP
            802.3 organizational extension Local Device Information.

            This group is mandatory for agents which implement the
            LLDP 802.3 organizational extension in the TX mode."                	"The collection of objects which are used to represent LLDP
            802.3 organizational extension Local Device Information.

            This group is mandatory for agents which implement the
            LLDP 802.3 organizational extension in the RX mode."                                        