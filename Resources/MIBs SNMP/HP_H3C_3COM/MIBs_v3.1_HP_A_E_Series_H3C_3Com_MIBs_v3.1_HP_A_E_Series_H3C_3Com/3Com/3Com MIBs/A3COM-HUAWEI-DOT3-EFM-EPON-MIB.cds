�--===========================================================
-- Copyright (C) 2003 by  HUAWEI 3Com TECHNOLOGIES. All rights reserved.  
-- Description: This mib is excerpted from the draft-ietf-hubmib-efm-epon-mib-02 directly
---             only changed the object name,added the h3c as prefix.
-- Reference:  
-- Version: V1.0
-- History:
-- V1.0 created by liyue.  
--     Define MODULE-IDENTITY for h3cDot3EfmeponMIB
--=================================================================
                                                                    K"The objects in this MIB module are used to manage the
                Ethernet in the First Mile (EFM) Multi Point Control
                Protocol (MPCP) Interfaces as defined in IEEE Draft
                P802.3ah/D3.0 clause 64,65.
                The following reference is used throughout this MIB module:
                [802.3ah] refers to:
                IEEE Draft P802.3ah/D3.3: 'Draft amendment to -
                Information technology - Telecommunications and
                information exchange between systems - Local and
                metropolitan area networks - Specific requirements -
                Part 3: Carrier sense multiple access with collision
                detection (CSMA/CD) access method and physical layer
                specifications - Media Access Control Parameters,
                Physical Layers and Management Parameters for
                subscriber access networks', 22 April 2004.

                Of particular interest are Clause 64(MPCP) 65(P2MP RS) and
                60 (PON PMDs). Clause 30, 'Management', and Clause 45,
                'Management Data Input/Output (MDIO) Interface'.

                Copyright (C) The Internet Society (2004).  This version
                of this MIB module is part of XXXX see the RFC itself for
                full legal notices."|"WG charter:
                 http://www.ietf.org/html.charters/hubmib-charter.html
                     Mailing Lists:
                       General Discussion: hubmib@ietf.org
                       To Subscribe: hubmib-request@ietf.org
                       In Body: subscribe your_email_address
                       Chair: Dan Romascanu
                       Postal: Avaya Inc.
                               Atidim Technology Park, Bldg. 3
                               Tel Aviv 61131
                               Israel
                        Tel: +972-3-645-8414
                        E-mail: dromasca@avaya.com

                     Editor: Lior Khermosh
                        Postal: Passave Technologies Inc.
                               Ackerstein Towers, Tower A, 6th floor,
                               9 Hamenofim St.
                               Hertzliya Pituach 46725,
                               ISRAEL
                        P.O.Box 2089 Hertzliya Pituach 46120 Israel
                        Tel:    +972-9-9717600 Ext: 7181
                        E-mail: lior.khermosh@passave.com" "200409210000Z" )"Initial version, published as RFC XXXX."       -- September 21, 2004
               Q"Table for dot3 Multi-Point Control Protocol (MPCP)
               MIB modules."                       ."An entry in the dot3 MPCP MIB modules table."                      ;"This variable is assigned so as to uniquely identify the
                Multi-Point MAC  Control (MPCP) entity, as defined in
                [802.3ah] clause 64, among the subordinate managed
                objects of the containing object.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.1."                    �"This variable can be used to define the operational
                state of the Multi-Point MAC Control sublayer as
                defined in [802.3ah] clause 64. Selecting admin for an
                interface with Multi-Point MAC Control sublayer. When
                the attribute is True the the interface will act as if
                Multi-point control protocol is enabled. When the
                attribute is False the interface will act as if it does
                not have the Multi-point control protocol. The
                operational state can be changed using the
                h3cDot3MpcpAdminState attribute.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.2."                    �"This variable can be used to identify the operational
                state of the Multi-Point MAC Control sublayer as
                defined in [802.3ah] clause 64. Selecting olt(1) for an
                OLT (server) mode and onu(2) for an ONU (client) mode.
                Writing can be done during only during initialization,
                when h3cDot3MpcpOperStatus indicates Flase.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.3."                     �"A read-only value that identifies the Logical Link
                identity (LLID) associated with the MAC port as
                specified in [802.3ah] clause 65.1.3.2.2.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.4."                    �"A read-only value that identifies the source_address
                parameter of the last MPCPDUs passed to the MAC Control.
                This value is updated on reception of a valid frame with
                (1) a destination Field equal to the reserved multicast
                address for MAC Control specified in [802.3ah] Annex
                31A, (2) lengthOrType field value equal to the reserved
                Type for MAC Control as specified in [802.3ah] Annex
                31A. (3) an MPCP subtype value equal to the subtype
                reserved for MPCP as specified in [802.3ah] Annex 31A.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.5."                    �"A read-only value that identifies the operational state
                of the Multi-Point MAC Control sublayer as defined in
                [802.3ah] clause 64. When this attribute has the
                enumeration unregistered(1) the interface may be used
                for registering a link partner. When this attribute has
                the enumeration registering(2) the interface is in the
                process of registering a link-partner. When this
                attribute has the enumeration registered(3) the
                interface has an established link-partner.
                This attribute is relevant for an OLT and an ONU. For
                the OLT it provides an indication per LLID." "[802.3ah], 30.3.5.1.6."                    �"A read-only value that reports the interval from last
                MPCP frame transmission in increments of Time Quanta
                (TQ) 16ns. The value returned shall be (interval from
                last MPCP frame transmission in ns)/16. If this value
                exceeds (2^32-1) the value (2^32-1) shall be returned.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.19."                    �"A read-only value that reports the interval from last
                MPCP frame reception in increments of Time Quanta (TQ)
                16ns. The value returned shall be (interval from last
                MPCP last MPCP frame reception in ns)/16. If this value
                exceeds (2^32-1) the value (2^32-1) shall be returned.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.20."                    �"A read-only value that reports the MPCP round trip time
                in increments of Time Quanta (TQ) 16ns. The value
                returned shall be (round trip time in ns)/16. If this
                value exceeds (2^16-1) the value (2^16-1)  shall be
                returned. This attribute is relevant for an OLT and an
                ONU. For the OLT there is a value per LLID" "[802.3ah], 30.3.5.1.21."                    4"A read-only value that indicates the maximum number of
                grants an ONU can store. The maximum number of grants an
                ONU can store has a range of 0 to 255.
                This attribute is relevant for an OLT and an ONU. For
                the OLT there is a value per LLID" "[802.3ah], 30.3.5.1.24."                    "This variable can be used to define the operational
                state of the Multi-Point MAC Control sublayer as defined
                in [802.3ah] clause 64. Selecting admin for an interface
                with Multi-Point MAC Control sublayer. When selecting
                the value as True the interface Multi-Point control
                protocol is enabled. When selecting the value as False
                the interface acts as if the Multi-point Control
                protocol does not exist. Reading reflects the state of
                the attribute and the operation of the Multi-point
                control protocol mode of the interface.
                Writing can be done all the time.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.2.1."                    "A read-only value that reports the -on time- for a grant
                burst in increments of Time Quanta (TQ) 16ns as defined
                in [802.3ah] 60,64. The value returned shall be (on time
                ns)/16. If this value exceeds (2^32-1) the value
                (2^32-1) shall be returned.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 64.3.5.1."                    �"A read-only value that reports the -off time- for a
                grant burst in increments of Time Quanta (TQ) 16ns as
                defined in [802.3ah] 60,64. The value returned shall be
                (off time ns)/16. If this value exceeds (2^32-1) the
                value (2^32-1) shall be returned.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 64.3.5.1."                    �"A read-only value that reports the -sync lock time- for
                an OLT receiver in increments of Time Quanta (TQ) 16ns
                as defined in [802.3ah] 60,64,65. The value returned
                shall be (sync lock time ns)/16. If this value exceeds
                (2^32-1) the value (2^32-1) shall be returned.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 64.3.3.2."                     l"This table defines the list of statistics counters of
                [802.3ah] clause 64 MPCP interface."                       h"Table entries for table of statistics counters of
                [802.3ah] clause 64 MPCP interface."                      i"A count of MPCP frames passed to the MAC sublayer for
                transmission. This counter is incremented when a
                MA_CONTROL.request service primitive is generated within
                the MAC control sublayer with an opcode indicating a
                MPCP frame.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.7."                    �"A count of MPCP frames passed by the MAC sublayer to the
                MAC Control sublayer. This counter is incremented when a
                ReceiveFrame function call returns a valid frame with:
                (1) a lengthOrType field value equal to the reserved
                Type for 802.3_MAC_Control as specified in 31.4.1.3, and
                (2) an opcode indicating a MPCP frame.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.8."                     �"A count of discovery windows generated. The counter is
                incremented by one for each generated discovery window.
                This attribute is relevant for an OLT and an ONU. At the
                ONU value should be zero." "[802.3ah], 30.3.5.1.22."                    5"A count of the number of times a discovery timeout
                occurs. Increment the counter by one for each discovery
                processing state-machine reset resulting from timeout
                waiting for message arrival.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.5.1.23."                    �"A count of the number of times a REGISTER_REQ MPCP
                frames transmission occurs. Increment the counter by one
                for each REGISTER_REQ MPCP frame transmitted as defined
                in [802.3ah] clause 64. This counter is mandatory for an
                ONU. This attribute is relevant for an OLT and an ONU.
                At the OLT value should be zero." "[802.3ah], 30.3.5.1.12."                    �"A count of the number of times a REGISTER_REQ MPCP
                frames reception occurs. A single counter at the ONU and
                a set of counters, one for each LLID, at the OLT.
                Increment the counter by one for each REGISTER_REQ MPCP
                frame received for each LLID as defined in [802.3ah]
                clause 64. This counter is mandatory for an ONU and for
                an OLT. At the ONU value should be zero." "[802.3ah], 30.3.5.1.17."                    �"A count of the number of times a REGISTER_ACK MPCP
                frames transmission occurs. Increment the counter by one
                for each REGISTER_ACK MPCP frame transmitted as defined
                in [802.3ah] clause 64. This counter is mandatory for an
                ONU. This attribute is relevant for an OLT and an ONU.
                At the OLT the value should be zero." "[802.3ah], 30.3.5.1.10."                    �"A count of the number of times a REGISTER_ACK MPCP
                frames reception occurs. A single counter at the ONU and
                a set of counters, one for each LLID, at the OLT.
                Increment the counter by one for each REGISTER_ACK MPCP
                frame received for each LLID, as defined in [802.3ah]
                clause 64. This counter is mandatory for an ONU and for
                an OLT. At the ONU the value should be zero." "[802.3ah], 30.3.5.1.15."                    "A count of the number of times a REPORT MPCP frames
                transmission occurs. Increment the counter by one for
                each REPORT MPCP frame transmitted as defined in
                [802.3ah] clause 64. This counter is mandatory for an
                ONU. This attribute is relevant for an OLT and an ONU.
                At the OLT value should be zero." "[802.3ah], 30.3.5.1.13."                    �"A count of the number of times a REPORT MPCP frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each REPORT MPCP frame received
                for each LLID, as defined in [802.3ah] clause 64.
                This counter is mandatory for an ONU and for an OLT.
                At the ONU value should be zero." "[802.3ah], 30.3.5.1.18."                    �"A count of the number of times a GATE MPCP frames
                transmission occurs. A set of counters, one for each
                LLID, at the OLT. Increment the counter by one for each
                GATE MPCP frame transmitted, for each LLID, as defined
                in [802.3ah] clause 64. This counter is mandatory for an
                OLT. This attribute is relevant for an OLT and an ONU.
                At the ONU the value should be zero." "[802.3ah], 30.3.5.1.9."                    �"A count of the number of times a GATE MPCP frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID ,at the OLT. Increment
                the counter by one for each GATE MPCP frame received,
                for each LLID, as defined in [802.3ah] clause 64. This
                counter is mandatory for an ONU and for an OLT. At the
                OLT the value should be zero." "[802.3ah], 30.3.5.1.14."                    �"A count of the number of times a REGISTER MPCP frames
                transmission occurs. A set of counters, one for each
                LLID, at the OLT. Increment the counter by one for each
                REGISTER MPCP frame transmitted, for each LLID, as
                defined in [802.3ah] clause 64. This counter is
                mandatory for an OLT. This attribute is relevant for an
                OLT and an ONU. At the ONU the value should be zero." "[802.3ah], 30.3.5.1.11."                    �"A count of the number of times a REGISTER MPCP frames
                reception occurs. A single counter at the ONU and a set
                of counters, one for each LLID, at the OLT. Increment
                the counter by one for each REGISTER MPCP frame
                received, for each LLID, as defined in [802.3ah] clause
                64. This counter is mandatory for an ONU and for an OLT.
                at the OLT the value should be zero." "[802.3ah], 30.3.5.1.16."                    �"A count of the number of times a non-supported MPCP
                frames reception occurs. A single counter at the ONU and
                a set of counters, one for each LLID, at the OLT.
                Increment the counter by one for each non-supported MPCP
                frame received, for each LLID, as defined in [802.3ah]
                clause 64. This counter is mandatory for an ONU and for
                an OLT."                               U"A collection of objects of dot3 Mpcp Basic entity state
               definition."                 L"A collection of objects of dot3 Mpcp for P2MP
                parameters."                 1"A collection of objects of dot3 Mpcp Statistics"                     \"The compliance statement for Multi-point
                    control protocol interfaces."   �"This group is mandatory for all MPCP supporting
                   interfaces for configuration of the Multipoint
                   Parameters." k"This group is mandatory for all MPCP supporting
                   interfaces for Statistics collection."                     *"Table for dot3 OmpEmulation MIB modules."                       6"An entry in the dot3 OmpEmulation MIB modules table."                       �"The value of h3cDot3OmpEmulationID is assigned so as to
                uniquely identify a OMPEmulation entity among the
                subordinate managed objects of the containing object.
                The value is mandated for an ONU." "[802.3ah], 30.3.7.1.1."                    �"A read-only value that indicates that mode of operation
                of the Reconciliation Sublayer for Point to Point
                Emulation (see [802.3ah] clause 65.1). unknown(1) value
                is assigned in initializing, true state or type not yet
                known. olt(2) value is assigned when Sublayer operating
                in OLT mode. onu(3) value is assigned when Sublayer
                operating in ONU mode." "[802.3ah], 30.3.7.1.2."                     k"This table defines the list of statistics counters of
                [802.3ah] clause 65 OMP interface."                       g"Table entries for Table of statistics counters of
                [802.3ah] clause 65 OMP interface."                       �"A count of frames received that do not contain a valid
                SLD field as defined in [802.3ah] clause 65.1.3.3.1.
                This attribute is mandatory for an OLT and optional for
                an ONU." "[802.3ah], 30.3.7.1.3."                    -"A count of frames received that contain a valid SLD
                field, as defined in [802.3ah] clause 65.1.3.3.1, but do
                not pass the CRC-8 check as defined in [802.3ah] clause
                65.1.3.3.3. This attribute is mandatory for an OLT and
                for an ONU." "[802.3ah], 30.3.7.1.4."                    �"A count of frames received that contain a valid SLD
                field, as defined in [802.3ah] clause 65.1.3.3.1, and
                pass the CRC-8 check, as defined in [802.3ah] clause
                65.1.3.3.3, but are discarded due to the LLID check as
                defined in [802.3ah] clause 65.1.3.3.2.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.7.1.8."                    ""A count of frames received that contain a valid SLD
                field, as defined in [802.3ah] clause 65.1.3.3.1, and
                pass the CRC-8 check, as defined in [802.3ah] clause
                65.1.3.3.3.
                This attribute is relevant for an OLT and an ONU." "[802.3ah], 30.3.7.1.5."                    7"A count of frames received that contain a valid SLD
                field in an ONU, as defined in [802.3ah] 65.1.3.3.1,
                passes the CRC-8 check, as defined in [802.3ah]
                65.1.3.3.3, and the frame meets the rule for acceptance
                defined in [802.3ah] 65.1.3.3.2." "[802.3ah], 30.3.7.1.6."                    7"A count of frames received that contain a valid SLD
                field in an OLT, as defined in [802.3ah] 65.1.3.3.1,
                passes the CRC-8 check, as defined in [802.3ah]
                65.1.3.3.3, and the frame meets the rule for acceptance
                defined in [802.3ah] 65.1.3.3.2." "[802.3ah], 30.3.7.1.7."                    "A count of frames received that contain a valid SLD
                field in a OLT, as defined in [802.3ah] clause
                65.1.3.3.1, and pass the CRC-8 check, as defined in
                [802.3ah] clause 65.1.3.3.3, and contain broadcast LLID
                as defined in [802.3ah] clause 65.
                This attribute is mandatory for an OLT and for an ONU."                      �"A count of frames received that contain a valid SLD
                field in a OLT, as defined in [802.3ah] clause
                65.1.3.3.1, and pass the CRC-8 check, as defined in
                [802.3ah] clause 65.1.3.3.3, and contain the ONU's LLID
                as defined in [802.3ah] clause 65. This attribute is
                mandatory for an ONU and mandatory for an OLT (a
                counter per LLID)."                      �"A count of frames received that contain a valid SLD
                field in a OLT, as defined in [802.3ah] clause
                65.1.3.3.1, and pass the CRC-8 check, as defined in
                [802.3ah] clause 65.1.3.3.3, and contain the broadcast
                LLID plus ONU's LLID (frame reflected) as defined in
                [802.3ah] clause 65. This attribute is mandatory for an
                ONU and mandatory for an OLT (a counter per LLID)."                      x"A count of frames received that contain a valid SLD
                field in a OLT, as defined in [802.3ah] clause
                65.1.3.3.1, and pass the CRC-8 check, as defined in
                [802.3ah] clause 65.1.3.3.3, and does not contain the
                ONU's LLID as defined in [802.3ah] clause 65. This
                attribute is mandatory for an ONU"                               \"A collection of objects of dot3 OMP emulation ID entity
                state definition."                 K"A collection of objects of dot3 OMP emulation
                Statistics"                     L"The compliance statement for OMPEmulation
                    interfaces."   t"This group is mandatory for all OMPemulation
                    supporting interfaces for Statistics collection."                     &"Table for dot3 MAU EPON MIB modules."                       2"An entry in the dot3 MAU EPON MIB modules table."                      C"For 100 Mb/ s operation it is a count of the number of
                times an invalid code-group is received, other than the
                /H/ code-group. For 1000 Mb/ s operation it is a count
                of the number of times an invalid codegroup is received,
                other than the /V/ code-group." "[802.3ah], 30.5.1.1.12."                    �"A read-only value that indicates the support of
                operation of the 1000BASE-PX PHY optional FEC Sublayer
                for Forward error correction see [802.3ah] clause 65.2).
                unknown(1) value is assigned in initializing, for non
                FEC support state or type not yet known. nonsupported(2)
                value is assigned when Sublayer is not support.
                supported(3) value is assigned when Sublayer is
                supported." "[802.3ah], 30.5.1.1.13."                    �"A read-write value that indicates the mode of operation
                of the 1000BASE-PX PHY optional FEC Sublayer for Forward
                error correction see [802.3ah] clause 65.2).
                A GET operation returns the current mode of operation
                the PHY. A SET operation changes the mode of operation
                of the PHY to the indicated value. unknown(1) value is
                assigned in initializing, for non FEC support state or
                type not yet known. disabled(2) value is assigned when
                Sublayer operating in disabled mode. enabled(3) value is
                assigned when Sublayer operating in FEC mode. writing
                can be done all the time." "[802.3ah], 30.5.1.1.14."                    0"For 10PASS-TS, 2BASE-TL and 1000BASE-PX PHYs, a count
                of corrected FEC blocks. This counter will not increment
                for other PHY Types. Increment the counter by one for
                each received block that is corrected by the FEC
                function in the PHY." "[802.3ah], 30.5.1.1.15."                    D"For 10PASS-TS, 2BASE-TL and 1000BASE-PX PHYs, a count of
                uncorrectable FEC blocks. This counter will not
                increment for other PHY Types. Increment the counter by
                one for each FEC block that is determined to be
                uncorrectable by the FEC function in the PHY." "[802.3ah], 30.5.1.1.16."                     ~"For 1000 Mbps operation it is a counts of the number of
                invalid code-group received directly from the link."                               1"A collection of objects of dot3 MAU definition."                 2"A collection of objects of FEC group definition."                     3"The compliance statement for MAU EPON interfaces."   �"This group is mandatory for all EPON MAU devices
                    Supporting FEC functionality as for Definitions and
                    BER Statistics collection."                 a"Multipoint MAC Control (per 802.3 section 64,65) OLT
                    (master), unknown PMD" "[802.3ah], 30.5.1.1.2."             S"Multipoint MAC Control (per 802.3 section 64,65),ONU
       (slave), unknown PMD" "[802.3ah], 30.5.1.1.2."             T"EPON over 10K link, downlink (per 802.3 section 60),
                    OLT side" "[802.3ah], 30.5.1.1.2."             T"EPON over 10K link, downlink (per 802.3 section 60),
                    ONU side" "[802.3ah], 30.5.1.1.2."             R"EPON over 10K link, uplink (per 802.3 section 60),
                    OLT side" "[802.3ah], 30.5.1.1.2."             R"EPON over 10K link, uplink (per 802.3 section 60),
                    ONU side" "[802.3ah], 30.5.1.1.2."             T"EPON over 20K link, downlink (per 802.3 section 60),
                    OLT side" "[802.3ah], 30.5.1.1.2."             T"EPON over 20K link, downlink (per 802.3 section 60),
                    ONU side" "[802.3ah], 30.5.1.1.2."             R"EPON over 20K link, uplink (per 802.3 section 60),
                    OLT side" "[802.3ah], 30.5.1.1.2."             R"EPON over 20K link, uplink (per 802.3 section 60),
                    ONU side" "[802.3ah], 30.5.1.1.2."                