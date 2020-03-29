 ñ-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Technologies. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide WLAN configuration information.
-- Reference:
-- Version: V2.5
-- History:
--   V1.0 2006-05-10 Initial version, created by shiyang (Richard)
--   V1.1 2007-02-01 modified by xingjichen(Daniel)
--        Added h3cDot11RadioIntfConfigTable,h3cDot11RadioIntfBindTable,
--        h3cDot11StaKeepALiveTimerIntvl,h3cDot11StaIdleTimerIntvl,
--        h3cDot11BroadcastProbeReply.
--   V1.2 2007-04-27 modified by shiyang(Richard)
--        Replace h3cDot11UnicastCipherKeyIndex, h3cDot11UnicastCipherKey,
--        h3cDot11BroadcastCipherKeyIndex and h3cDot11BroadcastCipherKey
--        with h3cDot11CipherKeyIndex, h3cDot11CipherKey as per CLI change.
--        Delete h3cDot11MaxTxLifetime as per CLI change.
--        Add h3cDot11GlobalCountryCode,h3cDot11APScanMode.
--        h3cDot11ACCtrlTunnelSecSupport and h3cDot11ACDataTunnelSecSupport.
--        Move h3cDot11StaKeepALiveTimerIntvl,h3cDot11StaIdleTimerIntvl
--        and so on to h3cDot11GlobeConfigGroup.
--        Split h3cDot11ServicePolicyTable into h3cDot11ServicePolicyTable
--        and h3cDot11ServicePolicyExtTable.
--        For h3cDot11SecurityCiphers node,update its description for case of
--        value equals to zero.
--   V1.3 2007-06-19 modified by Vikas K
--        Add new table of h3cDot11DataRateConfigTable for AP Configuration
--        Group.
--        Add new node of h3cDot11APName for h3cDot11APTemplateTable.
--        Modify the h3cDot11APScanMode from read-only to read-write.
--        Add undo functionality to node h3cDot11WlanInfBindingID and
--        h3cDot11Description.
--        Add h3cDot11StatisInterv to the h3cDot11APTemplateTable.
--   V1.4 2007-10-9 modified by Jagan K
--        Add new table h3cDot11WlanBssIfTable for WLAN BSS interface
--        configuration.
--        Add new table h3cDot11WlanEssIfTable for WLAN ESS interface
--        configuration.
--        Add new table h3cDot11WlanEthernetIfTable for WLAN Ethernet interface
--        configuration.
--   V1.5 2007-12-21 modified by wanghao (Kumar)
--        Add h3cDot11ACAutoAPSupport, h3cDot11AutoAPName,
--        h3cDot11PersistentName to h3cDot11GlobeConfigGroup
--        Add h3cDot11ClientMaxCount to h3cDot11ServicePolicyTable
--        Add h3cDot11APBroadcastProbeReply, h3cDot11StaIdleTimerInterv,
--        h3cDot11StaKeepAliveTimerInterv, h3cDot11APCir, h3cDot11APCbs
--        to h3cDot11APTemplateTable.
--   V1.6 2008-02-25 modified by wanghao (Kumar)
--        Add h3cDot11RdoClientMaxCount to h3cDot11RadioPolicyTable.
--   V1.7 2008-04-01 modified by wangbin
--        Add h3cDot11PortSecurityTable to h3cDot11InterfaceConfigGroup.
--        Add h3cDot11PortSecurityMode, h3cDot11SecurityUserLoginTxKeyType,
--        h3cDot11SecurityPskKeyMode, h3cDot11SecurityPskKeyString
--        to h3cDot11PortSecurityTable.
--   V1.8 2008-08-01 modified by ChangHuifeng
--        Add h3cDot11ACBackupGroup and
--        h3cDot11RadioElementConfigGroup.
--        Add h3cDot11WlanMeshIfTable to h3cDot11InterfaceConfigGroup.
--        Add h3cDot11APPriorityLevel and h3cDot11APElementID to
--        h3cDot11APTemplateTable.
--        Add h3cDot11CfgRdElementID to h3cDot11RadioToConfigTable.
--        Add h3cDot11APDevDetectEnable to h3cDot11APTemplateEntry.
--        Obsolete h3cDot11StatisInterv
--        Change default value of h3cDot11APScanMode to passive.
--        Change units of h3cDot11BeaconInterval and
--        h3cDot11RadioCfgBeaconIntvl to TU.
--        Remove default value of h3cDot11SSIDEncryptionMode.
--        Change MAC-ACCESS of objects in h3cDot11RadioToConfigTable
--        from read-create to read-write.
--        Change name of h3cDot11IWlanEssRowStatus to h3cDot11WlanEssRowStatus.
--        Change description of h3cDot11PortSecurityTable.
--   V1.9 2008-11-07 modified by Wang Lu and Li Yugang
--        Add h3cDot11IntfTrapThreshold to h3cDot11GlobeConfigGroup
--        Add h3cDot11SPInCirMode, h3cDot11SPInCirValue, h3cDot11SPOutCirMode,
--        h3cDot11SPOutCirValue to h3cDot11ServicePolicyTable
--        Add h3cDot11CfgWorkMode to h3cDot11RadioToConfigTable
--        Add h3cDot11RadioCfgWorkMode to h3cDot11RadioIntfConfigTable.
--        Add new traps h3cDot11CfgCipherChange and h3cDot11CfgPSKChange.
--        Add h3cDot11MonitorInterval, h3cDot11SampleInterval,
--        h3cDot11ChnlSwitChkInterval, h3cDot11APUserUplimit,
--        h3cDot11APL2IsolateEnable to h3cDot11GlobeConfigGroup.
--        Add h3cDot11RadioCfgOnly11gEnable to h3cDot11RadioIntfConfigTable.
--        Add h3cDot11RadioWDSTable to h3cDot11RadioElementConfigGroup.
--   V2.0 2009-03-20 modified by caizibin
--        Add value wapi(6) to h3cDot11PortSecurityMode
--   V2.1 2009-05-07 modified by Li Yugang, Wang Shaojie, Jin Yi
--        Add h3cDot11APBSSIDSupportNum, h3cDot11APLastUpdateStatTime,
--        h3cDot11APDoSProtectEnable, h3cDot11MaxAPPerIf to
--        h3cDot11GlobeConfigGroup.
--        Add h3cDot11WlanInfPVID to h3cDot11ServicePolicyTable.
--        Add h3cDot11CipherKeyType to h3cDot11ServicePolicyExtTable.
--        Add h3cDot11CfgPwrAttValue to h3cDot11RadioToConfigTable.
--        Add new table h3cDot11APSysInfoSetTable to h3cDot11APConfigGroup.
--        Add h3cDot11SSIDWepIDConflictTrap to h3cDot11CfgNotifications.
--        Add new table h3cDot11CfgTrapVarObjects to h3cDot11CfgNotifyGroup.
--   V2.2 2009-07-29 modified by Heziqi
--        Add new node h3cDot11ServiceSetVlanId for h3cDot11APServiceSetTable.
--        Add h3cDot11UplinkTrackId to h3cDot11GlobeConfigGroup.
--        Add h3cDot11APLimitTable.
--        Change description of h3cDot11StaKeepALiveTimerIntvl.
--        Add new node h3cDot11RadioTxArithmetic for H3cDot11RadioToConfigTable.
--   V2.3 2009-07-29 modified by Jinyi
--        Add new table h3cDot11APIfSetTable
--   V2.4 2009-12-01 modified by Wang Shaojie
--        Add new node h3cDot11APGetIPMethod for h3cDot11APTemplateTable.
--        Add new group h3cDot11CfgTrapConfigGroup.
--        Add new table h3cDot11CfgSwitchTrapTable to h3cDot11CfgTrapConfigGroup.
--        Add new node h3cDot11BeaconIntervalMs to h3cDot11RadioPolicyTable.
--        Add new node h3cDot11SPInCirStaticValue, h3cDot11SPOutCirStaticValue
--        to h3cDot11ServicePolicyTable.
--        Modify description of h3cDot11SecurityCiphers.
--        Add new node h3cDot11StatisIntervMode to h3cDot11APTemplateTable.
--        Modify SYNTAX of h3cDot11APWorkMode.
--        Modify STATUS of h3cDot11StatisInterv.
--        Add new node h3cDot11SmartRateSet to h3cDot11DataRateConfigTable.
--        2010-02-22 modified by Wang Chunsheng
--        Add new node h3cDot11CfgChannelLockStat, h3cDot11CfgPowerLockStat,
--        h3cDot11CfgLBRdGroupId, h3cDot11CfgRRMSDRdGroupId to h3cDot11RadioToConfigTable.
--        2010-03-15 modified by Wang Lu
--        Add h3cDot11RtCollectSwitch, h3cDot11RglCollectIntvl, and
--        h3cDot11RtCollectIntvl to h3cDot11GlobeConfigGroup
--        Add h3cDot11SPIsolate to h3cDot11ServicePolicyTable
--        Add h3cDot11APServiceVlanTable, h3cDot11RadioConfigTable,
--        h3cDot11RadioPolicyExtTable and h3cDot11RadioSSIDCfgTable
--        Remove h3cDot11CfgTrapConfigGroup
--        Add h3cDot11SrvPortSecurityTable
--        2010-06-01 Modified by Wang Shaojie, Yin Junjie
--        Add h3cDot11RCApPowerLevel, h3cDot11RCDynamicChlState,
--        h3cDot11RCDynamicPowerState to h3cDot11RadioConfigTable.
--        Add h3cDot11APSerialIDTable
--        Add h3cDot11APSTVlanTable
--        2010-07-08 Modified the index of h3cDot11APSysInfoSetTable by jinyi
--        2010-08-05 Modified by Yin Junjie
--        Add new table h3cDot11SrvPolicyExtendTable
--        Add h3cDot11SPEnable to h3cDot11SrvPolicyExtendTable
--        2010-09-02 Modified by Yin Junjie
--        Add new node h3cDot11AdjIntfTrapThreshold
--        to h3cDot11GlobeConfigGroup
--        Add h3cDot11RCRadioStatus to h3cDot11RadioConfigTable
--   V2.5 2010-09-25 Modified by Wu Xiaopeng
--        Remove Size list of h3cDot11APName.
-- =============================================================================
                                                                                                    ß"This MIB provides information about WLAN configuration.

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

        Fat AP
        Applied in the home, SOHO and so on, and it could
        work independently without help from AC.

        Fit AP
        Applied in the enterprise environment, it will work
        under the control and management from AC.

        Control And Provisioning of Wireless Access Points Protocol
        The short name of protocol is CAPWAP. AC will control
        and manage AP by CAPWAP tunnel protocol defined by IETF.
        Also, a data tunnel will be set up between AC and AP.

        BSS
        IEEE 802.11 Basic Service Set (Radio Cell).  The
        BSS of an AP comprises of the stations directly
        associating with the AP.

        Radio
        The chip set to receive and send wireless signal.

        Association
        The service used to establish access point
        or station mapping and enable station invocation
        of the distribution system services.
        (Wireless clients attempt to connect to
        access points.)

        Basic Rate
        A data rate that is mandatory for client
        devices to support in order for them to achieve
        successful association.

        MSDU
        MAC Service Data Unit, it is frame format defined by
        802.11.

        TU
        It is 1,024 microseconds (ms), which is about 1
        millisecond.

        AKM
        The authentication and key management method defined by
        802.11i, and which includes 802.1x and pre-shared key." Œ"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "201009251800Z" "201009021800Z" "200907291800Z" "200905072000Z" "200903201530Z" "200811071530Z" "200807091800Z" "200802251800Z" "200712211800Z" "200710091655Z" "200706191800Z" "200704272000Z" "200702012000Z" "200605101900Z"  "Modified to remove some issue." "Modified to add new node." *"Modified to add new nodes and new table." *"Modified to add new nodes and new table." /"Modified to add new value for appointed node." *"Modified to add new nodes and new table." "Modified to add new groups." "Modified to add new nodes." "Modified to add new nodes." "changed for new requirements" "Modified to add new table." "Modified to fix some issue." "Modified to support fat AP." *"The initial revision of this MIB module."       -- Sep 25, 2010 at 18:00 GMT
           3"Represents the country code for wireless network."                       –"Represents the interval of the keep alive requests sent between
        AP and STA.
        Default value 0 : The keep alive function is disabled."                       m"Represents the interval for which the link between AP and STA
        ( power-save or awake ) can be idle."                       ·"Represents enable the AP to reply broadcast probe or not.
        'true' : The AP to reply broadcast probe is enabled.
        'false': The AP to reply broadcast probe is disabled"                       ¶"Represents the scanning mode for AP.
        The following values are supported:
        active(1),  - AP will actively do scan.
        passive(2)  - AP will passively do scan."                       T"Represents what security schemes are supported for CAPWAP Control
        tunnel."                       u"Represents what security schemes are supported for CAPWAP data
        tunnel. The cleartxt is the default scheme."                       ¥"Represents enable the auto AP functionality or not.
        'true' : The auto AP functionality is enabled.
        'false': The auto AP functionality is disabled"                       †"Represents the name of auto AP which need to be made persistent.
        When read the value from the node, NULL value be returned."                       …"Represents the new name of auto AP after being made persistent.
        When read the value from the node, NULL value be returned."                       ™"Represents threshold of interference trap.  If signal strength of
        the device exceeds this threshold, corresponding trap will
        be sent."                       „"Represents the monitoring interval.
        Default value 0 : The monitoring functionality is changed to
        real-time mode."                       f"Represents the sampling interval.
        Default value 0 : The sampling functionality is disabled."                       5"Represents the checking interval of channel switch."                       A"Represents the upper limit of user which has access to this AP."                       ³"Represents enable the layer2 isolation or not.
        'true' : The layer2 isolation functionality is enabled.
        'false': The layer2 isolation functionality is disabled."                       ="Represents the max number of BSSID supported by Current AP."                       ?"Represents date and time update statistic information lately."                       ­"Represents enable the DOS protection or not.
        'true' : The DOS protection functionality is enabled.
        'false': The DOS protection functionality is disabled."                       A"Represents max AP number that can be connected to AC interface."                       5"Represents the start time of current sample period."                       i"Represents the track id of AP.
        Default value 0 : The uplink track function for AP is disabled."                       á"This object is used to turn on/off real-time statistics collection
         between AC and AP.  If the value is true, h3cDot11RtCollectIntvl will
         take effect.  Otherwise, h3cDot11RglCollectIntvl will take effect."                       Z"This object represents interval to regularly collect statistics from
         AC to AP."                       Z"This object represents interval to collect real-time statistics from
         AC to AP."                       %"The CPU usage threshold for all AP."                       ("The memory usage threshold for all AP."                       ˜"Represents threshold of adjacent interference trap. If signal strength
        of the device exceeds this threshold, corresponding trap will be sent."                           £"The table defines the parameters for radio policy, as per
        radio policy of CLI.
        One radio policy could be assigned to the different radios (AP)."                       7"Each entry contains information of each radio policy."                       &"Represents the name of radio policy."                       6"Represents the interval for Beacon management frame."                      +"Represents the number of beacon intervals that shall elapse
        between transmission of Beacons frames containing a Traffic
        Indication Map (TIM) element whose DTIM Count field is 0.
        This value is transmitted in the Delivery TIM (DTIM) Period
        field of Beacon frames."                       ¿"Represents the current minimum size,in octets,of the MAC
        protocol data unit (MPDU), below which a Request to send/Clear
        to send (RTS/CTS) handshake shall not be performed."                       ÷"Represents the current maximum size, in octets, of the MPDU that
        may be delivered to the PHY. A MSDU shall be broken into
        fragments if its size exceeds the value of this attribute after
        adding MAC headers and trailers."                       Þ"Represents the maximum number of transmission attempts of a
        frame, the length of which is less than or equal to
        h3cDot11RTSThreshold, that shall be made before a failure
        condition is indicated."                       Ë"Represents the maximum number of transmission attempts of a
        frame, the length of which is longer than h3cDot11RTSThreshold,
        that shall be made before a failure condition is indicated."                       ¤"Represents the elapsed time. After the time specified by
        h3cDot11MaxRxLifetime, the further attempts to reassemble the
        MSDU shall be terminated."                       !"The status of this table entry."                       S"Represent the maximum number of stations supported by
        this radio policy."                       6"Represents the interval for Beacon management frame."                       §"The table defines the parameters for ESS, as per service policy
        of CLI.
        One service policy could be assigned to the different radios
        (AP)."                       9"Each entry contains information of each service policy."                       +"Represents the ID of each service policy."                       Y"Represents the ESS. As per CLI, the value of
        service policy name will be SSID."                       ²"This attribute controls whether the SSID will be advertised in
        the beacon frame.
        If it is true, then SSID will not be advertised in the beacon
        frame."                       7"Represents the Authentication mode defined by 802.11."                       ."Represents the encryption mode for this ESS."                       ]"Represents the service policy will bind to what kind of
        data forwarding interface."                       "Represents the interface ID of the interface that ESS will
        bind to.
        If the value is set to -1, the binding will be removed."                       !"The status of this table entry."                       U"Represent the maximum number of stations supported by
        this service policy."                       ß"
        CIR(committed information rate) mode of inbound direction.
        This object is useful only when the corresponding CIR is nonzero.
        If value of this object is changed, corresponding CIR will be reset."                       Õ"Represents the CIR of inbound direction of this service policy.
        If the value is 0, it means that no flow control is applied to
        the service policy, and the corresponding CIR mode is meaningless."                       à"
        CIR(committed information rate) mode of outbound direction.
        This object is useful only when the corresponding CIR is nonzero.
        If value of this object is changed, corresponding CIR will be reset."                       Ö"Represents the CIR of outbound direction of this service policy.
        If the value is 0, it means that no flow control is applied to
        the service policy, and the corresponding CIR mode is meaningless."                       !"Represents the VLAN ID of SSID."                       >"Represents the CIR of inbound direction for static CIR mode."                       ?"Represents the CIR of outbound direction for static CIR mode."                       X"If it is true, then stations connected with the service policy are
         isolated."                       ß"The table defines the parameters for ESS, as per service policy
        of CLI.
        When the value of h3cDot11SSIDEncryptionMode equals to cipher(2),
        more configuration for a ESS will be put into the table."                       W"Each entry contains information of each service policy under cipher(2)
        mode."                       +"Represents the ID of each service policy."                       i"To enable the security Information element in the beacon and
        probe response frames sent by AP."                      è"The WLAN system support the following cipher type for data frame
        encryption.
        wep40(2)
        tkip(4)
        aesccmp(16)
        wep104(32)
        wpisms4(64)
        wep128(128)
        For each service policy,it could support multiple cipher types at
        the same time.So the value of object could combine multiple value
        of cipher type above.
        When the value of node equals to zero, it means no configuration or
        undo operation."                       ¤"Represents the key index of cipher key for packet.
        When h3cDot11SecurityCiphers value is wep40 or wep104,
        the configuration will take effective."                       —"Represents the cipher key for packet.
        When h3cDot11SecurityCiphers value is wep40 or wep104,
        the configuration will take effective."                       !"The status of this table entry."                       6"Represents the cipher key type of h3cDot11CipherKey."                       €"The table defines the radio policy of each radio.
        It can't be modified if the radio policy is a default radio policy."                       7"Each entry contains information of each radio policy."                       -"This object represents the Serial ID of AP."                       $"This object represents each radio."                       B"This object represents the interval for Beacon management frame."                      8"This object represents the number of beacon intervals that shall elapse
        between transmissions of Beacons frames containing a Traffic
        Indication Map (TIM) element whose DTIM count field is 0.
        This value is transmitted in the Delivery TIM (DTIM) Period
        field of Beacon frames."                       Í"This object represents the current minimum size, in octets, of the MAC
        protocol data unit (MPDU), below which a Request to send/Clear
        to send (RTS/CTS) handshake shall not be performed."                      "This object represents the current maximum size, in octets, of the MPDU
         that may be delivered to the PHY.  A MSDU shall be broken into
        fragments if its size exceeds the value of this attribute after
        adding MAC headers and trailers."                       ê"This object represents the maximum number of transmission attempts of a
        frame, the length of which is less than or equal to
        h3cDot11RTSThreshold, that shall be made before a failure
        condition is indicated."                       Û"This object represents the maximum number of transmission attempts of a
        frame, the length of which is longer than h3cDot11RTSThreshold,
        and that shall be made before a failure condition is indicated."                       `"This object represents the maximum number of stations supported by
        this radio policy."                      "This table defines the WLAN security status for ESS, BSS and
        WLAN-Ethernet interface which binding the crypto service-template.
        Otherwise, when binding the clear service-template,
        h3cPortSecurityTables should be used to configure port security."                       2"There is a row in this table for service policy."                       +"Represents the ID of each service policy."                      b"Determines the security modes of the WLAN port.

        noRestrictions(1)  The default value,no any security mode is set.

        userLoginSecureExt(2) Access to the port is denied until the port
        client is authorized (by 802.1X).

        psk(3) Access to the port is denied until the port client is
        authorized (by 802.1X key negotiation).

        macAddressAndPsk(4) The MAC address is first authenticated and only if
        this succeeds does the psk then attempt user authentication.

        userLoginSecureExtOrPsk(5) This selects both the userLoginSecureExt and
        psk modes together such that either is allowed to authorized access.
        Which mode works for client depends on the client's choice.

        wapi(6) Access to the port is denied until the port client is
        authenticated (by WAPI).
        "                      A"This indicates the key type in the 802.1X EAPOL_Key packet.

        userLoginTxKeyTypeNone(1) This means the key type is not set yet.

        userLoginTxKeyTypeDot11Key(2) This selects the 802.11 key type.

        userLoginTxKeyTypeRsaRC4Key(3) This selects the RC4 key for RSA RC4
        session encryption."                      5"This is the password input mode. When input as pskKeyModePassPhrase,
        h3cDot11SrvSecurityPskKeyString must be 8 to 63 characters;
        when input as pskKeyModeRawKey, h3cDot11SrvSecurityPskKeyString
        must be 64 characters and each character must be '0'-'9', 'a'-'f' and
        'A'-'F'."                       :"This is the password string used for psk authentication."                       :"The table defines the parameters of each service policy."                       9"Each entry contains information of each service policy."                       3"Represents whether the service policy is enabled."                          Y"By AP template CLI, administrator will configure the parameters of AP
        by convenience.
        Before AP boot up and connect to AC by CAPWAP tunnel, administrator
        will create AP template for each AP. When AP connect to AC,
        AC will assign configuration to AP by h3cDot11APSerialID
        information in AP template."                       <"Each entry contains configuration information for each AP."                       %"Represents the name of AP template."                       "Represents AP serial id."                       ("Represents the alias of AP model name."                       à"This attribute will give more information about AP.
        Administrator could suggest the location, owner or
        other information for each AP.
        If the value is set to NULL, the description will be removed."                       "Represents what work mode for AP.
        The following values are supported:
        normal(1),  - AP will supply WLAN service.
        monitor(2)  - AP will be a monitor to find attack.
        semiMonitor(3) - AP will supply WLAN service and Device detection is
        enabled."                       !"The status of this table entry."                       "Represents the AP name."                       -"Represents the interval of radio statistic."                       ·"Represents enable the AP to reply broadcast probe or not.
        'true' : The AP to reply broadcast probe is enabled.
        'false': The AP to reply broadcast probe is disabled"                       m"Represents the interval for which the link between AP and STA
        ( power-save or awake ) can be idle."                       V"Represents the interval of the keep alive requests sent between
        AP and STA."                       >"Represents the committed information rate between AP and AC."                       8"Represents the committed burst size between AP and AC."                       ¢"This object represents the connection priority for the AP.
        If the connection priority is 7, the AC is considered as the
        primary AC for the AP."                       +"This object represents the AP element ID."                      Œ"Represents whether device detection is enabled or not.
         'true' : Device detection is enabled.
         'false': Device detection is disabled.
         If device detection is enabled, the AP will provide both device
         detection and WLAN data services.
         By default, the AP only provides WLAN data services.  When an AP works
         in monitor mode, that is, the value of object h3cDot11APWorkMode is
         monitor, device detection can not be enabled with object
         h3cDot11APDevDetectEnable.  Device detection in normal AP mode can be
         enabled or disabled only when all radios of the AP are disabled."                       ;"This object represents the method how AP gets IP address."                       ·"This object represents the mode of statics interval.
         normal(1) - statics interval value between 10s to 120s
         realtime(2) - statics interval value between 2s to 5s"                       `"Before AP connects to AC, administrator will configure radio
        parameter to each radio."                       ?"Each entry contains configuration information for each radio."                       %"Represents the name of AP template."                       "Represents each radio."                       &"Represents the name of radio policy."                       >"Represents the radio will work with which 802.11 radio type."                       -"Represents the channel allocation of radio."                       5"Represents the maximal transmit power scope for AP."                       ü"Represents whether use long or short preamble for 802.11 MAC
        frame.
        When h3cDot11CfgRadioType is either dot11b or dot11g,
        then value for h3cDot11PreambleLen will be valid.
        Othwise, the value for it will be invalid."                       L"Represents the radio admin status whether is enabled
        or disabled."                       Ÿ"Represents the element ID of this radio.  It comprises two parts.
        The highest 24 bits are AP element ID and the lowest 8 bits are
        radio ID."                       $"Represents work mode of the radio."                       ,"Represents the value of power attenuation."                       ü"Represents the transmission arithmetic of the radio.
        The following values are supported:
        quality(1)  - Consider the quality first during the transmission.
        bandwidth(2) - Consider the bandwidth first during the transmission."                       3"Represents locked status of channel on the radio."                       1"Represents locked status of power on the radio."                       ?"Represents the load balance group ID allocated for the radio."                       D"Represents the RRM self-decisive group ID allocated for the radio."                       š"For each radio, it could configure multiple service policies.
        The table describes the relationship between radio and
        service policies."                       X"Each entry contains service policy information for each
        specific radio of AP."                       :"Represents the ID of each service policy used by the AP."                       !"The status of this table entry."                       i"Represents the Vlan ID of BSS which is generated when service policy
        is binded with the Radio."                       —"For each service policy, it could be bind to several VLANs.
        The table describes the relationship between VLAN and
        service policies."                       a"Each entry contains VLAN and service policy information for each
        specific radio of AP."                       ?"Represents the VLAN that current Service Policy have bind to."                       ^"Represents the NAS Port ID of current Service Policy for each
        specific radio of AP."                       !"The status of this table entry."                       2"The table of the system information for each AP."                       3"The system information configuration for each AP."                       &"Represents the system Net ID for AP."                       !"The CPU usage threshold for AP."                       $"The memory usage threshold for AP."                       ‹"For each connected APs, administrator could configure a series of
        limits.  This table describes the limit information for AP(s)."                       8"Each entry contains the limit information for each AP."                       ×"Represents the upper limit of service template binded
        with this AP.  All radios of AP share this limit.
        Default value 0 : There is no upper limit of service template
        binded with this AP."                       Õ"Represents the upper limit of user which has access to this AP.
        All BSSs binded with AP share this limit.
        Default value 0 : There is no upper limit of user which has access
        to this AP."                      "Represents the threshold of user which has access to this
        AP.  All BSSs binded with AP share this limit.  If the user counter
        is overflow, the trap will be sent.
        Default value 0 : There is no threshold of user which has access
        to this AP."                       5"The table of the interface information for each AP."                       6"The interface information configuration for each AP."                       '"Represents the index for a interface."                       e"This object is an 'alias' name for the interface as specified
        by a network manager for AP."                       ¥"For all the radios on the AP, it could configure multiple service policies.
        The table describes the relationship between AP and
        service policies."                       ="Each entry contains service policy information for each AP."                       &"This object represents AP serial id."                       F"This object represents the ID of each service policy used by the AP."                       w"This object represents the VLAN ID of BSS which is generated when the
         service policy is bound to the radio."                       8"This object represents the status of this table entry."                       `"Before AP connects to AC, administrator will configure radio
        parameter to each radio."                       ?"Each entry contains configuration information for each radio."                       -"This object represents the Serial ID of AP."                       $"This object represents each radio."                       T"This object represents the radio will work with which 802.11 radio
         type."                       9"This object represents the channel allocation of radio."                      "This object represents whether use long or short preamble for 802.11
         MAC frame.
        When h3cDot11CfgRadioType is either dot11b or dot11g,
        then value for h3cDot11PreambleLen will be valid.
        Otherwise, the value for it will be invalid."                       8"This object represents the value of power attenuation."                       5"Represents the maximal transmit power scope for AP."                       +"Enable/Disable dynamic channel selection."                       6"Enable/Disable dynamic power selection for the band."                       L"Represents the radio admin status whether is enabled
        or disabled."                       š"For each radio, it could configure multiple service policies.
        The table describes the relationship between radio and
        service policies."                       D"Each entry contains SSID configuration information for each radio."                       -"This object represents the serial ID of AP."                       $"This object represents each radio."                       2"This object represents the WLAN ID of the BSSID."                       S"This object represents the ID of each service policy used by the
         radio."                       4"As MAC address format, it is used to identify BSS."                       "RowStatus."                       ;"The table will provide the general information about APs."                       7"Each entry contains the general information of an AP."                       "Represents AP serial id."                      "Represents what work mode for AP.
        The following values are supported:
        normal(1),  - AP will supply WLAN service.
        monitor(2)  - AP will be a monitor to find attack.
        hybrid(3) - AP will supply WLAN service and Device detection is
        enabled."                       ;"This object represents the method how AP gets IP address."                           J"The table defines the parameters for radio in AP, as per
        radio."                       6"Each entry contains information of each radio in AP."                       ."Represents the Radio IfIndex of radio in AP."                       6"Represents the interval for Beacon management frame."                      +"Represents the number of beacon intervals that shall elapse
        between transmission of Beacons frames containing a Traffic
        Indication Map (TIM) element whose DTIM Count field is 0.
        This value is transmitted in the Delivery TIM (DTIM) Period
        field of Beacon frames."                       ¿"Represents the current minimum size,in octets,of the MAC
        protocol data unit (MPDU), below which a Request to send/Clear
        to send (RTS/CTS) handshake shall not be performed."                       ÷"Represents the current maximum size, in octets, of the MPDU that
        may be delivered to the PHY. A MSDU shall be broken into
        fragments if its size exceeds the value of this attribute after
        adding MAC headers and trailers."                       ã"Represents the maximum number of transmission attempts of a
        frame, the length of which is less than or equal to
        h3cDot11RadioRTSThreshold, that shall be made before a failure
        condition is indicated."                       Ù"Represents the maximum number of transmission attempts of a
        frame, the length of which is longer than
        h3cDot11RadioRTSThreshold, that shall be made before a
        failure condition is indicated."                       ¬"Represents the elapsed time. After the time specified by
        h3cDot11RadioCfgMaxRxLifetime, the further attempts to reassemble
        the MSDU shall be terminated."                       >"Represents the radio will work with which 802.11 radio type."                       -"Represents the channel allocation of radio."                       5"Represents the maximal transmit power scope for AP."                       N"Represents whether use long or short preamble for 802.11 MAC
        frame."                       $"Represents work mode of the radio."                       ¨"Represents whether enable only 802.11g radio mode or not.
        'true' : Only 802.11g radio mode is enabled.
        'false': Only 802.11g radio mode is disabled."                       K"The table defines the binding information for each radio in AP.
        "                       M"Each entry contains the radio interface binding information
        in AP."                       +"Represents the ID of each service policy."                       L"Represents the Ifindex of interface which is binded to
        the radio."                       !"The status of this table entry."                           G"Table will provide data rate configuration for a specific radio type."                       b"Each entry of the table will provide data rate configuration for a
        specific radio type."                       "Represents the radio type."                       ?"Represents the supported rate set of a particular radio type."                       ?"Represents the mandatory rate set of a particular radio type."                       >"Represents the disabled rate set of a particular radio type."                       5"Represents the rate set of a particular radio type."                           5"This table is used to configure WLAN ESS interface."                       ;"Each entry contains the WLAN ESS interface configuration."                       5"This node represents the WLAN ESS interface number."                       9"This node represents the ifIndex of WLAN-ESS interface."                       9"This node represents the WLAN ESS interface row status."                       5"This table is used to configure WLAN BSS interface."                       ;"Each entry contains the WLAN BSS interface configuration."                       5"This node represents the WLAN BSS interface number."                       9"This node represents the ifIndex of WLAN-BSS interface."                       9"This node represents the WLAN BSS interface row status."                       :"This table is used to configure WLAN Ethernet interface."                       @"Each entry contains the WLAN Ethernet interface configuration."                       :"This node represents the WLAN Ethernet interface number."                       >"This node represents the ifIndex of WLAN-Ethernet interface."                       >"This node represents the Wlan Ethernet interface row status."                      "This table defines the WLAN security status for ESS, BSS, mesh and
        WLAN-Ethernet interface which binding the crypto service-template.
        Otherwise, when binding the clear service-template,
        h3cPortSecurityTables should be used to configure port security."                       Œ"There is a row in this table for each ESS, BSS and WLAN-Ethernet
        interface.It is indexed using the object ifIndex in RFC1213-MIB."                      b"Determines the security modes of the WLAN port.

        noRestrictions(1)  The default value,no any security mode is set.

        userLoginSecureExt(2) Access to the port is denied until the port
        client is authorized (by 802.1X).

        psk(3) Access to the port is denied until the port client is
        authorized (by 802.1X key negotiation).

        macAddressAndPsk(4) The MAC address is first authenticated and only if
        this succeeds does the psk then attempt user authentication.

        userLoginSecureExtOrPsk(5) This selects both the userLoginSecureExt and
        psk modes together such that either is allowed to authorized access.
        Which mode works for client depends on the client's choice.

        wapi(6) Access to the port is denied until the port client is
        authenticated (by WAPI).
        "                      A"This indicates the key type in the 802.1X EAPOL_Key packet.

        userLoginTxKeyTypeNone(1) This means the key type is not set yet.

        userLoginTxKeyTypeDot11Key(2) This selects the 802.11 key type.

        userLoginTxKeyTypeRsaRC4Key(3) This selects the RC4 key for RSA RC4
        session encryption."                      ""This is the password input mode. When input as pskKeyModePassPhrase,
        h3cDot11SecurePskKeyString must be 8 to 63 characters; when input as
        pskKeyModeRawKey, h3cDot11SecurePskKeyString must be 64 characters and
        each character must be '0'-'9', 'a'-'f' and 'A'-'F'."                       :"This is the password string used for psk authentication."                       6"This table is used to configure WLAN mesh interface."                       <"Each entry contains the WLAN mesh interface configuration."                       6"This node represents the WLAN mesh interface number."                       8"This node represents the index of WLAN mesh interface."                       :"This node represents the WLAN mesh interface row status."                           "This object represents the backup AC IP address.
        If the backup AC IP address is not configured,
        the object value is 0.0.0.0."                       “"This object represents the backup AC IPv6 address.
         If the backup AC IPv6 address is not configured,
         the object value is 0::0."                           6"This table is used to configure dot11n on the radio."                       <"This entry contains the dot11n configuration on the radio."                        "Represents index of the radio."                        "Enable the function of A-MPDU."                        "Enable the function of A-MSDU."                       ""Only permit clients of 11n mode."                       "Specify the bandwidth mode."                       "The function of Short GI."                       3"This table is used to configure WDS on the radio."                       9"Each entry contains the WDS configuration on the radio."                       ("Represents the element index of radio."                       z"Represents enable the WDS mode or not.
        nowds: The WDS mode is disabled.
        wds  : The WDS mode is enabled"                        "Represents the mesh ID of WDS."                       !"Represents the PSK mode of WDS."                       ""Represents the PSK value of WDS."                               c"This notification is sent when cipher type of corresponding service
        template is changed."                 f"This notification is sent when pre-shared key of corresponding
        service template is changed."                 f"This notification will be sent when the same wep ID is configured
         on two service policies."                     ´"Represents previous service policy ID when radio bind service policy
         and current service policy conflict with previous service policy
         in cipher configuration."                       ³"Represents current service policy ID when radio bind service policy
         and current service policy conflict with previous service policy
         in cipher configuration."                       )"Represents wep ID that conflicted with."                       $"Represents which AP is configured."                       -"Represents which radio in AP is configured."                          