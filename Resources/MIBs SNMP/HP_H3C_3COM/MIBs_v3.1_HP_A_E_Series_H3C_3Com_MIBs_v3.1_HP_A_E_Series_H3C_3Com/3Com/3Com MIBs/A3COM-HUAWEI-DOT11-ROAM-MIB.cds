1-- =====================================================================
-- Copyright (c) 2004-2010 by Hangzhou H3C Technologies. All rights reserved.
--
-- Description: The file defines a MIB to provide WLAN roaming configuration.
-- Reference:
-- Version: V1.2
-- History:
-- V1.0 2008-7-23 created by heziqi
-- V1.1 2009-05-07 modified by Li Yugang
--      Add h3cDot11RoamStatisGroup to h3cDot11ROAM.
-- V1.2 2009-12-24 modified for Guangdong Mobile
--      Add h3cDot11InterACRoamOutSuccCnt to h3cDot11RoamStatisGroup.
--      2010-08-04 modefied by l07769 for Guangdong CMCC
--      Add h3cDot11IntraACRoamingSuccCnt2, h3cDot11InterACRoamingSuccCnt2
--      and h3cDot11InterACRoamOutSuccCnt2 to h3cDot11RoamStatis2Group.
-- =====================================================================
  <"The authentication mode of the mobility-tunnel.
        This object has two defined values:
        - 'none', which indicates that the authentication mode of the
          mobility-tunnel is None.
        - 'md5', which indicates that the authentication mode of the
          mobility-tunnel is MD5.
        "               $"The status of IACTP state machine."              ,"The protocol type of the mobility-tunnel.
        This object has two defined values:
        - 'ipv4', which indicates that the protocol type of the mobility-tunnel
          is IPv4.
        - 'ipv6', which indicates that the protocol type of the mobility-tunnel
          is IPv6.
        "                                                                            		"This MIB provides information about WLAN roaming configuration.

        GLOSSARY

        IEEE 802.11
        Standard to encourage interoperability among
        wireless networking equipment.

        Access point (AP)
        Transmitter/receiver (transceiver) device
        that commonly connects and transports data
        between a wireless network and a wired network.

        Access control (AC)
        To control and manage multi-APs, it will bridge
        wireless and wired network.

        BSS
        IEEE 802.11 Basic Service Set (Radio Cell).  The
        BSS of an AP comprises of the stations directly
        associating with the AP.

        Radio
        The chip set to receive and send wireless signal.

        HA
        The AC to which a wireless station is connected by
        associating with an AP for the first time is the
        HA of the station.

        FA
        An AC that is other than the HA and to which a
        station is currently connected is an FA of the
        station.

        Fast-roam capable station
        A wireless station which directly associates to
        a fast-roam service (rsn+dot1X) with one AC for
        the first time.

        Roam-out station
        A wireless station which has associated with an
        AC other than the HA in the mobility-group is
        referred to as a roam-out station at its HA.

        Roam-in station
        A wireless station which has associated with an
        AC other than the HA in the mobility-group is
        referred to as a roam-in station at the FA.

        Intra-AC roaming
        A procedure where a wireless station roams from
        one AP to another AP, which are connected to the
        same AC.

        Inter-AC roaming
        A procedure where a wireless station roams from
        one AP to another AP, which are connected to
        different ACs.

        Inter-AC fast roaming capability
        If a station uses 802.1x (RSN) authentication
        through negotiation, this station has inter-AC
        fast roaming capability.

        WLAN-tunnel
        One type of layer 2 interface which is bound with
        an IACTP data tunnel and used to tunnel
        unicast/broadcast frames between ACs." �"Platform Team Hangzhou H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R.China
         Http://www.h3c.com
         Zip:100085" "201008041800Z" "200905072000Z" "200807231200Z" /"Modified to add new h3cDot11RoamStatis2Group." ."Modified to add new h3cDot11RoamStatisGroup." *"The initial revision of this MIB module."       -- Aug 04, 2010 at 18:00 GMT
           C"The table defines the parameters for roaming group configuration."                       2"This entry contains information of mobile group."                       $"Represents the name of roam group."                       2"Represents the protocol type of mobility-tunnel."                       �"Represents the IP address of tunnel source.  The IP address
         type must be the same as h3cdot11MobGrpTunnelType.
         The default value is zero."                       �"Represents the authentication mode of IACTP tunnel.
         This object can be used to enable IACTP control message
         integrity authentication."                       �"Represents the authentication key of IACTP tunnel.
         Authentication key to be used with the given
         authentication method.
         This object can not be modified when the value of
         h3cDot11MobGrpAuthMode is 'none'."                      �"State of a mobile group.
         'true'  : The WLAN mobility group will be enabled.
         'false' : The inter-AC tunnel communication for the
                   mobility group will be disabled.
         A mobility group can be enabled only when the source
         IP address is configured.  The other objects in this entry
         can become effective only when mobility group is enabled.
         The other objects in this entry can not be modified
         after enabling mobility group."                       !"The status of this table entry."                       D"The table defines the parameters for roaming member configuration."                       9"This entry contains information of mobile group member."                       �"Represents the IP address of group member.  It can not be
         the same as the source IP address of the mobile group.
         The address type must be the same as the h3cdot11MobGrpTunnelType."                       ("Represents the status of group member."                       7"Represents the tunnel interface name of group member."                       d"Represents the sustaining time from tunnel up.  If tunnel
         is down, MemberUpTime is zero."                       !"The status of this table entry."                           E"The table can used to display the information of roaming in client."                       7"This entry contains information of roaming in client."                       2"Represents the MAC address of roaming in client."                       G"Represents BSSID of the AP to which the Roam-In client is associated."                       +"Represents the VLAN ID of Roam-In client."                       2"Represents the protocol type of home AC address."                       $"Represents the address of home AC."                       F"The table can used to display the information of roaming out client."                       8"This entry contains information of roaming out client."                       V"Represents the BSSID of the AP to which the Roam-Out client is
         associated."                       ,"Represents the VLAN ID of Roam-Out client."                       5"Represents the protocol type of foreign AC address."                       '"Represents the address of foreign AC."                       V"Represents how long the Roam-Out client is associated with the foreign
         AC."                       c"The table contains the roam-track information of a
         specified client on the client's HA."                       U"This entry contains information of a specified client on the
         client's HA."                       %"Represents the index of this entry."                       2"Represents the MAC address of the roamed client."                       E"Represents the BSSID of the AP with which the client is associated."                       >"Represents how long the client is associated with the BSSID."                       w"Represents the protocol type of the IP address of the access
         controller with which the client is connected."                       b"Represents the IP address of the access controller with which
         the client is connected."                           <"Represents the count of client successfully roam Intra-AC."                       ?"Represents the count of client successfully roam in Inter-AC."                       @"Represents the count of client successfully roam out Inter-AC."                           I"Represents the count of client successfully roam Intra-AC in Counter32."                       L"Represents the count of client successfully roam in Inter-AC in Counter32."                       M"Represents the count of client successfully roam out Inter-AC in Counter32."                      