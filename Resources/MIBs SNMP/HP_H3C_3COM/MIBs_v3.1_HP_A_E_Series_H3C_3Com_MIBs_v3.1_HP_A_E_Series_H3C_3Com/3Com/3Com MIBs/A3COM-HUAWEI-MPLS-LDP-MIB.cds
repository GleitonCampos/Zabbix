ý-- =============================================================================
-- Copyright (C) 2002-2003 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:MPLS-BGP-VPN-MIB 
-- Reference:This mib was extracted from Draft-ietf-mpls-ldp-mib-01
-- Version: V1.6
-- History:
--  VERSION    AUTHOR/          Change Description
--  OLD/NEW     DATE
--                                                  
--  #/1.1     Lingesh M        + Initial create. 
--             27/08/99
--  #/1.2     27/09/99         + Replaced the MIB objects
--                                  - hwMplsLdpLsrMaxIngressCrlspTnls
--                                  - hwMplsLdpLsrMaxInbetwnCrlspTnls
--                               with hwMplsLdpLsrMaxCrlspTnls
--  1.2/1.3   19/10/99         + Added hwMplsLdpPeerType in Peer Table.
--            04/10/99         + Added hwMplsLdpEntityIfTable.
--  1.3/1.4   23/11/99         + Added mib object for Hello Hold Time in Entity
--                               Table, modified Cr-lsp Tnl index of type
--                               read-create to not-accessible.
--                             + Removed hwMplsLdpSessionRowStatus mib-object.
--  
--   1.1      03/01/2k         + Huawei MPLS Release 1.0.0.0
--             Naren             
-- 
--   1.2      27/01/2k         + Modified for MPLS Implementation for Huawei
--             Naren             Following objects are added in the Incarnation table
--                                 hwMplsLdpLsrMaxVcmCapability                  
--                                 hwMplsLdpLsrVcmPathVecInAllLblMapPresent      
--                                 hwMplsLdpLsrRequestRetrytimerValue            
--                                 hwMplsLdpLsrNumOfRequestRetryAttempts         
--                               Following Notifications are added
--                                 hwMplsLdpIncarnUpEventFailure
--                                 hwMplsLdpIncarnDownEventFailure
--                                 hwMplsLdpEntityUpEventFailure
--                                 hwMplsLdpEntityDownEventFailure
-- 
--   1.3      03/04/2k         + Changed FS related identification to hw 
--             David             related identification.	
--   1.4      03/14/2003       add hwMplsLdpSessionUpEventFailure and hwMplsLdpSessionDownEventFailure
--   V1.5 2004-10-12 updated by gaolong
--        Change SYNTAX clause value from INTEGER to Unsigned because the value range is (1..4294967295).
--        Change MAX-ACCESS clause value of hwMplsLdpCrlspTnlIndex to accessible-for-notify
--        because this index node is used when sending notification.
--   V1.6 2004-11-5  updated by liuxiaolong
--        Change DEFVAL clause value of hwMplsLdpLsrHopCountLimit to 32.
-- ====================================================================================
--
-- Full Copyright Notice of the mib that was extracted from Draft-ietf-mpls-ldp-mib-01 as followsÂ£Âº
--
--Copyright (C) The Internet Society (1999). All Rights Reserved.
--
--
--   This document and translations of it may be copied and furnished to
--   others, and derivative works that comment on or otherwise explain it
--   or assist in its implementation may be prepared, copied, published
--   and distributed, in whole or in part, without restriction of any
--   kind, provided that the above copyright notice and this paragraph are
--   included on all such copies and derivative works.  However, this
--   document itself may not be modified in any way, such as by removing
--   the copyright notice or references to the Internet Society or other
--   Internet organizations, except as needed for the  purpose of
--   developing Internet standards in which case the procedures for
--   copyrights defined in the Internet Standards process must be
--   followed, or as required to translate it into languages other than
--   English.
--
--   The limited permissions granted above are perpetual and will not be
--   revoked by the Internet Society or its successors or assigns.
--
--   This document and the information contained herein is provided on an
--   "AS IS" basis and THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
--   TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
--   BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION
--   HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF
--   MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
--
--  HuaweiMPLS Label Distribution Protocol MIB Definitions
                 M"RFC  1700   Assigned Numbers, Reynolds and  Postel,
             Oct. 1994" Ü"An address family.  Values are defined in RFC 1700 -
             Assigned Numbers.  All values may not be relevant in
             all contexts when used in this MIB, but are included
             for completeness."               ¬"The Label Switch Router (LSR) identifier
             is the first 4 bytes or the IP Address component
             of the Label Distribution Protocol (LDP) identifier."              "The VPI value for a VPL. The value VPI=0 is not
              used for a VPL not associated with a VCL. For ATM
              UNIs supporting VPCs the VPI value ranges from 1
              to 255. For ATM UNIs supporting VCCs the VPI value
              ranges from 0 to 255.  The maximum VPI value
              cannot exceed the value allowable by
              atmInterfaceMaxVpiBits defined in ATM-MIB."               "The VCI value for a VCL. The maximum VCI value
              cannot exceed the value allowable by
              atmInterfaceMaxVciBits defined in ATM-MIB."                              @"The LDP identifier is a six octet quantity
             which is used to identify an Label Switch Router
             (LSR) label space.

             The first four octets encode an IP address
             assigned to the LSR, and the last two octets
             identify a specific label space within the LSR."             ó"1.  MPLS  Label Stack Encoding, Rosen et al,  draft-
             ietf-mpls-label-encaps-04.txt, April 1999.
            2.  Use  of  Label Switching on Frame Relay Networks,
             Conta et al, draft-ietf-mpls-fr-03.txt, Nov. 1998."×"Represents an MPLS label.  Note that the contents of
             a  label  field are interpreted in an interface-type
             specific fashion.  For example, the label carried in
             the MPLS shim header is 20 bits wide and the top  12
             bits  must  be zero.  The frame relay label  can  be
             either 10, 17 or 23 bits wide depending on the  size
             of the DLCI field size and the top 22, 15, or 9 bits
             must  be  zero, respectively.  For an ATM interface,
             the  lowermost 16 bits are interpreted as  the  VCI,
             the  next  8 bits as the VPI and the remaining  bits
             must  be  zero.   Also  note the  permissible  label
             values  are  also a function of the interface  type.
             For  example,  the value 3 has special semantics  in
             the  control plane for an MPLS shim header label and
             is not a valid label value in the datapath."                               "Index into mplsTunnelTable."               ;"The value of an network layer or data link layer address."                                                                                 "All rights reserved" è"S. Manikantan,
                       Huawei Software Pvt. Ltd.,
                       481, Mount Road,
                       Nandanam. CHENNAI-35
                       INDIA
                       manis@Huawei.futsoft.com" "9611082155Z"#"The MIB for HuaweiMPLS LDP module.
                       This MIB has been derived from the MPLS Working 
                       group LDP MIB <drst-ietf-mpls-ldp-mib-01.txt> and
                       MPLS Working group TE MIB <draft-ietf-mpls-te-mib
                       -01.txt>."       -- June 30, 1999 at 12:00 GMT
              b"HuaweiMPLS provides support for multiple incarnations of the 
              MPLS Stack in a target. The LSR defined in the standard <IETF
              DRAFT> MIB is treated as an incarnation in this MIB. Using a
              local policy the Network administrator must group the LDP Entities
              that should be placed in an incarnation."                      ±"An entry in this table represents an LSR incarnation.
              All the entries in this table are created initially when the 
              LDP is initiated. The row status of each entry will be in 
              'notInService' state initially. The row status must be set to
              'active' after the necessary configurations are complete with
              respect to an incarnation.

              Currenlty the LSR ID of the incarnation is the only mandatory
              parameter that must be set before the rowStatus is set to 
              'active'.

              An LSR Incarnation Entity is uniquely indexed by its Incarnation
              Identifier."                       "The LSR's Identifier."                       ò"A indication of whether this LSR supports loop detection.  A 
             value of 'true' indicates this LSR does support loop detection.  
             A value of 'false' indicates this LSR does not support
             loop detection."                       ²"To enable loop detection the value of this object should be 
             'enabled(1)'.  Otherwise, to turn off loop detection, set this 
             value to 'disabled(2)'."                      "This object only has meaning if hwMplsLdpLsrLoopDetectionPresent 
             has the value of 'true'.

             The value of this object represents the limit of path vectors which
             this LSR uses to treat the message as if it had traversed a loop."                      "This object only has meaning if hwMplsLdpLsrLoopDetectionPresent 
             has the value of 'true'.

             The value of this object represents the limit on the Hop Count 
             which this LSR uses to treat the message as if it had traversed a 
             loop."                      z"A indication of whether this LSR supports loop prevention.  A 
             value of 'true' indicates this LSR does support loop prevention.  
             A value of 'false' indicates this LSR does not support loop 
             prevention.

             Current release of HuaweiMPLS does not provide support to assign
             this MIB object with a value 'true'."                      ;"To enable loop prevention the value of this object should be 
             'enabled(1)'.  Otherwise, to turn off loop prevention, set this 
             value to 'disabled(2)'.

             Current release of HuaweiMPLS does not provide support to assign
             this MIB object with a value 'enabled'."                      v"The LSR can be configured to use either conservative or liberal 
              label retention mode.

             If the value of this object is conservative(1) then advertized 
             label mappings are retained only if they will be used to forward 
             packets, i.e. if label came from a valid next hop.  If the value of
             this object is liberal(2) then all advertized label mappings are 
             retained whether they are from a valid next hop or not.

             Current release of HuaweiMPLS does not provide support to assign
             this MIB object with a value 'liberal'."                       Q"The incarnation acts as index to all the elements in this
              table."                       ^"The maximum number of LDP entities that can be supported by this
              Incarnation."                       b"The maximum number of Local LDP peers that can be supported by 
              this Incarnation."                       c"The maximum number of Remote LDP peers that can be supported by 
              this Incarnation."                       k"The maximum number of Label enabled Interfaces that can be 
              supported by this Incarnation."                       g"The maximum number of Label Switched Paths that can be 
              supported by this Incarnation."                       W"The maximum number of CRLSPs that can be supported by this
             Incarnation."                       Y" The maximum number of ER-Hops that can be supported in a 
              CRLSP tunnel."                       "An object that allows entries in this table to
                  be created and deleted using the
                  RowStatus convention."                       "  "                       "  "                       "  "                       "  "                            "This table contains information about the
             MPLS Label Distribution Protocol Entities which
             exist on this Label Switch Router (LSR)."                      "An entry in this table represents an LDP entity.
             An entry can be created by a network administrator
             or by an SNMP agent as instructed by LDP.

             An LPD Entity is uniquely indexed by its LPD
             Identifier."                      "The LDP identifier which uniquely identifies
             the LDP Entity.  This is s six octet quantity
             which is used to identify an Label Switch Router
             (LSR) label space.

             The first four octets encode an IP address
             assigned to the LSR, and the last two octets
             identify a specific label space within the
             LSR." 0"LDP Specification, Section on LDP Identifiers."                    Ã"The type of label spaces associated with this
             LDP Entity.  The values are

                'unknown(1)'        The type of label space is
                                    not known.

                'perInterface(2)'   The type of label space is
                                    tied to an interface.
                'perPlatform(3)'    The type of label space is
                                    tied to the platform." -"LDP Specification, Section on Label Spaces."                     L"The Default VPI value used in the label for the default
             VPI."                       L"The Default VCI value used in the label for the default
             VCI."                       4"VPI value of the VCC supporting unlabeled traffic."                       4"VCI value of the VCC supporting unlabeled traffic."                       "Sets the merge capability for this LDP entity.

              Current Release of HuaweiMPLS does not provide support for
              any kind of Merge." +"draft-ietf-mpls-ldp-04.txt, Section 3.5.3"                     1"Sets the VC directionality for this LDP entity." +"draft-ietf-mpls-ldp-04.txt, Section 3.5.3"                     $"The well known LDP Discovery Port."                       X"The maximum transmission unit (MTU) that was configured
             for this entity."                       d"The two octet value which is the proposed keep alive hold
             timer for this LDP Entity."                      "When attempting to establish a session with a
             given Peer, the given LDP Entity should
             send out a notification when exceeding this threshold.
             A value of 0 (zero) for this object
             indicates that the threshold is infinity.
             In other words, a notification will not
             be sent if the value of this object is 0 (zero)."                       Ñ"For any given LDP session, the method of
             label distribution must be specified.
 
             Current release of HuaweiMPLS does not provide support for
             'downstreamUnsolicited'." #"draft-ietf-mpls-arch-04.txt [20]."                     ´"For any given LDP session, the method of
             label allocation must be specified. Label can be allocated
             in either ordered mode or in the independent mode."                       _"The two octet value which is the proposed hello hold
             timer for this LDP Entity."                       "An object that allows entries in this table to
                  be created and deleted using the
                  RowStatus convention."                      "This table contains information about the
             interfaces that are associated with an LDP Entity.
             There should be atleast one interface associated with
             each LDP Entity. If the LDP Entity supports 'per interface
             based label space' label type then, atmost one interface can be 
             associated with the LDP entity. If the LDP Entity supports
             'per platform based label space' label type then, more than one
             interface can be associated with the LDP Entity."                      "An entry in this table represents an Interface that is
             associated with a LDP entity.

             An entry can be created by a network administrator
             or by an SNMP agent as instructed by LDP.

             An interface (row in this table) can be created/deleted only when 
             the associted LDP Entity row status has the value notInService 
             or notReady."                       Í"Identifier that uniquely identifies the Interface with 
             respect to an LDP Entity.
             
             The ifIndex value corresponds to the IfIndex value of the
             MIB-II"                       1"The IPv4 address associated with the interface."                       "An object that allows entries in this table to
                  be created and deleted using the
                  RowStatus convention."                      |"The MPLS LDP Entity Configurable ATM Label Range Table.
             The purpose of this table is to provide a mechanism
             for specifying a contiguous range of vpi's
             with a contiguous range of vci's, or a 'label range'
             for LDP Entities.

             LDP Entities which use ATM must have at least one
             entry in this table."                      Z"A row in the LDP Entity Configurable ATM Label
             Range Table.  One entry in this table contains
             information on a single range of labels
             represented by the configured Upper and Lower
             Bounds VPI/VCI pairs.
             NOTE:  The ranges for a specific LDP Entity
             are UNIQUE and non-overlapping.  For example,
             for a specific LDP Entity index, there could
             be one entry having ConfLowerBound vpi/vci == 0/32, and
             ConfUpperBound vpi/vci == 0/100, and a second entry for this
             same interface with ConfLowerBound vpi/vci == 0/101 and
             ConfUpperBound vpi/vci == 0/200.  However, there could not be
             a third entry with ConfLowerBound vpi/vci == 0/200 and
             ConfUpperBound vpi/vci == 0/300 because this label range overlaps
             with the second entry (i.e. both entries now have 0/200).

             A row will not be created unless a unique and non-overlapping
             range is specified.  Thus, row creation implies a one-shot
             row creation of LDP EntityID and ConfLowerBound vpi/vci and
             ConfUpperBound vpi/vci.  At least one label range entry
             for a specific LDP Entity MUST include the default VPI/VCI
             values denoted in the LDP Entity Table."                       3"The minimum VPI number configured for this range."                       3"The minimum VCI number configured for this range."                       3"The maximum VPI number configured for this range."                       3"The maximum VCI number configured for this range."                       "An object that allows entries in this
                  table to be created and deleted using
                  the RowStatus convention."                       ×"This table is a read-only table which augments
             the MplsLdpConfEntityTable.  The purpose of this
             table is to keep statistical information about
             the LDP Entities on the LSR."                       Y"A row in this table contains statistical information
             about an LDP Entity."                       L"A count of the total attempted sessions for
             this LDP Entity."                           z"Information about LDP peers which have been discovered
             by the LDP Entities that are managed by this agent."                       ""Information about a single Peer."                       ^"An identifier for the LDP peer that is unique within the
              scope of this agent."                       &"The LDP identifier of this LDP Peer."                       µ"The type of the internetwork layer address of this
             LDP peer. This object indicates how the value of
             hwMplsLdpPeerInternetworkAddr is to be interpreted."                       ?"The value of the internetwork layer address of this LDP peer."                       L"The default maximum transmission unit (MTU) of the
             LDP Peer."                       «"The two octet unsigned non zero INTEGER that indicates
             the number of seconds that this Peer proposes for the
             value of the KeepAlive Interval."                       ^"For any given LDP session, the method of
             label distribution must be specified." #"draft-ietf-mpls-arch-05.txt [20]."                     ;"Indicates whether a peer is a local peer or a remote peer"                       u"An object that allows entries in this table to be created
             and deleted using the RowStatus convention."                      d"The MPLS LDP Peer Configurable ATM Label Range Table.
             The purpose of this table is to provide a mechanism
             for specifying a contiguous range of vpi's with a contiguous
             range of vci's, or a 'label range' for LDP Peers.
             LDP Peers which use ATM must have at least one
             entry in this table."                      D"A row in the LDP Peer Configurable ATM Label Range Table.
             One entry in this table contains information
             on a single range of labels represented by
             the configured Upper and Lower Bounds VPI/VCI pairs.

             NOTE:  The ranges for a specific LDP Peer
             are UNIQUE and non-overlapping.  For example,
             for a specific LDP Peer index, there could
             be one entry having ConfLowerBound vpi/vci == 0/32, and
             ConfUpperBound vpi/vci == 0/100, and a second entry for this
             same interface with ConfLowerBound vpi/vci == 0/101 and
             ConfUpperBound vpi/vci == 0/200.  However, there could not be
             a third entry with ConfLowerBound vpi/vci == 0/200 and
             ConfUpperBound vpi/vci == 0/300 because this label range overlaps
             with the second entry (i.e. both entries now have 0/200).

             A row will not be created unless a unique and non-overlapping
             range is specified.  Thus, row creation implies a one-shot
             row creation of LDP PeerIndex and ConfLowerBound vpi/vci and
             ConfUpperBound vpi/vci.  At least one label range entry
             for a specific LDP Peer MUST include the default VPI/VCI
             values denoted in the LDP Peer Table."                       3"The minimum VPI number configured for this range."                       3"The minimum VCI number configured for this range."                       3"The maximum VPI number configured for this range."                       3"The maximum VCI number configured for this range."                           K"A table of Sessions between the LDP Entities and
             LDP Peers."                       u"An entry in this table represents information on a
             single session between an LDP Entity and LDP Peer."                       c"An unique identifier for this entry such that it
             identifies a specific LDP Session."                       "The LDP Session identifier."                       Q"The version of the LDP Protocol which
                  this session is using."                       6"The keep alive hold time remaining for this session."                       "An indication of whether the LDP Entity associated with
             this session is acting in an 'active' role or
             a 'passive' role."                       "The current state of the session, all of the
             states 1 - 5 are based on the state machine for
             session negotiation behavior."                       ("The minimum VPI number for this range."                       ("The minimum VCI number for this range."                       ("The maximum VPI number for this range."                       ("The maximum VCI number for this range."                           ,"A table of Hello Adjacencies for Sessions."                       x"Each row represents a single LDP Hello Adjacency.
             An LDP Session can have one or more Hello adjacencies."                       ""An identifier for the adjacency."                       ."The time remaining for this Hello Adjacency."                           É"The hwMplsLdpCrlspTnlTable allows new CRLSP MPLS tunnels
             to be created. The ER hops associated with a CRLSP tunnel
             are to be configured using the hwMplsLdpCrlspErHopTable."                       "An  entry  in this table represents an CRLSP MPLS  tunnel.
             An  entry  can be created by a network administrator."                       "Uniquely identifies this row."                       t"The 'canonical' name assigned to the tunnel that can
             be  used  to refer to it on the 'console' port."                       o"Whether   this  tunnel  is  unidirectional-incoming,
             unidirectional-outgoing, or bidirectional."                       L"The  signaling protocol, if any, that  set  up  this
             tunnel."                       $"The setup priority of this tunnel."!"Extensions to RSVP for LSP Tunnels, Awduche  et  al,
             Internet  Draft <draft-mpls-rsvp-lsp-tunnel-02.txt>,
             March  1999., Constraint-Based LSP Setup using  LDP,
             Jamoussi,  Internet  Draft  <draft-ietf-mpls-cr-ldp-
             01.txt>, Feb. 1999."                     '"The holding priority for this tunnel."!"  Extensions to RSVP for LSP Tunnels, Awduche et al,
             Internet  Draft <draft-mpls-rsvp-lsp-tunnel-02.txt>,
             March  1999., Constraint-Based LSP Setup using  LDP,
             Jamoussi,  Internet  Draft  <draft-ietf-mpls-cr-ldp-
             01.txt>, Feb. 1999."                     \"The peak rate - the maximum rate at which traffic will be sent on the
             CRLSP." "Section 4.3.1.2, Constraint-Based LSP Setup using LDP, Jamoussi, et.
             al, <draft-ietf-mpls-crldp-02.txt>, August 1999."                     u"The peak burst size - the maximum burst size of the traffic that can 
             occur in the established CRLSP." "Section 4.3, Constraint-Based LSP Setup using LDP, Jamoussi, et.
             al, <draft-ietf-mpls-crldp-02.txt>, August 1999."                     c"The committed rate - the committed rate at which traffic will be sent on the
             CRLSP." "Section 4.3.1.3, Constraint-Based LSP Setup using LDP, Jamoussi, et.
             al, <draft-ietf-mpls-crldp-02.txt>, August 1999."                     "The committed burst size - the committed burst size of the traffic 
             that will be handled in the established CRLSP." "Section 4.3, Constraint-Based LSP Setup using LDP, Jamoussi, et.
             al, <draft-ietf-mpls-crldp-02.txt>, August 1999."                     "The Excess burst size - the excess burst size limit to be used
             for traffic conditioning at the ingress of the CRLSP." "Section 4.3.1.4, Constraint-Based LSP Setup using LDP, Jamoussi, et.
             al, <draft-ietf-mpls-crldp-02.txt>, August 1999."                     ]"Indicates  whether  the loose-routed  hops  of  this
             tunnel are to be pinned."                       <"Indicates the frequency of usage of the established CRLSP." "Section 4.3.1.1, Constraint-Based LSP Setup using LDP, Jamoussi, et.
             al, <draft-ietf-mpls-crldp-02.txt>, August 1999."                     5"Indicates the weight that is the established CRLSP." "Section 4.3, Constraint-Based LSP Setup using LDP, Jamoussi, et.
             al, <draft-ietf-mpls-crldp-02.txt>, August 1999."                     Ô"For controlling the state of this row.
             The status can be set to 'active' only when atleast one ERHOP
             is created in the hwMplsLdpErHopTable, associated with this
             tunnel."                      É"The hwMplsLdpCrlspErHopTable is used to indicate the hops,
             strict  or  loose,  for an MPLS  CRLSP tunnel  defined  in
             hwMplsLdpCrlspTnlTable. 
     
             There must be atleast one entry in this table for each CRLSP tunnel 
             that is supported in the hwMplsLdpCrlspTnlTable.
             
             The first row in the table  is  the
             first hop after the origination point of the tunnel."                       ®"An  entry in this table represents a tunnel hop.  An
             entry  is  created  by a network  administrator  for
             signalled ERLSP set up by LDP or RSVP."                       T"Secondary  index  into  this table  identifying  the
             particular hop."                       "Address type of this hop."                       ­"If hwMplsLdpCrlspErHopAddrType is ipV4(1), IPv4 address of
             this  hop.  This object is not significant otherwise
             and should return a value of 0."                       Ó"If  hwMplsLdpCrlspErHopAddrType is ipV4(1), prefix  length
             for  this  hop's IPv4 address.  This object  is  not
             significant otherwise and should return a  value  of
             0."                       ("Whether this is a strict or loose hop."                       0"For creating, modifying and deleting this row."                               "This notification is generated whenever the value
             of hwMplsLdpEntityFailedInitSessionThreshold is
             exceeded."                 Ô"This notification is generated by the Ingress LSR of the CRLSP tunnel
             on the receipt of Label mapping message from the downstream LSR for
             the LAbel request sent for the CRLSP tunnel."                 "This notification is generated when a CRLSP Row status is modified
             to destroy the CRLSP tunnel.  - due to pre-emption etc.,"                G"This notification is generated by the Ingress LSR of the CRLSP tunnel
             on the receipt of Nak message from the downstream LSR for
             the Label request sent for the CRLSP tunnel. This can occur due to
             improper ER hop values being set, or Traffic resources not available
             etc.,"                 a"This notification is generated by LDP to notify 
             the Incarnation UP Event failure"                 c"This notification is generated by LDP to notify 
             the Incarnation DOWN Event failure"                 \"This notification is generated by LDP to notify 
             the ENTITY UP Event failure"                 _"This notification is generated by LDP to notify 
             the ENTITY  DOWN Event failure"                 "Generation of this trap occurs when the 
            value of 'hwMplsLdpSessionState' enters
             the 'operational(5)' state."                 "Generation of this trap occurs when the 
            value of 'hwMplsLdpSessionState' leaves 
            the 'operational(5)' state."                            