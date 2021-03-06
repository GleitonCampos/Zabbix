�-- =============================================================================
-- Copyright (C) 2002-2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:MPLS-BGP-VPN-MIB 
-- Reference:This mib was extracted from draft-ietf-mpls-arch-06.txt
-- Version: V1.11
-- History:
--   V1.1 Add copyright information
--   V1.11 Update description of the MODULE
-- =============================================================================
 g"RFC 2685 [VPN-RFC2685] Fox B., et al, 'Virtual Private
        Networks Identifier', September 1999."]"An identifier that is assigned to each MPLS/BGP VPN and
        is used to uniquely identify it. This is assigned by the
        system operator or NMS and SHOULD be unique throughout
        the MPLS domain. If this is the case, then this identifier
        can then be used at any LSR within a specific MPLS domain
        to identify this MPLS/BGP VPN. It may also be possible to
        preserve the uniqueness of this identifier across MPLS
        domain boundaries, in which case this identifier can then
        be used to uniquely identify MPLS/BGP VPNs on a more global
        basis."               4"Syntax for a route distinguisher and route target."                                                w"This MIB contains managed object definitions for the
         Multiprotocol Label Switching (MPLS)/Border Gateway
         Protocol (BGP) Virtual Private Networks (VPNs) as
         defined in : Rosen, E., Viswanathan, A., and R.
         Callon, Multiprotocol Label Switching Architecture,
         Internet Draft <draft-ietf-mpls-arch-06.txt>,
         August 1999.""        Thomas D. Nadeau
                   tnadeau@cisco.com

                   Luyuan Fang
                   luyuanfang@att.com

                   Stephen Brannon

                   Fabio M. Chiussi
                   fabio@bell-labs.com

                   Joseph Dube
                   jdube@avici.com

                   Martin Tatham
                   martin.tatham@bt.com

                   Harmen Van Der Linde
                   hvdl@att.com

                   Comments and discussion to ppvpn@ietf.org" "200107201200Z" "200107171200Z" "200107101200Z" "200106191200Z" "200105301200Z" "200009301200Z" r"Re-published as PPVPN working group draft. No changes
         between this version and last; just name change."?"Removed mplsVpnVrfRouteTargetImport/Export from route target
         table, and modified indexing to better reflect N <> R
         distribution policy. Also added new object called
	 mplsVpnVrfRouteTargetType which denotes import/export
	 policy for the specified route target.

         Added mplsVpnInterfaceConfRowStatus which allows for
         an interface to be associated with a VPN through SNMP
         configuration.

         Added VrfName to index of VrfInterfaceConfEntry which allows
         interfaces to be associated with the appropriate VRF.

         Modified description of mplsVpnVrfConfMaxPossibleRoutes and
         mplsVpnVrfConfMaxRoutes to allow for undetermined value.

         Removed 'both' enumerated value in mplsVpnVrfBgpNbrRole.

	 Updated example to reflect these changes."�"Renamed mplsNumVrfSecViolationThreshExceeded to
         mplsNumVrfSecIllegalLabelThreshExceeded, and removed
         mplsVpnInterfaceConfIndex from varbind.

         Changed MplsVpnId TC from SnmpAdminString to OCTET STRING.

         Added mplsVpnVrfSecIllegalLabelRcvThresh to
         mplsVpnVrfSecEntry.

         Changed duplicate mplsVpnVrfRouteTargetImport in
         mplsVpnVrfRouteTargetEntry INDEX to
         mplsVpnVrfRouteTargetExport." "Fixed several compile errors." ?"Updated most of document and MIB to reflect comments from WG." "Initial draft version."       -- 20 July 2001 12:00:00 GMT
               7"The number of VRFs which are configured on this node."                       f"The number of VRFs which are active on this node.
        That is, those whose operStatus = Up (1)."                           Y"This table specifies per-interface MPLS capability
        and associated information."                       �"An entry in this table is created by an LSR for
        every interface capable of supporting MPLS/BGP VPN.
        Each entry in this table is meant to correspond to
        an entry in the Interfaces Table."                       P"This is a unique index for an entry in the
        MplsVPNInterfaceConfTable." i"RFC 2233 - The Interfaces Group MIB using SMIv2,
        McCloghrie, K., and F. Kastenholtz, Nov. 1997"                     R"Either the providerEdge(1) (PE) or customerEdge(2)
       (CE) bit MUST be set."                       }"Denotes whether this link participates in a
        carrier-of-carrier's, enterprise, or inter-provider
        scenario."                       #"The IP address of this interface."                       ("The IP address mask of this interface."                      �"The row status for this entry. This value is
        used to create a row in this table, signifying
        that the specified interface is to be associated
        with the specified interface. If this operation
        suceeds, the interface will have been associated,
        otherwise the agent would not allow the association.
        If the agent only allows read-only operations on
        this table, it will create entries in this table
        as they are created."                      p"This table specifies per-interface MPLS/BGP VPN
        VRF Table capability and associated information.
        Entries in this table define VRF routing instances
        associated with MPLS/VPN interfaces. Note that
        multiple interfaces can belong to the same VRF
        instance. The collection of all VRF instances
        comprises an actual VPN."                       �"An entry in this table is created by an LSR for
        every VRF capable of supporting MPLS/BGP VPN. The
        indexing provides an ordering of VRFs per-VPN
        interface."                       ]"The human-readable name of this VPN. This MAY
        be equivalent to the RFC2685 VPN-ID." g"RFC 2685 [VPN-RFC2685] Fox B., et al, `Virtual
        Private Networks Identifier`, September 1999."                     '"The route distinguisher for this VRF."                       M"Denotes the type network prefix in use for the
        PE-CE connections. "                       @"Denotes the network prefix for the
        PE-CE connections."                       Z"Denotes the redistribution of directly connected
      networks into the VRF BGP table."                       L"Denotes the redistribution of static routes
      into the VRF BGP table."                       I"Denotes the redistribution of rip routes
      into the VRF BGP table."                       ["Denotes high-level water marker for the number of
      routes which  this VRF may hold."                       h"Denotes the action when the amount of VPN's routes
      exceed the mplsVpnVrfConfHighRouteThreshold."                       �"Denotes maximum number of routes which this VRF is
      configured to hold. This value MUST be less than or
      equal to mplsVrfMaxPossibleRoutes unless it is set
      to 0."                       V"This variable is used to create, modify, and/or
        delete a row in this table."                       �"This table specifies per-VRF route target association.
           Each entry identifies a connectivity policy supported
           as part of a VPN."                       �" An entry in this table is created by an LSR for
           each route target configured for a VRF supporting
           a MPLS/BGP VPN instance. The indexing provides an
           ordering per-VRF instance."                       '"The route target distribution policy."                       ,"The route target export distribution type."                       "Row status for this entry."                       b"This table specifies per-interface MPLS/BGP neighbor
           addresses for both PEs and CEs."                       �"An entry in this table is created by an LSR for
           every VRF capable of supporting MPLS/BGP VPN. The
           indexing provides an ordering of VRFs per-VPN
           interface."                       #"Denotes the BGP neighbor address."                       T"Denotes the role played by this BGP neighbor
           with respect to this VRF."                       /"Denotes the address family of the PE address."                       4"The Automonous System that the BGP's neighbour in."                        "The action set by SNMP client."                       Y"This variable is used to create, modify, and/or
           delete a row in this table."                          3"This table specifies per-interface MPLS/BGP VPN VRF Table
        routing information. Entries in this table define VRF routing
        entries associated with the specified MPLS/VPN interfaces. Note
        that this table contains both BGP and IGP routes, as both may
        appear in the same VRF." @"1.  RFC 1213 Section 6.6, The IP Group.
        2.  RFC 2096 "                    "An entry in this table is created by an LSR for every route
        present configured (either dynamically or statically) within
        the context of a specific VRF capable of supporting MPLS/BGP
        VPN. The indexing provides an ordering of VRFs per-VPN
        interface."                       �"The destination IP address of this route.
           This object may not take a Multicast (Class D)
           address value."                      �"Indicate the mask to be logical-ANDed with the
           destination  address  before  being compared to
           the value  in  the  mplsVpnVrfRouteDest field.
           For those  systems  that  do  not support
           arbitrary subnet masks, an agent constructs the
           value of the mplsVpnVrfRouteMask by reference
           to the IP Address Class.

           Any assignment (implicit or otherwise) of an
           instance of this object to a value x must be
           rejected if the bit-wise logical-AND of x with
           the value of the corresponding instance of the
           mplsVpnVrfRouteDest object is not equal to
           mplsVpnVrfRouteDest."                       ^"On remote routes, the address of the next
           system en route; Otherwise, 0.0.0.0. ."                       �"The ifIndex value that identifies the local
           interface  through  which  the next hop of this
           route should be reached."                       �"The routing mechanism via which this route was
           learned.  Inclusion of values for gateway rout-
           ing protocols is not  intended  to  imply  that
           hosts should support those protocols."                       j"Row status for this table. It is used according
           to row installation and removal conventions."                                                  