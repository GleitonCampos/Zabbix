�-- ====================================================================
-- Copyright (C) 2004 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description: The MIB is designed to get IKE tunnels' statistic information.
--
-- Reference: Huawei Enterprise MIB
-- Version: 1.3
-- History:
--     V1.0: The initial version created by Caixiansen, Renweichun and Maoyu.
--     V1.1: modified by liguanmin.2005.1.19
--           In order to describe DPD work parameters if a tunnel enable
--           DPD function, two nodes have added in H3cIKETunnelEntry .those nodes are
--           h3cIKETunDpdIntervalTime and h3cIKETunDpdTimeOut.
--     V1.2: Modified by Caixiansen Mar.3 2005
--           Two values 'modp1536(5)' and 'modp2048(14)'are added for data type
--           'H3cDiffHellmanGrp' .
--     V1.3: Modified by Liukan Dec.8 2008
--           Three values 'aesCbc128(8)', 'aesCbc192(9)' and 'aesCbc256(10)' are added
--           to data type 'H3cEncryptAlgo'.
--           Value description of data type 'H3cIKENegoMode' is changed from 'aggressive(4)' to
--           'aggressiveMode(4)'.
-- =====================================================================
   "The type of IKE Identity."               8"The authentication algorithm used in IKE negotiations."               5"The authentication method used in IKE negotiations."               "The state of the IKE tunnel."               "The IKE negotiation mode."               >"The encryption algorithm used in IKE and IPSec negotiations."               >"The Diffie Hellman Group used in IKE and IPSec negotiations."               "The type of the data flow."               9"The switch which determines whether send a trap or not."               '"The protocol of security association."                                     �"The MIB is designed to get statistic information of
                 IKE tunnels. With this MIB, we can get information of a certain IKE tunnel
                 or all IKE tunnels" �"Huawei 3Com Technologies Co.,Ltd.
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085"       -- Oct. 26, 2004  GMT
           �"The IPSec Phase-1 Internet Key Exchange Tunnel Table.
                 There is one entry in this table for each active IPSec Phase-1 IKE Tunnel."                       �"The entry contains the information about h3cIKETunnelTable, such as negotiate mode,
                 encryption algorithm and authentication algorithm, etc."                      "The index of the IPSec Phase-1 IKE Tunnel Table.
                 The value of the index is a number which begins
                 at one and is incremented with each tunnel that
                 is created. The value of this object will wrap
                 at 2,147,483,647."                       ""The type of local peer identity."                      ="The value of the local peer identity.
                If the local peer type is an IP Address,
                then this is the IP Address used to identify
                the local peer. If the local peer type is a
                host name, then this is the host name used
                to identify the local peer. If the local
                peer type is IP subnet, then this is the
                value of the subnet. If the local peer type
                is IP address range, then this is the value
                of beginning IP address of the range."                      �"The second specification of local peer's IP address.
                 If the local peer type is single IP address or
                 single name, then this is zero-length. If the local peer
                 type is IP subnet, then this is the value of the
                 subnet mask. If the local peer type is IP
                 address range, then this is the value of ending
                 IP address of the range."                       Z"The IP address of the local endpoint for the IPSec
                 Phase-1 IKE Tunnel."                       �"The type of remote peer identity.
                 The remote peer may be identified
                 by: 1. an IP address, or 2. a host name."                      ""The value of the remote peer identity. If the remote
                peer type is an IP Address, then this is the IP Address
                used to identify the remote peer. If the remote peer
                type is a host name, then this is the host name used to
                identify the remote peer. If the remote peer type is IP
                subnet, then this is the value of the subnet. If the
                remote peer type is IP address range, then this is the
                value of beginning IP address of the range."                      �"The second specification of remote peer's IP address. If
                the remote peer type is single IP address or single name,
                then this is zero-length. If the remote peer type is IP subnet,
                then this is the value of the subnet mask. If the remote
                peer type is IP address range, then this is the value of
                ending IP address of the range."                       V"The IP address of the remote peer for the IPSec
                Phase-1 IKE Tunnel."                       "The initiator of this tunnel."                       7"The negotiation mode of the IPSec Phase-1 IKE Tunnel."                       X"The Diffie Hellman Group used in the IPSec Phase-1 IKE
                 negotiations."                       X"The encryption algorithm used in the IPSec Phase-1 IKE
                 negotiations."                       R"The hash algorithm used in the IPSec Phase-1 IKE
                 negotiations."                       Y"The authentication method used in the IPSec Phase-1
                 IKE negotiations."                       W"The negotiated LifeTime of the IPSec Phase-1
                 IKE Tunnel in seconds."                       Y"The duration the IPSec Phase-1 IKE tunnel
                 has been active in seconds."                       G"The security association remaining time in
                 seconds."                       R"The total number of security association
                 refreshing performed."                       "The State of IKE Tunnel."                      ;"The time that trigger DPD request.
                If ipsec message is expected to be sent out
                and the interval time between current time
                and the last time receiving peer's IPSec
                message is bigger than this time, DPD request
                would be triggered."                       �"The overtime of single DPD request.
                If DPD requests are refused three times, all
                security associations related would be deleted."                       /"The IPsec Phase-1 IKE Tunnel Statistic Table."                       �"The entry contains the information of h3cIKETunnelStatTable,
                 such as the number of packets sent and received by the
                 IKE tunnel, etc."                       Y"The total number of octets received by
                 this IPSec Phase-1 IKE Tunnel."                       Z"The total number of packets received by
                 this IPSec Phase-1 IKE Tunnel."                       s"The total number of packets dropped  by this
                 IPSec Phase-1 IKE Tunnel during receiving process."                       j"The total number of IPSec Phase-2 exchanges
                 received by this IPSec Phase-1 IKE Tunnel."                       s"The total number of IPSec Phase-2 exchanges
                 received and rejected by this IPSec Phase-1 Tunnel."                       �"The total number of IPSec Phase-2 security association
                 deleting requests received by this IPSec Phase-1 IKE Tunnel."                       ]"The total number of IPSec Phase-1
                 security association deleting requests."                       `"The total number of notifications received by this
                 IPSec Phase-1 IKE Tunnel."                       U"The total number of octets sent by this IPSec
                 Phase-1 IKE Tunnel."                       V"The total number of packets sent by this IPSec
                 Phase-1 IKE Tunnel."                       p"The total number of packets dropped by this
                 IPSec Phase-1 IKE Tunnel during sending process."                       f"The total number of IPSec Phase-2 exchanges sent
                 by this IPSec Phase-1 IKE Tunnel."                       s"The total number of IPSec Phase-2 exchanges sent
                 and rejected by this IPSec Phase-1 IKE Tunnel."                       �"The total number of IPSec Phase-2 security
                 association deleting requests sent by this
                 IPSec Phase-1 IKE Tunnel."                       �"The total number of IPSec Phase-1 security
                 association deleting requests sent by this
                 IPSec Phase-1 IKE Tunnel."                       X"The total number of notifications sent by this IPSec
                 Phase-1 Tunnel."                           ;"The number of currently active IPSec Phase-1 IKE Tunnels."                       y"The total number of octets received by all currently and
                 previously active IPSec Phase-1 IKE Tunnels."                       z"The total number of packets received by all
                 currently and previously active IPSec Phase-1 IKE Tunnels."                       �"The total number of packets which were dropped during receiving
                 process by all currently and previously active IPSec Phase-1
                 IKE Tunnels."                       �"The total number of IPSec Phase-2 exchanges received by all
                 currently and previously active IPSec Phase-1 IKE Tunnels."                       �"The total number of IPSec Phase-2 exchanges which were
                 received and rejected by all currently and previously
                 active IPSec Phase-1 IKE Tunnels."                       �"The total number of IPSec Phase-2 security association
                 deleting requests received by all currently and previously
                 active IPSec Phase-1 IKE Tunnels."                       `"The total number of notifications received by all IPSec
                 Phase-1 IKE Tunnels."                       z"The total number of octets sent by all currently
                 and previously active and IPSec Phase-1 IKE Tunnels. "                       v"The total number of packets sent by all currently
                 and previously active and IPSec Phase-1 Tunnels."                       �"The total number of packets which were dropped during
                 sending process by all currently and previously active
                 IPSec Phase-1 IKE Tunnels."                       �"The total number of IPSec Phase-2 exchanges which were
                 sent by all currently and previously active IPSec
                 Phase-1 IKE Tunnels."                       �"The total number of IPSec Phase-2 exchanges which
                 were sent and rejected by all currently and previously
                 active IPSec Phase-1 IKE Tunnels."                       �"The total number of IPSec Phase-2 SA deleting requests sent
                 by all currently and previously active IPSec Phase-1 IKE Tunnels."                       c"The total number of notifications sent by all active IPSec
                 Phase-1 IKE Tunnels."                       _"The total number of IPSec Phase-1 IKE Tunnels which
                 were locally initiated."                       v"The total number of IPSec Phase-1 IKE Tunnels which
                 were locally initiated and failed to activate."                       `"The total number of IPSec Phase-1 IKE Tunnels which
                 were remotely initiated."                       w"The total number of IPSec Phase-1 IKE Tunnels which
                 were remotely initiated and failed to activate."                       �"The total number of authentications which ended in
                 failure by all current and previous IPSec Phase-1 IKE Tunnels."                       �"The total number of non-existent Security Association
                 in failures which occurred during processing of all
                 current and previous IPSec Phase-1 IKE Tunnels."                       �"The total number of invalid cookie in failures which
                 occurred during processing of all current and previous
                 IPSec Phase-1 IKE Tunnels."                       �"The total number of attributes not supported in failures
                 which occurred during processing of all current and previous
                 IPSec Phase-1 IKE Tunnels."                       �"The total number of no proposal chosen in failures which
                 occurred during processing of all current and previous
                 IPSec Phase-1 IKE Tunnels."                       �"The total number of unsupported exchange type in failures
                 which occurred during processing of all current and
                 previous IPSec Phase-1 IKE Tunnels."                       �"The total number of invalid id Information in failures
                 which occurred during processing of all current and
                 previous IPSec Phase-1 IKE Tunnels."                       �"The total number of invalid protocol id in failures which
                 occurred during processing of all current and previous
                 IPSec Phase-1 IKE Tunnels."                       �"The total number of certificate type unsupported in failures
                 which occurred during processing of all current and
                 previous IPSec Phase-1 IKE Tunnels."                       �"The total number of failures because of invalid certificate authority
                 which occurred during processing of all current and
                 previous IPSec Phase-1 IKE Tunnels."                       �"The total number of failures because of the invalid signature which
                 occurred during processing of all current and previous
                 IPSec Phase-1 IKE Tunnels."                       �"The total number of certificate unavailable in failures
                 which occurred during processing of all current and
                 previous IPSec Phase-1 IKE Tunnels."                           ("The IKE proposal's number with a trap."                       *"The number of IKE proposals with a trap."                       !"The id information with a trap."                       !"The protocol number with a trap"                       *"The certificate information with a trap."                           6"Indicates whether all IKE traps should be generated."                       @"Indicates whether h3cIKETunnelStart traps should be generated."                       ?"Indicates whether h3cIKETunnelStop traps should be generated."                       @"Indicates whether h3cIKENoSaFailure traps should be generated."                       E"Indicates whether h3cIKEEncryFailFailure traps should be generated."                       E"Indicates whether h3cIKEDecryFailFailure traps should be generated."                       K"Indicates whether h3cIKEInvalidProposalFailure traps should be generated."                       D"Indicates whether h3cIKEAuthFailFailure traps should be generated."                       I"Indicates whether h3cIKEInvalidCookieFailure traps should be generated."                       F"Indicates whether h3cIKEInvalidSpiFailure traps should be generated."                       G"Indicates whether h3cIKEAttrNotSuppFailure traps should be generated."                       K"Indicates whether h3cIKEUnsportExchTypeFailure traps should be generated."                       E"Indicates whether h3cIKEInvalidIdFailure traps should be generated."                       K"Indicates whether h3cIKEInvalidProtocolFailure traps should be generated."                       J"Indicates whether h3cIKECertTypeUnsuppFailure traps should be generated."                       K"Indicates whether h3cIKEInvalidCertAuthFailure traps should be generated."                       G"Indicates whether h3cIKEInvalidSignFailure traps should be generated."                       K"Indicates whether h3cIKECertUnavailableFailure traps should be generated."                       @"Indicates whether h3cIKEProposalAdd traps should be generated."                       @"Indicates whether h3cIKEProposalDel traps should be generated."                               `"This notification is generated when an IPSec Phase-1
                  IKE Tunnel is created."                 ^"This notification is generated when an IPSec Phase-1
                IKE Tunnel is deleted."                 c"This notification is generated when the IKE tunnel
                 has a non-existent SA error."                 a"This notification is generated when the IKE tunnel
                 has an encrypting failure."                 _"This notification is generated when the IKE tunnel
                has a decrypting failure."                 a"This notification is generated when the IPSec phase-1
                invalid proposal occurs."                 g"This notification is generated when the IPSec phase-1
                authentication failure occurs."                 h"This notification is generated when the IPSec phase-1
                 invalid cookie failure occurs."                 o"This notification is generated when the IPSec phase-1 unsupported
                 attribute failure occurs."                 s"This notification is generated when the IPSec phase-1
                 unsupported exchange type failure occurs."                 d"This notification is generated when the IPSec phase-1
                 invalid id failure occurs."                 �"This notification is generated when the processing for
                 an IPSec Phase-1 IKE Tunnel has a protocol related errors."                 v"This notification is generated when the IPSec phase-1
                 unsupported certificate type failure occurs."                 {"This notification is generated when the IPSec phase-1
                 invalid certificate authorization failure occurs."                 k"This notification is generated when the IPSec phase-1
                 invalid signature failure occurs."                 q"This notification is generated when the IPSec phase-1
                 certificate unavailable failure occurs."                 ?"This notification is generated when an IKE proposal is added."                 A"This notification is generated when an IKE proposal is deleted."                         " "                   ;"The group contains the IKE tunnel's property information."                 <"The group contains the IKE tunnel's statistic information."                 C"The group contains all of the IKE tunnel's statistic information."                 8"The group contains all of trap objects of IKE tunnels."                 9"The group contains all of trap switches of IKE tunnels."                 0"The group contains all of trap of IKE tunnels."                            