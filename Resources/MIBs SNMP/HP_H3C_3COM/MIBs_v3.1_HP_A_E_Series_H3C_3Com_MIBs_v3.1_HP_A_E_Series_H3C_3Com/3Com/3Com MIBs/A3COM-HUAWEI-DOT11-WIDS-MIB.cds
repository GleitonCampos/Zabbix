�-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide wireless detection service feature.
-- Reference:
-- Version: V1.6
-- History:
--   V1.0 created by shiyang (Richard)
--     Initial version 2006-08-20
--   V1.1 2007-05-16 modified by shiyang (Richard)
--     Add new objects of h3cDot11UnauthorSSIDName and h3cDot11WIDSAPID.
--   V1.2 2007-06-19 modified by Deepthi
--        Changed the h3cDot11RogueAPVendorOUI to h3cDot11RogueAPVendorName,
--        Type : OCTET STRING and the Size list: 1: 3 should be removed.
--        Changed the h3cDot11RogueStaVendorOUI to h3cDot11RogueStaVendorName,
--        Type : OCTET STRING and the Size list: 1: 3 should be removed.
--        Changed the field h3cDot11DetectMaxAPSigStrength in
--        h3cDot11WIDSRogueAPExtTable to h3cDot11DetectCurAPSigStrength to
--        h3cDot11DetectCurAPSigStrength
--        Changed the field h3cDot11DetectMaxStaSigStrength
--        H3cDot11WIDSRogueStaExtEntry in h3cDot11WIDSRogueStaExtTable to
--        h3cDot11DetectCurStaSigStrength
--        Add new node h3cDot11WIDSPermitVendorName in
--        h3cDot11WIDSPermitVendorEntry
--        Remove the field Country Spec(2), ChannelSpec(3) in
--        h3cDot11WIDSGlobalConfigGroup in h3cDot11WIDSScanMode.
--        Obsolete the node h3cDot11WIDSScanChannelList in
--        h3cDot11WIDSGlobalConfigGroup
--        Add the node h3cDot11WIDSScanType to h3cDot11WIDSGlobalConfigGroup
--  V1.3  2008-07-25 modified by heziqi
--        Add new node h3cDot11CntMsrEnable, h3cDot11CntMsrMode,
--        h3cDot11DevAgingTime, h3cDot11DynBlkListEnable,
--        h3cDot11DynBlkListLifeTime, h3cDot11FloodAtkDctEnable,
--        h3cDot11SpoofAtkDctEnable, h3cDot11WeakIVAtkDctEnable,
--        h3cDot11ResetWIDSRogueHistory, h3cDot11ResetWIDSHistroy,
--        h3cDot11ResetWIDSStatistics, h3cDot11ResetAllDynBlkList,
--        h3cDot11ResetAllStcBlkList, h3cDot11ResetAllWhtBlkList,
--        h3cDot11ResetAllDctRogueAP, h3cDot11ResetAllDctRogueSta,
--        h3cDot11ResetAllDctAdhoc, h3cDot11ResetAllDctDevice,
--        h3cDot11ResetAllDctSSID in h3cDot11WIDSGlobalConfigGroup.
--        Add new node h3cDot11PermitSSIDDetected
--        in h3cDot11WIDSPermitSSIDTable.
--        Add new node h3cDot11IgnoreMACDetected, h3cDot11IgnoreDevType
--        in h3cDot11WIDSIgnoreListTable.
--        Add new table h3cDot11StaticWhiteListTable,
--        h3cDot11StaticBlackListTable, h3cDot11WIDSRogueAPTable,
--        h3cDot11WIDSRogueStaTable, h3cDot11WIDSDetectedDevTable,
--        h3cDot11WIDSRptAPTable, h3cDot11DynBlackListTable,
--        h3cDot11WIDSRogueHistoryTable, h3cDot11WIDSAtkHistroyTable
--        in h3cDot11WIDSDetectGroup.
--        Add h3cDot11WIDSAtkStatis in h3cDot11WIDSDetectGroup.
--        Add notification h3cDot11WIDSDetectAttack and
--        h3cDot11WIDSDetectWBridge.
--  V1.4  2009-05-07 modified by Li Yugang, Wang Shaojie, Sun Shuai
--        Add h3cDot11WidsFloodInterval, h3cDot11WidsBlackListThreshold,
--        h3cDot11SSIDFilterOnOff, h3cDot11BSSIDFilterOnOff to
--        h3cDot11WIDSGlobalConfigGroup.
--        Add h3cDot11WIDSPermitBSSIDTable to h3cDot11WIDSConfigGroup.
--        Add h3cDot11WIDSFloodTrap, h3cDot11WIDSSpoofTrap,
--        h3cDot11WIDSWeakIVTrap to h3cDot11WIDSTraps.
--        Add h3cDot11MonitorAPID,h3cDot11MonitorApRadioID,
--        h3cDot11WIDSAtkMac, h3cDot11WIDSAtkFrameType
--        to h3cDot11WIDSTrapVarObjects.
--  V1.5  2009-07-29 modified by heziqi
--        Add new node h3cDot11WIDSDevSnr for h3cDot11WIDSDetectedDevTable.
--  V1.6  2010-01-07 modified by Wang Shaojie
--        Add new node h3cDot11RogueAPFirstDetectTmStr,
--        h3cDot11RogueAPLastDetectTmStr to h3cDot11WIDSRogueAPTable
--        Add new node h3cDot11RogueStaFirstDetectTmStr,
--        h3cDot11RogueStaLastDetectTmStr to h3cDot11WIDSRogueStaTable
--        Add h3cDot11WIDSAtkChannel, h3cDot11WIDSAtkTime,
--        h3cDot11WIDSAtkDestMac to h3cDot11WIDSTrapVarObjects.
--        2010-03-18 Modified by Deng Gaoliang
--        Add h3cDot11BlackListTable
--        2010-05-31 Modified by LiuChen
--        Add new node h3cDot11DynBlackListTimeTicks to
--        h3cDot11DynBlackListTable.
--        Add new node h3cDot11BlackListTimeTicks to
--        h3cDot11BlackListTable.
-- =============================================================================
   "The type of device detected."              �"The type of attack.
         This object has following defined values:
         'act': Action Frame
         'asr': Association Request
         'aur': Authentication Request
         'daf': Deauthentication Frame
         'dar': Disassociation Request
         'ndf': Null Data Frame
         'pbr': Probe Request
         'rar': Reassociation Request
         'saf': Spoofed Disassociation Frame
         'sdf': Spoofed Deauthentication Frame
         'wiv': Weak IV Detected"               A"Represents whether the detected device is permitted or a rogue."                                                                                            �"This MIB provides information about WIDS feature.

        GLOSSARY

        Wireless Intrusion Detection Sensor (WIDS)
        WIDS is designed to be employed in an area that is serviced
        by an existing wireless network.
        It aids in the early detection of malicious outsider attacks
        and intrusions via wireless networks.

        Rogue AP
        A rogue access point is any Wi-Fi access point connected to
        the network without authorization.
        As it is not authorized, if there is any weakness in
        the AP, the hacker will have chance to compromise the
        network.

        Rogue Station
        It is similiar to Rogue AP, while it is a station.

        Monitor AP
        An AP will scan or listen to the air, and try to detect
        wireless attack in the network.
        Some AP products will work only in monitor role, while some
        AP products could switch between normal AP role (only
        provide wireless access service)and monitor AP role.

        Ad Hoc Mode
        Station could work under Ad hoc mode, then they
        could directly do peer-to-peer communication without
        other device support." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "201005311800Z" "200907291800Z" "200905072000Z" "200807251900Z" "200706191900Z" "200705161900Z" "200608201900Z" "Modified to add new nodes." "Modified to add new nodes." :"Add new nodes and table to support new featrues of WIDS." 0"Add new nodes to support new featrues of WIDS." "To fix bugs in the MIB file." "To fix bugs in the MIB file." *"The initial revision of this MIB module."       -- May 31, 2010 at 18:00 GMT
               �"Represents the scope of channels to be scanned.
        The following value are supported
        all(1)            - Do scan on all the channels.
        auto(2)           - Do scan for the channels that automatically
        selected by WIDS."                       �"Represents the channel scope to be scanned when
        h3cDot11WIDSScanMode is configurated as channelSpec mode.
        Each channel value will be separated by comma character."                       &"Represents the countermeasures mode."                      "Represents the age time for entries in the detected device table.
         If an entry is not detected within the interval, it is deleted from
         the detected device table.  If the deleted entry is that of a rogue, it
         is added into the rogue history table."                      "Represents whether the dynamic blacklist feature is enabled or not.
         'true'  : Enable the dynamic blacklist feature to filter out unwanted
                   clients, which will not get associated.
         'false' : Disable the dynamic blacklist feature."                      ""Represents the lifetime for dynamic blacklist entries.
         If a dynamic blacklist entry is not detected within the lifetime, the
         entry will be removed from the dynamic blacklist.
         The lifetime becomes active only if dynamic blacklist feature is
         enabled."                       �"Represents whether detection of flood attack is enabled or not.
         'true'  : Enable the detection of flood attack.
         'false' : Disable the detection of flood attack."                       �"Represents whether detection of Spoof attack is enabled or not.
         'true'  : Enable the detection of Spoof attack.
         'false' : Disable the detection of Spoof attack."                       �"Represents whether detection of weak-iv attack is enabled or not.
         'true'  : Enable the detection of weak-iv attack.
         'false' : Disable the detection of weak-iv attack."                       z"This object is used to clear all entries from the rogue history table.
         It will return false for get operation."                       �"This object is used to clear the history information of attacks
         detected in the WLAN system.
         It will return false for get operation."                       �"This object is used to clear the statistics of attacks detected in the
         WLAN system.
         It will return false for get operation."                       y"This object is used to remove all entries from the dynamic blacklist.
         It will return false for get operation."                       x"This object is used to remove all entries from the static blacklist.
         It will return false for get operation."                       x"This object is used to remove all entries from the static whitelist.
         It will return false for get operation."                       {"This object is used to clear the information of all detected rogue APs.
         It will return false for get operation."                       �"This object is used to clear the information of all detected rogue
         clients.
         It will return false for get operation."                       �"This object is used to clear the information of all detected ad hoc
         devices.
         It will return false for get operation."                       y"This object is used to clear the information of all detected devices.
         It will return false for get operation."                       w"This object is used to clear the information of all detected SSIDs.
         It will return false for get operation."                       '"The interval of WIDS flood detection."                       l"When flood attack exceeds the value of this node,
         the MAC address will be added into black list."                       ?"Represents whether the SSID permit feature is enabled or not."                       @"Represents whether the BSSID permit feature is enabled or not."                       �"The table provides the permitted vendor list, and each vendor
        will be identified by OUI.
        The legal device should be made by the permitted vendors."                       :"Each entry provides the information of permitted vendor."                       ?"Represents the vendor OUI information of the wireless device."                       !"The status of this table entry."                       4"Represents the vendor name of the wireless device."                       ]"The table represents the list of SSID could be permitted in
         the wireless network."                       8"Each entry provides the information of permitted SSID."                       8"Represents the permitted SSID in the wireless network."                       !"The status of this table entry."                       ;"Represents whether the permitted SSID is detected or not."                       z"The table provides the MAC address list of stations or APs,
        and WIDS always take them as legal stations or APs."                       p"Each entry contains the MAC address of station or AP,
        and WIDS always take it as legal station or AP."                       g"Represents the MAC address of station or AP, and WIDS always
        take it as legal station or AP."                       !"The status of this table entry."                       5"Represents whether the MAC address detected or not."                       �"Represents the type of the MAC address detected.
         The value of this object always is unknown if the MAC address is not
         detected."                       �"The table provides the MAC address list of rogue APs or rogue
        stations, the WIDS will take countermeasure as per the MAC
        address list."                       y"Each entry contains the MAC address of rogue AP or rogue station,
        and the countermeasure will be taken for it."                       p"Represents the MAC address of rogue AP or rogue station,
        and the countermeasure will be taken for it."                       !"The status of this table entry."                       Z"Represents whether the assigned MAC address in attack list is detected
         or not."                       �"Represents the type of detected MAC address in attack list.  If the
         MAC address is not detected, it will return unknown(5) for get
         operation."                       2"The table provides the information of whitelist."                       3"Each entry contains the information of whitelist."                       ,"Represents the MAC addresses in whitelist."                       !"The status of this table entry."                       9"The table provides the information of static blacklist."                       :"Each entry contains the information of static blacklist."                       3"Represents the MAC addresses in static blacklist."                       !"The status of this table entry."                       ^"The table represents the list of BSSID could be permitted in
         the wireless network."                       9"Each entry provides the information of permitted BSSID."                       9"Represents the permitted BSSID in the wireless network."                       <"Represents whether the permitted BSSID is detected or not."                       2"Represents the row status of permit BSSID table."                           h"The table represents the list of possible BSS information for
        rogue APs detected by the WIDS."                       Z"Each entry contains possible BSS information of each rogue AP
        detected by WIDS."                       -"Represents the BSS MAC address of rogue AP."                       )"Represents the vendor name of rogue AP."                       L"Represents the number of monitor APs which detected the
        rogue AP."                       U"Represents the time that AP was detected as a rogue AP for
        the first time."                       T"Represents the time that AP was detected as a rogue AP for
        the last time."                       ."Represents the SSID broadcasted by rogue AP."                       `"Represents the maximal value of signal strength that WIDS received
        from the rogue AP."                       f"Represents on which radio channel of the rogue AP the maximal signal
        strength was received."                       B"Represents the interval for Beacon management frame of rogue AP."                       D"Represents whether the countermeasure have taken for the rogue AP."                      D"Represents whether the rogue AP will be taken as a rogue AP.
        If the value is true, NMS should not display the rogue AP
        as NMS display rogue AP list, and the MAC address will be
        automatically added into h3cDot11WIDSIgnoreListTable.
        If the value is false, NMS will take it as a rogue AP. "                       ;"Represents whether the rogue AP encrypt the frame or not."                       �"This object is used to clear information of assigned AP.  The
         information of AP which detect assigned rogue AP will be cleared
         together.
         It will return false for get operation."                       V"Represents the time that AP was detected as a rogue AP for
         the first time."                       U"Represents the time that AP was detected as a rogue AP for
         the last time."                      P"As each rogue AP could be detected by multiple monitor APs, each
        monitor AP could have some kind of detailed information about
        a specific rogue AP.
        In the h3cDot11WIDSRogueAPTable table, the detailed
        information for a specific rogue AP will be summarized from
        information in the h3cDot11WIDSRogueAPExtTable table.
        For example, multiple monitor APs could receive RF signal of
        one rogue AP, and each monitor AP has its maximum signal strength by
        itself. The information will be kept as
        h3cDot11DetectMaxAPSigStrength in the h3cDot11WIDSRogueAPExtTable
        table. While only the maximum value among all the
        h3cDot11DetectMaxAPSigStrength for each monitor AP will be
        kept in the h3cDot11WIDSRogueAPTable as
        h3cDot11RogueAPMaxSigStrength."                       W"Each entry contains information of the rogue AP detected
        by each monitor AP."                       q"To uniquely identify each AP, and relation-ship between
        h3cDot11WIDSAPID and AP device will be static."                       k"Represents the current value of signal strength that WIDS monitor
        AP received from the rogue AP."                       X"Represents on which radio channel that WIDS monitor AP detected
        the rogue AP."                       N"Represents on which radio the monitor AP has detected the rogue
        AP."                       S"Represents whether monitor AP have taken countermeasure on the
        rogue AP."                       X"Represents the time that monitor AP detected the rogue AP for
        the first time."                       W"Represents the time that monitor AP detected the rogue AP for
        the last time."                       P"The table represents the list of rogue stations detected by
        the WIDS."                       8"Each entry contains information of each rogue station."                       ."Represents the MAC address of rogue station."                       ."Represents the vendor name of rogue station."                       R"Represents the number of monitor APs which detected the
         rogue station."                       `"Represents the time that station was detected as a rogue station for
         the first time."                       _"Represents the time that station was detected as a rogue station for
         the last time."                       >"Represents BSS MAC address that rogue station try to access."                       f"Represents the maximal value of signal strength that WIDS received
         from the rogue station."                       W"Represents on which radio channel the maximal signal strength
         was received."                       S"Represents whether the countermeasure have taken for the rogue
         station."                      \"Represents whether the rogue AP will be taken as a rogue station.
         If the value is true, NMS should not display the rogue station
         as NMS display rogue station list, and the MAC address will be
         automatically added into h3cDot11WIDSIgnoreListTable.
         If the value is false, NMS will take it as a rogue station. "                       P"Represents whether the rogue station work on the Ad Hoc mode
         or not."                       �"This object is used to clear information of assigned station.  The
         information of AP which detects assigned rogue station will be cleared
         together.
         It will return false for get operation."                       `"Represents the time that station was detected as a rogue station for
         the first time."                       _"Represents the time that station was detected as a rogue station for
         the last time."                      k"As each rogue station could be detected by multiple monitor APs, each
        monitor AP could have some kind of detailed information about
        a specific rogue station.
        In the h3cDot11WIDSRogueStaTable table, the detailed
        information for a specific rogue station will be summarized from
        information in the h3cDot11WIDSRogueStaExtTable table.
        For example, multiple monitor APs could receive RF signal of one rogue
        station, and each monitor AP has its maximum signal strength by
        itself. The information will be kept as
        h3cDot11DetectMaxStaSigStrength in the h3cDot11WIDSRogueStaExtTable
        table. While only the maximum value among all the
        h3cDot11DetectMaxStaSigStrength for each monitor AP will be
        kept in the h3cDot11WIDSRogueStaTable as
        h3cDot11RogueStaMaxSigStrength."                       X"Each entry contains information of rogue station detected
        by each monitor AP."                       p"Represents the current value of signal strength that WIDS monitor
        AP received from the rogue station."                       V"Represents on which radio channel the maximal signal strength
        was received."                       S"Represents which radio on the monitor AP has detected the
        rogue station."                       Y"Represents whether monitor AP have taken countermeasure for the
        rogue station."                       ]"Represents the time that monitor AP detected the rogue station
        for the first time."                       \"Represents the time that monitor AP detected the rogue station
        for the last time."                       6"This Table contains information of detected devices."                       6"Each entry contains information of detected devices."                       0"Represents MAC address of the device detected."                       )"Represents type of the device detected."                       B"Represents whether the device detected is a rogue device or not."                       +"Represents Vendor of the detected device."                       ="Represents the number of active APs that detect the device."                       B"Represents the service set identifier for the ESS of the device."                       E"Represents the basic service set identifier of the detected device."                       ?"Represents the channel in which the device was last detected."                       5"Represents the maximum detected RSSI of the device."                       5"Represents the beacon interval for the detected AP."                       ="Represents the time at which the device was first detected."                       C"Represents the time at which the rogue AP was detected last time."                       �"This object is used to clears the information of the device detected
         in the WLAN.
         It will return false for get operation."                       ("Represents SNR of the device detected."                       X"This Table contains information of the AP which detected device in the
         WLAN."                       X"Each entry contains information of the AP which detected device in the
         WLAN."                       @"Represents the MAC address of the AP that detected the device."                       9"Represents the name of the AP that detected the device."                       @"Represents the radio index of the AP that detected the device."                       5"Represents the maximum detected RSSI of the device."                       D"Represents the time at which the rogue AP was detected first time."                       C"Represents the time at which the rogue AP was detected last time."                       ?"This table contains information of dynamic blacklist entries."                       7"Each entry contains information of dynamic blacklist."                       Y"Represents the MAC address of the device inserted into the dynamic
         blacklist."                       ?"Represents the time elapsed since the entry was last updated."                       U"Represents the reason why the entry was added into the dynamic
         blacklist."                       �"This object is used to remove designated entry from the dynamic
         blacklist.
         The value which read from this object always is false."                       R"Represents the time elapsed since the entry was last updated in units TimeTicks."                       �"This table contains information of all expired rogue devices which
         have been deleted from the list of detected rogue devices because
         they could not be detected within the device aging duration."                       �"Each entry contains information of an expired rogue device which
         has been deleted from the list of detected rogue devices because
         they could not be detected within the device aging duration."                       !"Represents index of this entry."                       +"Represents the MAC address of the device."                       '"Represents the vendor for the device."                       $"Represents the type of the device."                       ?"Represents the channel in which the device was last detected."                       B"Represents the service set identifier for the ESS of the device."                       <"Represents the time at which the device was last detected."                       b"This table contains information of the history of attacks detected in
         the WLAN system."                       b"Each entry contains information of the history of attacks detected in
         the WLAN system."                       !"Represents index of this entry."                       �"Represents the Mac address.  In case of spoof attacks, this field
         provides the BSSID which was spoofed.  In case of other attacks,
         this field provides the MAC address of the device which initiated
         the attack."                        "Represents the type of attack."                       :"Represents the channel in which the attack was detected."                       7"Represents the average RSSI of the designated attack."                       8"Represents the time at which this attack was detected."                       ;"Represents the name of the AP which detected this attack."                           �"Represents current attack tracking time.  It is started at the system
         startup and is refreshed each hour subsequently."                       D"This table contains information of the counts of attacks detected."                       D"Each entry contains information of the counts of attacks detected."                        "Represents the type of attack."                       �"Represents the count of attacks detected since the time
         specified by the current attack tracking time.  The current
         attack tracking time is started at the system startup and
         is refreshed each hour subsequently."                       X"Represents the total count of the attacks detected since
         the system startup."                       _"This table contains information of blacklist entries, including
         dynamic and static."                       /"Each entry contains information of blacklist."                       Y"This object represents the MAC address of the device inserted into
         the table."                       {"Represents the time elapsed since the entry was last updated.
         If it is static blacklist, the value is always 0."                       C"Represents the reason why the entry was added into the blacklist."                       8"This object represents the status of this table entry."                       �"Represents the time elapsed since the entry was last updated in timetick.
         If it is static blacklist, the value is always 0."                               �"The notification represents that a rogue AP or a station was
        detected by WIDS.
        The NMS would refer to MIB table under h3cDot11WIDSDetectGroup
        group to get more detailed information."                 B"The notification represents a rogue Ad hoc station was detected."                 �"The notification represents which unauthorized SSID are
        accessed in the network.
        The notification will be sent to NMS when an
        unauthorized SSID is detected on the network for the
        first time."                 �"The notification represents that a rogue device has aged out
        and moved to history table or the device type has been changed
        to friendly.
        The notification will be sent to NMS whenever a rogue disappears."                 J"This notification occurs when some type of attack is detected.
        "                 p"This notification occurs whenever a detected device is classified
        as rogue wireless-bridge.
        "                 C"This notification occurs when flood attack is detected.
        "                 C"This notification occurs when spoof attack is detected.
        "                 E"This notification occurs when weak IV attack is detected.
        "                     '"Represents which rogue AP or station."                       �"Represents the rogue type.
        The following value are supported
        rogueAp(1)        - A rogue AP
        rogueStation(2)   - A rogue Station"                       <"Represents which monitor detected the rogue AP or station."                       /"Represents the MAC address of Ad hoc station."                       ""Represents an unauthorized SSID."                       "Represents monitor AP's APID."                       ""Represents monitor AP's radio ID"                       *"Represents mac address of attack source."                       "Represents attack frame type."                       "Represents attack channel."                       %"Represents when attacking happened."                       /"Represents mac address of attack destination."                      