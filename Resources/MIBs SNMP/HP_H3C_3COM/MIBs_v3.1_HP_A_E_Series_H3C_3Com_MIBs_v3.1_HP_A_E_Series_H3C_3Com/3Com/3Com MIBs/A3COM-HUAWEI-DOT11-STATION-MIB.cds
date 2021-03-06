�-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide 802.11 MAC information such
--   as station statistic and notification events.
-- Reference:
-- Version: V2.0
-- History:
--   V1.0 created by shiyang (Richard)
--     Initial version 2006-05-10
--   V1.1 2007-04-27 modified by shiyang(Richard)
--        The data type of object h3cDot11StationRxFrameBytes,
--        h3cDot11StationTxFrameBytes and h3cDot11StationDropFrameBytes
--        was changed from counter32 to counter64.
--   V1.2 2007-06-21 modified by Vikas K
--        Added 4 new Station Traps and also new objects for the traps.
--   V1.3 2007-12-21 modified by wanghao (Kumar)
--        Added h3cDot11StationRxSNR, h3cDot11StationTxRate,
--        h3cDot11StationRxRate to h3cDot11StationAssociateTable.
--        Added h3cDot11StationSessionDuration to h3cDot11StationDeAssocTrap
--        Added h3cDot11StationSessionDuration to h3cDot11StationTrapVarObjects.
--        Added h3cDot11StationVendorName and h3cDot11StationRadioMode to
--        H3cDot11StationAssociateEntry.
--   V1.4 2008-02-25 modified by wanghao (Kumar)
--        Add h3cDot11StationRoamingTrap and add h3cDot11StationRxNoise to
--        h3cDot11StationAssociateTable.
--   V1.5 2008-08-01 modified by Wang Lu
--        Change description of h3cDot11StationMAC, h3cDot11CurrWlanID and
--        h3cDot11StationAid.
--        Change SYNTAX of h3cDot11StationSessionStartTime
--        Change OBJECTS of h3cDot11StationAuthorFailTrap,
--        h3cDot11StationAssocFailTrap, h3cDot11StationDeAssocTrap and
--        h3cDot11StationAuthorSuccTrap
--   V1.6 2008-11-07 modified by Wang Lu and Li Yugang
--        Add h3cDot11StationRxRetryPkts, h3cDot11StationTxRetryPkts,
--        h3cDot11StationRxRetryBytes and h3cDot11StationTxRetryBytes
--        to h3cDot11StationStatisTable.
--        Add new variable bindings h3cDot11StationAPName and
--        h3cDot11StationBSSID to h3cDot11StationAuthorSuccTrap and
--        h3cDot11StationDeAssocTrap.
--        Add new notification h3cDot11StationDisconnectTrap.
--        Add h3cDot11StationThroughput to h3cDot11StationStatisTable.
--   V1.7 2009-05-07 modified by Wang Shaojie
--        Add h3cDot11StationMACAddress to h3cDot11StationAssociateTable
--   V1.8 2009-04-14 modified by Heziqi
--        Add new node h3cDot11StationSuccessTxCnt, h3cDot11StationRxFragCnt
--        and h3cDot11StationSuccessTxDataCnt for h3cDot11StationStatisTable.
--        Add new node h3cDot11StationTxSpeed, h3cDot11StationRxSpeed
--        and h3cDot11StationWmmMode for h3cDot11StationAssociateTable.
--        Add new node h3cDot11StationRxDataFrameCnt,
--        h3cDot11StationTxDataFrameCnt, h3cDot11StationRxDataFrameBytes
--        h3cDot11StationTxDataFrameBytes for h3cDot11StationAssociateTable.
--   V1.9 2009-08-07 modified by Wang Shaojie
--        Modify description of h3cDot11StationTxSpeed, h3cDot11StationRxSpeed
--   V2.0 2010-02-23 Add new node h3cDot11StaRxErrDataFrameCnt and
--        h3cDot11StaTxRetryDataFrameCnt to h3cDot11StationStatisTable.
--        Add new node h3cDot11StationUpTimeTicks, h3cDot11StationSecIEStatus
--        to h3cDot11StationAssociateTable.
--        Add h3cDot11StationAuthMode to h3cDot11StationTrapVarObjects.
--        2010-08-07 modified by Wang Shaojie
--        Add h3cDot11StationACIPv6Add to h3cDot11StationTrapVarObjects.
--        2010-09-02 modified by Yin junjie
--        Modify h3cDot11StationDisconnectTrap.
-- =============================================================================
                                                	"This MIB defines the configuration and statistic information of
        stations.

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

        Control And Provisioning of Wireless Access Points Protocol
        The short name of protocol is CAPWAP. AC will control
        and manage AP by CAPWAP tunnel protocol defined by IETF.
        Also, a data tunnel will be set up between AC and AP.

        BSS
        IEEE 802.11 Basic Service Set (Radio Cell).  The
        BSS of an AP comprises of the stations directly
        associated with the AP.

        station (Client Station)
        A wireless device in a wireless network
        associated with an access point.

        MIC
        Message Integrity Check.  A MIC can, optionally,
        be added to WEP-encrypted 802.11 frames.

        SSID
        Radio Service Set ID.  It is used for identification
        during association.

        STA  (WSTA)
        A non-AP 802.11 wireless station.

        WEP
        Wired Equivalent Privacy.  'WEP' is generally used
        to refer to 802.11 encryption.

        RSSI
        It is the received signal strength indication.
        It suggests the quality of received signal.

        RTS
        Request to Send, it is used to gain control of the medium
        for the transmission of 'large' frames, in which 'large'
        is defined by the RTS threshold in the network card driver.

        CTS
        Clear to Send, it is used to answer RTS frames.

        AKM
        The authentication and key management method defined by
        802.11i, and which includes 802.1x and pre-shared key." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "201009021800Z" "200908071800Z" "200907291800Z" "200905072000Z" "200811071730Z" "200802251800Z" "200712211800Z" "200706212000Z" "200704272000Z" "200605101600Z" '"Modify h3cDot11StationDisconnectTrap." F"Modify description of h3cDot11StationTxSpeed, h3cDot11StationRxSpeed" "Modified to add new nodes." "Modified to add new nodes." "Modified to add new nodes." ["Modified to add new trap and add h3cDot11StationRxNoise to h3cDot11StationAssociateTable." "Modified to add new nodes." $"Changes made for new requirements." "Modified to fix some issue." *"The initial revision of this MIB module."       -- Sep 2, 2010 at 18:00 GMT
           x"This table contains the information of stations which are
        associating with the wireless network (current AC)."                       >"Each entry contains association information of each station."                       /"Represents the unique MAC Address of station."                       +"Represents the IP address of the station."                       *"Represents the user name of the station."                       �"Represents the current transmit data rates for this station.
        Each byte will represent one rate. If the MSB(Most significant bit)
        is set, then this rate is a mandantory rate. Otherwise,
        it is optional."                       ["The time in seconds, how long this station has been associated
        with this device."                       t"Represents a device-dependent measure of the signal strength
        of latest packet received from this station."                       �"Represents a device-dependent measure of the RSSI.
        It is the received signal strength indication.
        The maximum value is defined by chip set vendors"                       3"Represents current radio channel used by station."                      i"Represents the power management mode of this station.
        The following values are supported:
        active(1)    - This station is not in power-save
        mode and it is actively sending or
        receiving data.
        powersave(2) - This station is in power-save mode and
        it wakes up after sometime to check for
        buffer data."                       >"Represents the association identification number of station."                       8"Represents Vlan ID to which the station is associated."                       "Represents the ESS name."                       7"Represents the Authentication mode defined by 802.11."                       8"Represents the key management mode defined by 802.11i."                       G"Represents the frame encryption cipher type used by
        station."                       ."Represents the encryption mode for this ESS."                       D"Represents the signal and noise strength ratio of frame reception."                       ,"Represents the transmission rate of frame."                       )"Represents the reception rate of frame."                       ,"Represents the vendor name of the station."                      ""Represents which radio type supported by the station.
        The WLAN system support the following possible radio types.
        dot11a(1),
        dot11b(2),
        dot11g(4),
        dot11n(8)
        For a station,it could support only one radio type at
        the same time."                       /"Represents the received noise of the station."                       $"Represents MAC Address of station."                       h"Represents the bytes of transmitted data frames to the
        station per second in sample interval."                       g"Represents the bytes of received data frames from the
        station per second in sample interval."                       �"Represents the QoS mode of station.
        The following values are supported:
        wmm(1)    - This QoS function is supported by this station.
        nonwmm(2) - This QoS function is not supported by this station."                       ?"Represents the security Information element for this station."                       R"Represents how long this station has been associated
         with this device."                       �"This table contains relation-ship between station, AP, Radio
        and WLANID, and the detailed information of station is kept in
        the h3cDot11StaAssociateTable table."                       c"Each entry contains relation-ship information
        with AP, Radio and WLANID of each station."                       q"To uniquely identify each AP, and relation-ship
        between h3cDot11CurrAPID and AP device will be static."                       "Represents each radio."                       :"Represents WLAN ID of the BSS the station associated to."                       f"This table contains statistics and status of all
        stations in the h3cDot11StaAssociateTable."                       ="This entry contains statistics and status for each station."                       F"Represents the count of frames that are received by AP from station."                       B"Represents the count of frames that are sent to station from AP."                       2"Represents the count of frames that are dropped."                       E"Represents the count of bytes that are received by AP from station."                       A"Represents the count of bytes that are sent to station from AP."                       ("Represents how many bytes are dropped."                       K"Represents the count of frames that are retransmitted to AP from station."                       K"Represents the count of frames that are retransmitted to station from AP."                       J"Represents the count of bytes that are retransmitted to AP from station."                       J"Represents the count of bytes that are retransmitted to station from AP."                       ]"Represents how many payload bytes of data frame are sent and received
         by station."                       D"Represents how many frames have been successfully sent to station."                       R"Represents how many data frames have been successfully sent to
        station."                       B"Represents how many data frames have been received from station."                       <"Represents how many data frames have been sent to station."                       T"Represents how many bytes of data frames have been received
        from station."                       N"Represents how many bytes of data frames have been sent to
        station."                       W"Represents the number of fragmented data frames that received
         from station."                       c"Represents the count of error data frames that are received by AP
                 from station."                       b"Represents the count of data frames that are retransmitted to station
                 from AP."                               a"This notification is to indicate the occurrence of a MIC
        failure in a certain station."                 Z"This notification is to indicate which station happened
        authentication failure."                 5"This trap is sent if a station authorization fails."                 3"This trap is sent if a station association fails."                 9"This trap is sent if a station de-association occurred."                 >"This trap is sent when a station is authorized successfully."                 7"This trap is sent when a station roamed successfully."                 ="This notification is sent when station disconnects with AP."                     5"Represents on which BSSID of AP the event happened."                       e"Represents the MAC address of station which happened message
        integrity check (MIC) errors."                       5"Represents the time at which the station connected."                       :"Represents the cause of the station association failure."                       <"Represents the cause of the station authorization failure."                       4"Represents the failure description of the station."                       2"Represents the duration of the station sesssion."                       2"Represents the time at which the station roamed."                       �"For roam-in station, it represents the ip address of home AC.
         For roam-out station, it represents the ip address of foreign AC."                       /"Name of the AP which the station connects to."                       &"BSSID which the station connects to."                       1"Reason why the station disconnects with the AP."                       +"Represents station's authentication mode."                       �"For roam-in station, it represents the IPv6 address of home AC.
         For roam-out station, it represents the IPv6 address of foreign AC."                      