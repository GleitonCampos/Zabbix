�-- ====================================================================
-- Copyright (C) 2004 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description: The MIB is designed to get IPSec tunnels' statistic information.
-- Reference: Huawei Enterprise MIB
-- Version: 1.5
-- History:
--   V1.0: The initial version created by Caixiansen, Renweichun and
--         Maoyu.
--   V1.1: Modified by Caixiansen Mar.3 2005
--         Two values 'modp1536(5)' and 'modp2048(14)'are added for data
--         type 'H3cDiffHellmanGrp'.
--   V1.2: Modified by Sunludong Sep.1 2005
--         Descriptions of node 'h3cIPSecTunIKETunnelIndex', 'h3cIPSecTunLocalAddr',
--         'h3cIPSecTunRemoteAddr', 'h3cIPSecTunLifeSize', 'h3cIPSecTunLifeTime',
--         'h3cIPSecTunRemainTime', 'h3cIPSecTunActiveTime', 'h3cIPSecTunRemainSize'
--         are modified.
--         Ranges of node 'h3cIPSecTunRemainTime', 'h3cIPSecTunActiveTime',
--         'h3cIPSecTunRemainSize' are modified.
--         Ranges of data type 'H3cIPSecNegoType', 'H3cEncapMode',
--         'H3cEncryptAlgo', 'H3cAuthAlgo', 'H3cDiffHellmanGrp' are modified.
--   V1.3: Modified by Sunludong Feb.23 2006
--         Range and description of node 'h3cIPSecTunInitiator' are modified.
--   V1.4: Modified by liukan Jan.12 2007
--         Range of data type 'H3cEncryptAlgo' are modified.
--   V1.5: Modified by Liukan Dec.8 2008
--         Three values 'aesCbc128(9)', 'aesCbc192(10)' and 'aesCbc256(11)' are added
--         to data type 'H3cEncryptAlgo'.
--         Data type of node 'h3cIPSecTunLifeSize' and 'h3cIPSecTunRemainSize' are modified
--         from Integer32 to Gauge32.
-- =====================================================================
   "The state of IPSec tunnel."               ~"The authentication algorithm used in the IKE negotiations.
             invalidAlg(2147483647) is defined as invalid value."               �"The encryption algorithm used in the IKE and IPSec negotiations.
             invalidAlg(2147483647) is defined as invalid value."               �"The Diffie Hellman Group used in the IKE and IPSec negotiations.
             invalidGroup(2147483647) is defined as invalid value."               "The type of the data flow."               9"The switch which determines whether send a trap or not."               "The type of IPSec Identity."               '"The protocol of security association."               |"The encapsulation mode used by an IPSec Phase-2 Tunnel.
             invalidMode(2147483647) is defined as invalid value."               u"The type of key used by an IPSec Phase-2 Tunnel. invalidType(2147483647)
             is defined as invalid value."                                     �"The MIB is designed to get statistic information of
             IPSec tunnels. With this MIB, we can get information of a certain
             tunnel or all tunnels." �"Huawei 3Com Technologies Co., Ltd.
             Shang-Di Information Industry Base,
             Hai-Dian District Beijing P.R. China
             http://www.huawei-3com.com
             ZIP: 100085"       -- Oct. 26, 2004  GMT
           v"The IPSec Phase-2 Tunnel Table. There is one
             entry in this table for each active IPSec Phase-2 Tunnel."                       ("Information about h3cIPSecTunnelTable."                       0"The interface index( the ifIndex of ifTable )."                       5"The index of IPSec policy applied in the interface."                       �"The index of IPSec Phase-2 Tunnel Table. The value of
             the index is a number which begins at one and is
             incremented with each tunnel that is created. The
             value of this object will wrap at 2,147,483,647."                       �"The index of the associated IPSec Phase-1 IKE Tunnel
             (IKETunIndex in the IKETunnelTable). 2147483647 is defined as
             invalid value. "                       s"The IP address of the local peer for the IPSec Phase-2
             Tunnel. 0.0.0.0 is defined as invalid value."                       t"The IP address of the remote peer for the IPSec Phase-2
             Tunnel. 0.0.0.0 is defined as invalid value."                       :"The key negotiate mode used by the IPSec Phase-2 Tunnel."                       :"The encapsulation mode used by the IPSec Phase-2 Tunnel."                       �"The initiator of this IPSec tunnel. Value none is used for manual
             IPsec tunnel, for there is no initiator or responder in this method."                       p"The negotiated LifeSize of the IPSec Phase-2 Tunnel in kilobytes.
             0 is defined as invalid value."                       w"The negotiated LifeTime of the IPSec Phase-2 Tunnel in seconds.
             2147483647 is defined as invalid value."                       Y"The remain time of SA in seconds. 2147483647 is defined as invalid
             value."                       �"The duration the IPSec Phase-2 Tunnel has been active in
             hundredths of seconds. 2147483647 is defined as invalid value."                       V"The remain LifeSize of SA in kilobytes. 0 is defined as
             invalid value."                       @"The total number of security association refreshing performed."                       ["The number of security associations which are currently active
             or expiring."                       n"The encryption algorithm used by the inbound security association
             of the IPSec Phase-2 Tunnel."                       �"The authentication algorithm used by the inbound authentication
             header (AH) security association of the IPSec Phase-2 Tunnel."                       �"The authentication algorithm used by the inbound encapsulation
             security protocol(ESP) security association of the IPSec
             Phase-2 Tunnel."                       f"The Diffie Hellman Group used by the security association of the
             IPSec Phase-2 Tunnel."                       o"The encryption algorithm used by the outbound security
             association of the IPSec Phase-2 Tunnel."                       �"The authentication algorithm used by the outbound
             authentication header (AH) security association of
             the IPSec Phase-2 Tunnel."                       �"The authentication algorithm used by the outbound encapsulation
             security protocol(ESP) security association of the IPSec
             Phase-2 Tunnel."                       ,"The policy name used by this IPSec tunnel."                       :"The sequence number of policy used by this IPSec tunnel."                       !"The status of the IPSec Tunnel."                       -"The IPSec Phase-2 Tunnel Statistics Table. "                       ,"Information about h3cIPSecTunnelStatTable."                       �"The total number of octets received by this IPSec Phase-2 Tunnel.
             This value is accumulated BEFORE determining whether or not the
             packet should be decompressed."                       �"The total number of decompressed octets received by this IPSec
             Phase-2 Tunnel. This value is accumulated AFTER the packet
             is decompressed."                       D"The total number of packets received by this IPSec Phase-2 Tunnel."                       j"The total number of packets dropped during receiving process
             by this IPSec Phase-2 Tunnel."                       �"The total number of packets dropped during
             receiving process due to Anti-Replay process
             by this IPSec Phase-2 Tunnel."                       q"The total number of inbound authentication's
             which ended in failure by this IPSec Phase-2 Tunnel."                       m"The total number of inbound decryption's
             which ended in failure by this IPSec Phase-2 Tunnel."                       �"The total number of octets sent by this IPSec Phase-2 Tunnel.
             This value is accumulated AFTER determining whether or not
             the packet should be compressed."                       �"The total number of uncompressed octets sent by this IPSec Phase-2
             Tunnel.This value is accumulated BEFORE the packet is compressed."                       @"The total number of packets sent by this IPSec Phase-2 Tunnel."                       h"The total number of packets dropped during sending process
             by this IPSec Phase-2 Tunnel."                       n"The total number of outbound encryption's which ended in failure
             by this IPSec Phase-2 Tunnel."                       i"The total number of packets dropped due to no enough memory by this
             IPSec Phase-2 Tunnel."                       c"The total number of packets dropped due to queue full by this
             IPSec Phase-2 Tunnel."                       n"The total number of packets dropped due to invalid length packet
             by this IPSec Phase-2 Tunnel."                       h"The total number of packets dropped due to too long packet by this
             IPSec Phase-2 Tunnel."                       c"The total number of packets dropped due to invalid SA by this
             IPSec Phase-2 Tunnel."                       �"The IPSec Phase-2 Security Protection Index Table.  This table
             contains an entry for each active and expiring security association."                       $"Information about h3cIPSecSaTable."                      0"The number of the Sa associated with the Phase-2 Tunnel
             Table.  The value of this index is a number which begins
             at one and is incremented with each Sa associated with
             an IPSec Phase-2 Tunnel.  The value of this object will
             wrap at 2,147,483,647."                       "The direction of the SA."                       "The value of the SPI."                       ""The security protocol of the SA."                       f"The encryption algorithm used by the security association
             of the IPSec Phase-2 Tunnel."                       ."The authentication algorithm used by the SA."                       "The status of the SA."                       *"The IPSec Phase-2 Tunnel Traffic Table. "                       )"Information about h3cIPSecTrafficTable."                       z"The type of local peer. Possible values are: a single
             IP address, or an IP address range, or an IP subnet."                      �"The first specification of local peer's IP address. If
             the local peer type is single IP address, then this is the
             value of the IP address. If the local peer type is IP subnet,
             then this is the value of the subnet. If the local peer type
             is IP address range, then this is the value of beginning IP
             address of the range."                      �"The second specification of local peer's IP address. If the local
             peer type is single IP address, then this is the value of the
             IP address. If the local peer type is IP subnet, then this is
             the value of the subnet mask. If the local peer type is IP
             address range, then this is the value of ending IP address of
             the range."                       2"The protocol number of the local peer's traffic."                       ."The port number of the local peer's traffic."                       {"The type of remote peer. Possible values are: a single
             IP address, or an IP address range, or an IP subnet."                      �"The first specification of remote peer's IP address.
             If the remote peer type is single IP address, then
             this is the value of the IP address. If the remote
             peer type is IP subnet, then this is the value
             of the subnet. If the remote peer type is IP
             address range, then this is the value of beginning
             IP address of the range."                      ."Single IP address, then this is the value of the IP
             address. If the remote peer type is IP subnet,
             then this is the value of the subnet mask. If the
             remote peer type is IP address range, then this
             is the value of ending IP address of the range."                       3"The protocol number of the remote peer's traffic."                       /"The port number of the remote peer's traffic."                           >"The total number of currently active  IPSec Phase-2 Tunnels."                       D"The total number of currently active or expiring IPSec Phase-2 SA."                       �"The total number of octets received by all current and previous
             IPSec Phase-2 Tunnels. This value is accumulated BEFORE determining
             whether or not the packet should be decompressed."                       �"The total number of decompressed octets received by all current
             and previous IPSec Phase-2 Tunnels. This value is accumulated
             AFTER the packet is decompressed."                       g"The total number of packets received by all current and
             previous IPSec Phase-2 Tunnels."                       �"The total number of packets dropped during receiving
             process by all current and previous IPSec Phase-2
             Tunnels. "                       �"The total number of packets dropped during receiving
             process due to Anti-Replay process by all
             current and previous IPSec Phase-2 Tunnels."                       �"The total number of inbound authentication's which ended
             in failure by all current and previous IPSec Phase-2 Tunnels."                       �"The total number of inbound decryption's which ended in
             failure by all current and previous IPSec Phase-2 Tunnels."                       �"The total number of octets sent by all current and previous
             IPSec Phase-2 Tunnels. This value is accumulated AFTER
             determining whether or not the packet should be compressed."                       �"The total number of uncompressed octets sent by all current
             and previous IPSec Phase-2 Tunnels. This value is accumulated
             BEFORE the packet is compressed."                       c"The total number of packets sent by all current and previous
             IPSec Phase-2 Tunnels."                       }"The total number of packets dropped during sending process
             by all current and previous IPSec Phase-2 Tunnels."                       �"The total number of outbound encryption's which ended in failure
             by all current and previous IPSec Phase-2 Tunnels."                       ~"The total number of packets dropped due to no enough memory
             by all current and previous IPSec Phase-2 Tunnels."                       y"The total number of packets dropped due to not find SA by
             all current and previous IPSec Phase-2 Tunnels."                       x"The total number of packets dropped due to queue full by
             all current and previous IPSec Phase-2 Tunnels."                       �"The total number of packets dropped due to invalid packet
             length by all current and previous IPSec Phase-2 Tunnels."                       }"The total number of packets dropped due to too long packet by
             all current and previous IPSec Phase-2 Tunnels."                       x"The total number of packets dropped due to invalid SA by all
             current and previous IPSec Phase-2 Tunnels."                           $"The IPSec policy name with a trap."                       /"The IPSec policy sequence number with a trap."                       +"The number of IPSec policies with a trap."                       '"The SPI value associated with a trap."                           8"Indicates whether all IPSec traps should be generated."                       B"Indicates whether h3cIPSecTunnelStart traps should be generated."                       A"Indicates whether h3cIPSecTunnelStop traps should be generated."                       B"Indicates whether h3cIPSecNoSaFailure traps should be generated."                       F"Indicates whether h3cIPSecAuthFailFailure traps should be generated."                       G"Indicates whether h3cIPSecEncryFailFailure traps should be generated."                       G"Indicates whether h3cIPSecDecryFailFailure traps should be generated."                       J"Indicates whether h3cIPSec Invalid Sa Failure traps should be generated."                       @"Indicates whether h3cIPSecPolicyAdd traps should be generated."                       @"Indicates whether h3cIPSecPolicyDel traps should be generated."                       C"Indicates whether h3cIPSecPolicyAttach traps should be generated."                       C"Indicates whether h3cIPSecPolicyDetach traps should be generated."                               W"This notification is generated when an IPSec Phase-2
             Tunnel is created."                 W"This notification is generated when an IPSec Phase-2
             Tunnel is deleted."                 b"This notification is generated when an IPSec Phase-2
             non-existent SA error occurs."                 d"This notification is generated when the IPSec phase-2
             authentication failure occurs."                 g"This notification is generated when the IPSec phase-2
             tunnel has an encrypting failure."                 f"This notification is generated when the IPSec phase-2
             tunnel has a decrypting failure."                 `"This notification is generated when the IPSec phase-2
             invalid SA failure occurs."                 ?"This notification is generated when an IPSec policy is added."                 A"This notification is generated when an IPSec policy is deleted."                 c"This notification is generated when an IPSec policy is attached
             with one interface."                 c"This notification is generated when an IPSec policy is detached
             with one interface."                         " "                   ="The group contains the IPSec tunnel's property information."                 >"The group contains the IPSec tunnel's statistic information."                 3"The group contains the SA's property information."                 g"The group contains the property information of the
             data flow protected by IPSec tunnel."                 S"The group contains all of the IPSec tunnel's statistic
             information."                 :"The group contains all of trap objects of IPSec tunnels."                 ;"The group contains all of trap switches of IPSec tunnels."                 2"The group contains all of trap of IPSec tunnels."                            