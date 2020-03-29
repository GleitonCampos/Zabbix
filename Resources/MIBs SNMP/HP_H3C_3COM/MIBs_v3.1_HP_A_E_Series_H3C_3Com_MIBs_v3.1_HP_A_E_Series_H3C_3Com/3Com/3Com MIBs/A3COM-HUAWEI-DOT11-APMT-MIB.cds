,¡-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Technologies. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide AP object information such as
--   performance statistic and notification events.
-- Reference:
-- Version: V2.3
-- History:
--   V1.0 2006-05-10 Initial version, created by shiyang (Richard)
--   V1.1 2007-02-01 modified by xingjichen(Daniel)
--        Changed DESCRIPTION of h3cDot11APRxStatisTable,
--        h3cDot11APTxStatisTable,h3cDot11APMtRadioFailTrap,
--        h3cDot11APMtRadioFailRecoverTrap.
--   V1.2 2007-04-27 modified by shiyang(Richard)
--        Add new nodes of h3cDot11APChannelChgMode and h3cDot11APChgWorkMode.
--        Split h3cDot11APObjectTable table into h3cDot11APObjectStatusTable
--        and h3cDot11APObjectTable.
--        Rename h3cDot11APRadioRelationTable as h3cDot11APRadioTable.
--        Rename h3cDot11APBSSRelationTable as h3cDot11APBSSTable.
--   V1.3 2007-06-19 modified by Banasree
--        Add new table of h3cDot11APIfTable for h3cDot11APObjectGroup.
--        Add new table of h3cDot11APAssocStatisTable for h3cDot11APStatisGroup.
--        Add new node of h3cDot11CurrAPName, h3cDot11CurrAPModelName,
--        h3cDot11CurrAPImageName, h3cDot11CurrAPSoftwareVersion,
--        h3cDot11CurrAPIPNetMask, h3cDot11CurrRadioModeSupport for
--        h3cDot11APObjectTable.
--        Add new node of h3cDot11Channel, h3cDot11TxPowerLevel,
--        h3cDot11APRadioIfIndex, h3cDot11AntennaGain for h3cDot11APRadioTable.
--        Add new node of h3cDot11APManufacturer, h3cDot11APCPUType,
--        h3cDot11APCPUClockSpeed, h3cDot11APMemoryType, h3cDot11APMemorySize,
--        h3cDot11APFlashType, h3cDot11APFlashSize for h3cDot11APModelTable
--        Add h3cDot11APReset node to the h3cDot11APObjectStatusTable.
--        Add h3cDot11RxFrameErrorRatio to the h3cDot11APRxStatisTable.
--        Add_h3cDot11TxFrameRetryRatio to the h3cDot11APTxStatisTable.
--   V1.4 2007-12-21 modified by wanghao (Kumar)
--        Add h3cDot11BSSRxStatisTable, h3cDot11BSSTxStatisTable,
--        h3cDot11BSSAssocStatisTable for BSS statistics.
--        Add h3cDot11APCpuUsage to h3cDot11APObjectStatusTable.
--        Add h3cDot11MaxBandwidth to h3cDot11APRadioTable.
--        Add h3cDot11RxPhyErrorCnt, h3cDot11RxMICErrorCnt,
--        h3cDot11RxDataFrameBytes to h3cDot11APRxStatisTable.
--        Add h3cDot11TxDataFrameCnt, h3cDot11TxDataFrameBytes to
--        h3cDot11APTxStatisTable.
--        Add h3cDot11ApStationExDeAuthenSum, h3cDot11ApStationCurAssocSum to
--        h3cDot11APAssocStatisTable.
--   V1.5 2008-02-25 modified by wanghao (Kumar)
--        Add h3cDot11ResourceUseRatio to h3cDot11APRadioTable.
--   V1.6 2008-07-09 modified by ChangHuifeng
--        Add h3cDot11APConnectionType to h3cDot11APObjectStatusTable.
--   V1.7 2008-11-07 modified by Wang Lu and Li Yugang
--        Add h3cDot11APLinkStatisTable and h3cDot11RadioAssocStatisTable.
--        Add h3cDot11CurrIfNumber to h3cDot11APObjectTable.
--        Add h3cDot11RadioModeSupport, h3cDot11TxPowerLevel2 and
--        h3cDot11PowerMgmtStatus to h3cDot11APRadioTable.
--        Add h3cDot11SSID to h3cDot11APBSSTable.
--        Add h3cDot11APIfSpeed, h3cDot11APIfInDataRate and
--        h3cDot11APIfOutDataRate to h3cDot11APIfTable
--        Add h3cDot11RadioRxAverSnr to h3cDot11APRxStatisTable.
--        Add h3cDot11APMtTimeSynFail, h3cDot11APMtChlIntfDetected,
--        h3cDot11APMtIntfAPDetected, h3cDot11APMtIntfStaDetected,
--        h3cDot11APMtIPChange, h3cDot11APFlashWriteFailure,
--        h3cDot11APSysReboot, h3cDot11APMtAvailChlTooLow and
--        h3cDot11APImgDwldSuccess to h3cDot11APMtTraps.
--        Add h3cDot11APIntfDevMACAddress and h3cDot11APMtTrapOldIPAddr to
--        h3cDot11APMtTrapVarObjects.
--        Add h3cDot11ChannelSwitchTimes to h3cDot11APRadioTable.
--        Add h3cDot11RxPayloadBytes, h3cDot11RxTrafficSpeed to
--        h3cDot11APRxStatisTable.
--        Add h3cDot11TxMSDUCnt, h3cDot11TxDiscardMSDUCnt,
--        h3cDot11RetryMSDUCnt, h3cDot11TxPayloadBytes,
--        h3cDot11TxTrafficSpeed to h3cDot11APTxStatisTable.
--        Add h3cDot11ApStaCurAuthSuccSum, h3cDot11AllStationUpSumTime,
--        h3cDot11ApStationAssocReqSum to h3cDot11APAssocStatisTable.
--        Add h3cDot11BSSRxFrameErrorRatio, h3cDot11BSSRxPayloadBytes to
--        h3cDot11BSSRxStatisTable.
--        Add h3cDot11BSSTxPayloadBytes to h3cDot11BSSTxStatisTable.
--        Add h3cDot11BSSStationAssocReqSum to h3cDot11BSSAssocStatisTable.
--        Add new tables h3cDot11RadioMngFrameStatisTable,
--        h3cDot11APAuthFailStatisTable, h3cDot11APAssocFailStatisTable,
--        h3cDot11APReassocStatisTable, h3cDot11APUserAuthStatisTable,
--        h3cDot11APDeauthStatisTable, h3cDot11APDeassocStatisTable to
--        h3cDot11APStatisGroup.
--   V1.8 2009-04-17 modified by WangChunsheng
--        Add h3cDot11AntennaType to h3cDot11APRadioTable.
--   V1.9 2009-05-07 modified by Li Yugang, Wang Shaojie, Jin Yi
--        Add h3cDot11CurrAPElementID to h3cDot11APObjectTable.
--        Add h3cDot11DiversitySelectionRx, h3cDot11MaxTxPwrLvl,
--        h3cDot11PwrAttRange, h3cDot11AvgRxSignalStrength,
--        h3cDot11HighestRxSignalStrength, h3cDot11LowestRxSignalStrength
--        h3cDot11RadioIfUpdownTimes, h3cDot11RadioIfLastChange
--        to h3cDot11APRadioTable.
--        Add h3cDot11CurrSSIDResourceUseRatio to h3cDot11APBSSTable.
--        Add new table h3cDot11APSSIDObjectTable, h3cDot11APSysInfoTable
--        to h3cDot11APObjectGroup.
--        Add h3cDot11TxErrFrameRatio, h3cDot11TxFrameRate
--        to h3cDot11APTxStatisTable.
--        Add h3cDot11BSSRxUniFrameCnt, h3cDot11BSSRxNonUniFrameCnt,
--        h3cDot11BSSRxAuthenFrameCnt to h3cDot11BSSRxStatisTable.
--        Add h3cDot11BSSTxRetryCnt, h3cDot11BSSTxUniFrameCnt,
--        h3cDot11BSSTxNonUniFrameCnt, h3cDot11BSSTxAuthenFrameCnt
--        to h3cDot11BSSTxStatisTable.
--        Add new table h3cDot11APAssocFailStatis2Table, h3cDot11APIfStatisTable
--        to h3cDot11APStatisGroup.
--        Add h3cDot11APInterfDetectedTrap,
--        h3cDot11APInterfClearTrap, h3cDot11StaInterfDetectedTrap,
--        h3cDot11StaInterfClearTrap, h3cDot11OtherDevIntDetectedTrap,
--        h3cDot11OtherDevIntClearTrap, h3cDot11APModuleTroubleTrap,
--        h3cDot11APModuleTroubleClearTrap, h3cDot11APRadioDownTrap,
--        h3cDot11APRadioDownRecovTrap, h3cDot11APStaFullTrap,
--        h3cDot11APStaFullRecoverTrap, h3cDot11DFSFreeCntBelowThrRecov,
--        h3cDot11APCpuUsageHigh, h3cDot11APCpuUsageHighRecover,
--        h3cDot11APMemUsageHigh, h3cDot11APMemUsageHighRecover
--        to h3cDot11APMtTraps.
--        Add h3cDot11CurrInterfDetectedNum, h3cDot11StaFullReason,
--        h3cDot11StaLimitNumber, h3cDot11APRadioDownReason,
--        h3cDot11InterfMacList to h3cDot11APMtTrapVarObjects.
--        Add h3cDot11APLastImgDownloadTime to h3cDot11APObjectStatusTable.
--   V2.0 2009-07-29 modified by Heziqi
--        Add new node h3cDot11CurrAPMode for h3cDot11APObjectTable.
--        Add new node h3cDot11APEssVlanId and h3cDot11APBSSResourceUseRatio
--        for h3cDot11APBSSTable.
--        Add new node h3cDot11APTrapUserCnt and h3cDot11APTrapUserThreshold
--        for h3cDot11APMtTrapVarObjects.
--        Add h3cDot11APUserCntOverFlow for h3cDot11APMtNotifyGroup.
--        Add new node h3cDot11TxDiscardFrameRatio, h3cDot11TxFrameRate,
--        h3cDot11TxMgtFrameCnt and h3cDot11TxCtrlFrameCnt
--        for h3cDot11APTxStatisTable.
--        Add new node h3cDot11APIPv6Address for h3cDot11APObjectStatusTable.
--        Add new node h3cDot11CurrAPIPv6Address for h3cDot11APObjectTable.
--        Add h3cDot11RadioMngFrmStatisTable.
--   V2.1 2009-08-07 modified by wang shaojie, Jin Yi
--        Add h3cDot11APIfInBrdcastPkts, h3cDot11APIfOutBrdcastPkts,
--        h3cDot11APIfInMulcastPkts, h3cDot11APIfOutMulcastPkts,
--        h3cDot11APIfInPayloadOctets, h3cDot11APIfOutPayloadOctets to
--        h3cDot11APIfStatisTable.
--        Add new node h3cDot11APLastRegisterTime to h3cDot11APObjectStatusTable
--        Add new node h3cDot11TxMACErrCnt, h3cDot11TxErrFrameCnt to
--        h3cDot11APTxStatisTable.
--        Add new variable bindings h3cDot11APMtChanlChgCount to
--        h3cDot11APMtRdoChanlChgTrap.
--   V2.2 2009-12-01 modified by Wang Shaojie, duyanbing
--        Add new table h3cDot11APIdleListTable to h3cDot11APObjectGroup.
--        Add new table h3cDot11APPacketSizeStatisTable,
--        h3cDot11APPacketRateStatisTable, h3cDot11APPacketMCSRateStatisTable to
--        h3cDot11APStatisGroup.
--        Add new node h3cDot11RxUcastDataFrameCnt, h3cDot11RxNUcastDataFrameCnt
--        to h3cDot11APRxStatisTable.
--        Add new node h3cDot11TxUcastDataFrameCnt, h3cDot11TxNUcastDataFrameCnt
--        to h3cDot11APTxStatisTable.
--        Add new node h3cDot11CurrAPSSIDNumber to h3cDot11APObjectTable.
--        Add new node h3cDot11AllStationUpSumTimeTicks to
--        h3cDot11APAssocStatisTable
--        Add new node h3cDot11RxTotalDiscardFrameCnt to h3cDot11APRxStatisTable.
--        Added h3cDot11APMtTrapSwitch.
--        2010-02-23 modified by Wang Shaojie
--        Add h3cDot11APMtDetectedIntfAP, h3cDot11APMtDetectedIntfSTA,
--        h3cDot11APMtDetectedIntfOtherDev to h3cDot11APMtTraps.
--        Add h3cDot11APMtFormerApVersion, h3cDot11APMtAPID, h3cDot11APMtRadioID
--        h3cDot11APMtChannel, h3cDot11APMtInterfMacAdd to
--        h3cDot11APMtTrapVarObjects.
--        2010-03-15 modified by Deng Gaoliang
--        Add h3cDot11APAssocFailStatis3Table
--        Add h3cDot11APFlashSizeInBytes
--        Remove h3cDot11APMtTrapSwitch
--        2010-05-31 modified by LiuChen, Wang Chunsheng, Wang Shaojie
--        Add new table h3cDot11APSysInfoByAPIDTable.
--        Add new node h3cDot11CurrAPManufacturer, h3cDot11CurrAPMemorySize,
--        h3cDot11CurrAPMemSizeInBytes, h3cDot11CurrAPFlashSize,
--        h3cDot11CurrAPFlashSizeInBytes to h3cDot11APObjectTable.
--        Add new table h3cDot11APUserSecAuthStatisTable to h3cDot11APStatisGroup.
--        Add new table h3cDot11APUserInfoStatisTable to h3cDot11APStatisGroup.
--        2010-08-05 modified by LiuChen, Yinjunjie
--        Add new node h3cDot11CurrAPReleasedVersion to h3cDot11APObjectTable.
--        Add new node h3cDot11BSSStationCurAuthSum to h3cDot11BSSAssocStatisTable.
--        Add new node h3cDot11APMtAdjChannel.
--        Add h3cDot11DetcAdjChlIntfAP, h3cDot11DetcAdjChlIntfAPClear
--        to h3cDot11APMtTraps.
--        2010-08-05 modified by Yinjunjie
--        Add new table h3cDot11APReassocStatis2Table
--        2010-09-16 Change names from h3cDot11APIfLastChange and
--        h3cDot11APIfLastChange2 to h3cDot11APIfStatusKeepTime and
--        h3cDot11APIfStatusKeepTime2 by shuaixiaojuan
--   V2.3 2010-10-11 modified by Wuxiaopeng
--        Add new node h3cDot11APIfInDataOctets2, h3cDot11APIfOutDataOctets2,
--        to h3cDot11APIfStatisByAPIDTable.
--        Add new node h3cDot11APMacAddress2 to h3cDot11APSysInfoByAPIDTable.
--        Modify node h3cDot11APChgWorkMode.
-- =============================================================================
                                                                    ¬"This MIB provides AP information which includes AP current object
        information, AP statistic data.

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
        or station mapping and enable STA invocation
        of the distribution system services.
        (Wireless clients attempt to connect to
        access points.)

        Basic Rate
        A data rate that is mandatory for client
        devices to support in order for them to achieve
        successful association." å"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "201010111800Z" "201009151200Z" "200908071800Z" "200907291800Z" "200905072000Z" "200811071000Z" "200807091800Z" "200802251800Z" "200712211800Z" "200706191800Z" "200704272000Z" "200702012000Z" "200605101900Z" "Modified to add new nodes." "Modified to add new table." "Modified to add new nodes." "Modified to add new nodes." +"Modified to add new tables and new nodes." +"Modified to add new tables and new nodes." "Modified to add new nodes." "Modified to add new nodes." +"Modified to add new tables and new nodes." 3"Modified for new requirements and fix some issue." "Modified to fix some issue." "Modified to support fat AP." *"The initial revision of this MIB module."       -- Otc 11, 2010 at 12:00 GMT
           X"The table will provide the general information about APs in
        different status."                       7"Each entry contains the general information of an AP."                       m"To uniquely identify each AP, and relation-ship between h3cDot11APID
        and AP device will be static."                       %"Represents the IP address of an AP."                       &"Represents the MAC address of an AP."                      ™"Represents operational status of AP.
        The following values are supported:
        join(1)         - AP is joining to AC.
        joinConfirm(2)  - AC confirm whether permit AP to join.
        download(3)     - AP is downloading software from AC.
        config(4)       - AP and AC exchange configuration before AP
        - provide WLAN service.
        run(5)          - The WLAN service is ready.
        "                       ?"Represents the name of current AP template configured for AP."                       Ù"When read the value from the node
        2: Represents the AP can not be reseted.
        1: Represents the AP can be reseted.
        When write the value to the node
        1: Represents reseting the AP. Other values are not supported"                       *"Represents the current CPU usage for AP."                       )"Represents the current connection type."                       @"Represents the time at which the device last downloaded image."                       $"Represents the IPv6 address of AP."                       B"Represents the time at which the device last registered with AC."                       C"The table will provide information for APs in the running status."                       9"Each entry contains information of an AP in run status."                       p"To uniquely identify each AP, and relation-ship between h3cDot11APObjID
        and AP device will be static."                       %"Represents the IP address of an AP."                       &"Represents the MAC address of an AP."                       ù"Represents the port on the AC, by which the traffic of this AP comes
        through. NMS could refer it to access information kept in the
        MIB-2."                       j"Represents what MAC mode defined in the CAPWAP is applied.
        For fat AP, the value will be fatap."                       -"Represents the name of current AP template."                       O"Represents the total number of stations which are associating
        to AP."                       "Represents the name of AP."                       D"Represents index of WTP model,with it to get AP model information."                       '"Represents the image file name of AP."                       ("Represents the software version of AP."                       ""Represents the IP netmask of AP."                       "Represents which radio type supported by the AP.
        The WLAN system support the following possible radio type.
        dot11a(1),
        dot11b(2),
        dot11g(4),
        dot11n(8)
        For a AP,it could support multiple radio types at
        the same time.So the value of object could combine multiple value
        of radio type above.
        For example:
        For one AP which support both b and g mode radio, when getting the value
        from the node, the value is 6(2 + 4)."                       +"Represents number of interface of the AP."                       "Represents the AP element ID."                       ("Represents the forward mode of the AP."                       $"Represents the IPv6 address of AP."                       1"Represents the number of SSID configured on AP."                       ì"By the 'SMI Network Management Private Enterprise Codes'
        assigned by the IANA, NMS could know which vendor manufactures
        the AP."                       #"Represents the size of AP memory."                       #"Represents the size of AP memory."                       ""Represents the size of AP flash."                       ."This object represents the size of AP flash."                       ("Represents the released version of AP."                       f"The table will describe the radio information of AP. The AP here will
        be in running status."                       E"Each entry contains the information of each radio of a specific AP."                       ."To uniquely identify a AP in running status."                       "Represents each radio."                       /"Represents the administrator status of radio."                       -"Represents the operational status of radio."                       6"Represents the current channel allocation for radio."                       8"Represents the current transmit power level for radio."                       /"Represents the interface index for the radio."                       *"Represents the current gain for antenna."                       1"Represents the maximum bandwidth for the radio."                       /"Represents the ratio of radio resource usage."                      '"Represents radio type supported by the radio.
        The WLAN system supports the following possible radio type:
        dot11a(1),
        dot11b(2),
        dot11g(4),
        dot11gn(16),
        dot11an(32).
        For the radio, it could support multiple radio types at
        the same time.  So the value of this object could combine multiple
        values of radio type above.
        For example:
        For one radio which supports both dot11b and dot11g mode, when get
        value from the object, the value is 5(1 + 4)."                       ;"The TxPowerLevel N currently being used to transmit data."                       5"Represents status of power management of the radio."                       &"Represents the channel switch times."                       2"Represents type of the antenna which radio used."                       ."Represents the diversity selection received."                       ("Represents the maximum transmit power."                       ,"Represents the range of power attenuation."                       2"Represents the average received signal strength."                       2"Represents the highest received signal strength."                       1"Represents the lowest received signal strength."                       2"Represents the up/down times on radio interface."                       B"Represents time at last change that occurred on radio interface."                       ’"After AP connect to AC and get AP template configuration,
        it will create BSS data structure for each radio.
        The table will describe BSS information of AP and service
        policy as per BSS."                       A"Each entry contains information of each BSS for specific radio."                       ""Represents ID of a specific ESS."                       /"As MAC Address format, it is to identify BSS."                       :"Represents the ID of each service policy used by the AP."                       <"This object represents the SSID corresponding to this BSS."                       5"Represents the ratio of resource usage of curr SSID"                       \"This object represents the VlanID of the interface ESS
        corresponding to this BSS."                       R"The table defines the capability information for a specific
        kind of AP."                       P"Each entry contains capability information for a specific kind
        of AP."                       $"Represents alias of AP model name."                       ("Represents AP model name(like WA2100)."                       J"Represents how many radios the specific AP model
        could support."                       Q"Represents how many station could be supported by a specific
        AP model."                       R"Represents the MAC mode type could be supported by a specific
        AP model."                       ì"By the 'SMI Network Management Private Enterprise Codes'
        assigned by the IANA, NMS could know which vendor manufactures
        the AP."                       "Represents the CPU type of AP"                       $"Represents the clock speed of CPU."                       '"Represents the memory card type of AP"                       ("Represents the size of AP memory card."                       &"Represents the flash card type of AP"                       '"Represents the size of AP flash card."                       ("Represents the size of AP memory card."                       <"This object represents the size of AP flash card in bytes."                       6"This table represents the AP interface informations."                       D"Each entry of the table will provide data for the interface of AP."                       '"Represents the index for a interface."                       7"Represents the interface description for a interface."                       0"Represents the interface type for a interface."                       t"Represents size of the largest datagram which can
        be sent/received on the interface, specified in octets."                       *"Represents the PHY address of interface."                       1"Represents maximum bandwidth of this interface."                       Z"Represents the average input data rate of this interface in
        latest 300 seconds."                       ["Represents the average output data rate of this interface in
        latest 300 seconds."                       1"Represents maximum bandwidth of this interface."                       U"This table provides BSSID number configuration information
         based on SSID."                       Q"Each entry provides BSSID number configuration information
         of a SSID."                       #"Represents the service policy ID."                       2"Represents the SSID name of this service policy."                       P"Represents the number of BSSID that be configured
         with current SSID."                       6"The table provides the system information of the AP."                       2"Each entry provides system information of an AP."                       -"Represents how long AP has been powered on."                       ,"Represents the CPU real time usage for AP."                       *"Represents the CPU average usage for AP."                       /"Represents the memory real time usage for AP."                       -"Represents the average memory usage for AP."                       +"Represents the IP address gateway for AP."                       +"Represents associate status of AP and AC."                       3"Represents the device version information for AP."                       ,"Represents the free size of AP flash card."                       7"Represents the device temperature information for AP."                       *"This table provides the list of idle AP."                       /"Each entry provides information of a idle AP."                       *"Represents the name of idle AP template."                       "Represents AP serial ID."                       6"The table provides the system information of the AP."                       2"Each entry provides system information of an AP."                       -"Represents how long AP has been powered on."                       ,"Represents the CPU real time usage for AP."                       *"Represents the CPU average usage for AP."                       /"Represents the memory real time usage for AP."                       -"Represents the average memory usage for AP."                       +"Represents the IP address gateway for AP."                       +"Represents associate status of AP and AC."                       3"Represents the device version information for AP."                       ,"Represents the free size of AP flash card."                       7"Represents the device temperature information for AP."                       #"Represents the MAC address of AP."                           U"The table will provide the receiving statistic for a specific
        radio of AP."                       c"Each entry of the table will provide the statistic data for
        each radio of a specific AP."                       6"Represents the number of duplicate frames reception."                       ,"Represents the number of frames reception."                       4"Represents the number of unicast frames reception."                       6"Represents the number of broadcast frames reception."                       6"Represents the number of multicast frames reception."                       2"Represents the number of frames discarded by AP."                       5"Represents the number of frame fragments reception."                       6"Represents the number of FCS error frames reception."                       +"Represents the bytes of frames reception."                       3"Represents the bytes of unicast frames reception."                       5"Represents the bytes of broadcast frames reception."                       5"Represents the bytes of multicast frames reception."                       1"Represents the bytes of frames discarded by AP."                       7"Represents the number of management frames reception."                       4"Represents the number of control frames reception."                       1"Represents the number of data frames reception."                       ,"Represents the number of decryption error."                       :"Represents the number of authentication frame reception."                       5"Represents the number of associate frame reception."                       &"Represents the ratio of error frame."                       4"Represents the number of physical reception error."                       2"Represents the number of MIC verification error."                       0"Represents the bytes of data frames reception."                       9"Represents the average signal noise rate of this radio."                       8"Represents the payload bytes of data frames reception."                       6"Represents the bytes of frames reception per second."                       9"Represents the number of unicast data frames reception."                       ="Represents the number of non-unicast data frames reception."                       ;"Represents the number of total frames discarded by radio."                       X"The table will provide the transmission statistic for a
        specific radio of AP."                       c"Each entry of the table will provide the statistic data for
        each radio of a specific AP."                       :"Represents the number of fragmented frames transmission."                       1"Represents the number of transmission failures."                       ,"Represents the number of transmit retries."                       P"Represents the number of transmits that required more than
        one retry."                       R"Represents the number of successful RTS (Request to send)
        transmission."                       5"Represents the number of RTS transmission failures."                       4"Represents the number of acknowledgement failures."                       5"Represents the total number of frames transmission."                       7"Represents the number of unicast frames transmission."                       9"Represents the number of broadcast frames transmission."                       9"Represents the number of multicast frames transmission."                       2"Represents the number of frames discarded by AP."                       4"Represents the total bytes of frames transmission."                       6"Represents the bytes of unicast frames transmission."                       8"Represents the bytes of broadcast frames transmission."                       8"Represents the bytes of multicast frames transmission."                       8"Represents the bytes of multicast frames transmission."                       ="Represents the number of authentication frame transmission."                       8"Represents the number of associate frame transmission."                       &"Represents the ratio of retry frame."                       3"Represents the number of data frame transmission."                       2"Represents the bytes of data frame transmission."                       3"Represents the total number of MSDU transmission."                       7"Represents the number of discarded MSDU transmission."                       +"Represents the number of retransfer MSDU."                       ;"Represents the payload bytes of data frames transmission."                       9"Represents the bytes of frames transmission per second."                       &"Represents the ratio of error frame."                       9"Represents the count of frames transmission per second."                       9"Represents the number of transmitted management frames."                       7"Represents the number of transmission control frames."                       *"Represents the count of MAC error frame."                       &"Represents the count of error frame."                       <"Represents the number of unicast data frames transmission."                       @"Represents the number of non-unicast data frames transmission."                       B"The table will provide the station association statistic for AP."                       a"Each entry of the table will provide the statistic data of station
        association for AP."                       K"Represents the total number of station association
        with this AP."                       S"Represents the total number of station
        association failure with this AP."                       D"Represents the total number of station reassociation with this AP."                       q"Represents the total number of station association rejected
        on account of resource limit with this AP."                       á"Represents the total number of exceptional station deauthentication
        (Without sending a deauthentication to AP) with this AP."                       S"Represents the total number of current associated stations
        with this AP."                       S"Represents the successful number of station authentication
        with this AP."                       X"Represents the sum of duration of all stations which associate with
         this AP."                       D"Represents the number of station association request with this AP."                       X"Represents the sum of duration of all stations which associate with
         this AP."                       X"The table will provide the reception statistic for a
        specific BSS on a radio."                       d"Each entry of the table will provide the statistic data for
        each BSS on a specific radio."                       :"Represents the number of frames reception with this BSS."                       9"Represents the bytes of frames reception with this BSS."                       ?"Represents the number of data frames reception with this BSS."                       >"Represents the bytes of data frames reception with this BSS."                       D"Represents the number of associate frames reception with this BSS."                       ?"Represents the ratio of error frames reception with this BSS."                       F"Represents the payload bytes of data frames reception with this BSS."                       2"Represents the count of unicast frames received."                       6"Represents the count of non-unicast frames received."                       9"Represents the count of authentication frames received."                       ["The table will provide the transmission statistic for a
        specific BSS on a radio."                       d"Each entry of the table will provide the statistic data for
        each BSS on a specific radio."                       C"Represents the total number of frames transmission with this BSS."                       B"Represents the total number of bytes transmission with this BSS."                       A"Represents the number of data frame transmission with this BSS."                       @"Represents the bytes of data frame transmission with this BSS."                       F"Represents the number of associate frame transmission with this BSS."                       H"Represents the payload bytes of data frame transmission with this BSS."                       <"Represents the count of bytes retransmitted with this BSS."                       D"Represents the count of unicast frames transmission with this BSS."                       I"Represents the number of non-unicast frames transmission with this BSS."                       K"Represents the count of authentication frames transmission with this BSS."                       C"The table will provide the station association statistic for BSS."                       b"Each entry of the table will provide the statistic data of station
        association for BSS."                       L"Represents the total number of station association
        with this BSS."                       T"Represents the total number of station
        association failure with this BSS."                       N"Represents the total number of station reassociation
        with this BSS."                       r"Represents the total number of station association rejected
        on account of resource limit with this BSS."                       à"Represents the total number of exceptional station deauthentication
        (Without sending a deauthentication to AP) with this BSS."                       T"Represents the total number of current associated stations
        with this BSS."                       U"Represents the total number of station association request with
         this BSS."                       Ç"Represents the total number of current associated stations which have
        passed portal or 1x authentication with this BSS."                       3"The table will provide the link statistic for AP."                       3"Each entry provides the link statistic of the AP."                       9"Represents up/down times of uplink interface of the AP."                       ;"Represents up/down times of downlink interface of the AP."                       E"The table will provide the station association statistic for radio."                       d"Each entry of the table will provide the statistic data of station
        association for radio."                       N"Represents the total number of station association
        with this radio."                       V"Represents the total number of station
        association failure with this radio."                       Q"Represents the total number of station re-association
        with this radio."                       t"Represents the total number of station association rejected
        on account of resource limit with this radio."                       å"Represents the total number of exceptional station de-authentication
        (Without sending a de-authentication to AP) with this radio."                       V"Represents the total number of current associated stations
        with this radio."                       G"The table will provide the management frame statistic for this radio."                       ^"Each entry of the table will provide the management
        frame statistic for this radio."                       "Represents index of radio."                       <"Represents the type of the management frame on this radio."                       W"Represents the total number of each type for management frame on this
        radio."                       T"The table will provide the authentication failure statistic for this
         AP."                       b"Each entry of the table will provide the authentication failure
         statistic for this AP."                       F"Represents the type of authentication
        failure with this AP."                       Z"Represents the total number of each type for authentication
        failure on this AP."                       P"The table will provide the association failure statistic for
        this AP."                       _"Each entry of the table will provide the association failure statistic
         for this AP."                       C"Represents the type of association failure
        with this AP."                       W"Represents the total number of each type for
        association failure on this AP."                       B"The table will provide the re-association statistic for this AP."                       Y"Each entry of the table will provide the re-association statistic
        for this AP."                       5"Represents the type of re-association with this AP."                       T"Represents the total number of each type for re-association with
        this AP."                       G"The table will provide the user authentication statistic for this AP."                       ^"Each entry of the table will provide the user authentication statistic
        for this AP."                       :"Represents the type of user authentication with this AP."                       Y"Represents the total number of each type for user authentication with
        this AP."                       E"The table will provide the de-authentication statistic for this AP."                       ]"Each entry of the table will provide the de-authentication statistic
         for this AP."                       7"Represents the type of de-authentication for this AP."                       X"Represents the total number of each type for de-authentication
         with this AP."                       B"The table will provide the de-association statistic for this AP."                       Z"Each entry of the table will provide the de-association statistic
         for this AP."                       5"Represents the type of de-association with this AP."                       U"Represents the total number of each type for de-association
         with this AP."                       E"This table will provide statistic of association fails for each ap."                       E"Each entry will provide statistic of association fails for this ap."                       6"Represents the type of association fails for this AP"                       >"Represents the total count of association fails for this AP."                       C"The table will provide the statistics on the interface of the AP."                       M"Each entry of the table will provide statistics on the interface of the AP."                       M"Represents the total number of packets received
         on the interface."                       U"Represents the total number of correct
         packets received on the interface."                       S"Represents the total number of error
         packets received on the interface."                       K"Represents the total number of packets
         sent from the interface."                       L"Represents the total number of octets
         received on the interface."                       J"Represents the total number of octets
         sent from the interface."                       b"Represents the traffic rate (byte/s) on the uplink interface
         during a sampling period."                       d"Represents the traffic rate (byte/s) on the downlink interface
         during a sampling period."                       E"Represents the number of unicast packets received on the interface."                       Y"Represents the number of non-unicast packets received on the wired
         interface."                       F"Represents the number of unicast packets discarded on the interface."                       A"Represents the number of unicast packets send on the interface."                       E"Represents the number of non-unicast packets send on the interface."                       C"Represents the number of discarded packets send on the interface."                       ?"Represents the number of error packets send on the interface."                       0"Represents the up/down times on the interface."                       3"Represents the last change time on the interface."                       4"Represents the operational state of the interface."                       G"Represents the number of broadcast packets received on the interface."                       C"Represents the number of broadcast packets sent on the interface."                       G"Represents the number of multicast packets received on the interface."                       C"Represents the number of multicast packets sent on the interface."                       C"Represents the number of actual octets received on the interface."                       ?"Represents the number of actual octets sent on the interface."                       F"The table will provide the management frame statistic of this radio."                       ^"Each entry of the table will provide the management
         frame statistic of this radio."                       <"Represents the type of the management frame on this radio."                       W"Represents the total number of each type of management frame on this
         radio."                       5"This table provides packets statistic base on size."                       g"Each entry provides packets statistic base on size for each radio
                 of a specific AP."                       Ë"This node represents packet size:
                    sizeLevel1 : size <= 128
                    sizeLevel2 : 128 < size <= 512
                    sizeLevel3 : 512 < size <= 1024
                    sizeLevel4 : size > 1024"                       ?"Represents the count of packets reception base on frame size."                       B"Represents the count of packets transmission base on frame size."                       5"This table provides packets statistic base on rate."                       g"Each entry provides packets statistic base on rate for each radio
                 of a specific AP."                       6"Represents transmit data rate(twice as actual rate)."                       G"Represents the count of packets reception base on transmit data rate."                       J"Represents the count of packets transmission base on transmit data rate."                       9"This table provides packets statistic base on MCS rate."                       k"Each entry provides packets statistic base on MCS rate for each radio
                 of a specific AP."                       6"Represents transmit data rate(twice as actual rate)."                       G"Represents the count of packets reception base on transmit data rate."                       X"Represents the count of packets transmission base on transmit
             data rate."                       E"This table will provide statistic of association fails for each AP."                       o"Each entry will provide statistic of association failure with this AP
         because of different reasons."                       `"This object represents the count of association failure because of
         lack of resource."                       d"This object represents the count of association failure because of
         not support rate set."                       c"This object represents the count of association failure because of
         unknown reason code."                       c"This object represents the count of association failure because of
         re-associate failed."                       o"This object represents the count of association fails because of
         reason not in 802.11 the protocol."                       C"The table will provide the statistics on the interface of the AP."                       M"Each entry of the table will provide statistics on the interface of the AP."                       M"Represents the total number of packets received
         on the interface."                       U"Represents the total number of correct
         packets received on the interface."                       S"Represents the total number of error
         packets received on the interface."                       K"Represents the total number of packets
         sent from the interface."                       L"Represents the total number of octets
         received on the interface."                       J"Represents the total number of octets
         sent from the interface."                       b"Represents the traffic rate (byte/s) on the uplink interface
         during a sampling period."                       d"Represents the traffic rate (byte/s) on the downlink interface
         during a sampling period."                       E"Represents the number of unicast packets received on the interface."                       Y"Represents the number of non-unicast packets received on the wired
         interface."                       F"Represents the number of unicast packets discarded on the interface."                       A"Represents the number of unicast packets send on the interface."                       E"Represents the number of non-unicast packets send on the interface."                       C"Represents the number of discarded packets send on the interface."                       ?"Represents the number of error packets send on the interface."                       0"Represents the up/down times on the interface."                       3"Represents the last change time on the interface."                       4"Represents the operational state of the interface."                       G"Represents the number of broadcast packets received on the interface."                       C"Represents the number of broadcast packets sent on the interface."                       G"Represents the number of multicast packets received on the interface."                       C"Represents the number of multicast packets sent on the interface."                       C"Represents the number of actual octets received on the interface."                       ?"Represents the number of actual octets sent on the interface."                       H"Represents the number of actual data octets received on the interface."                       D"Represents the number of actual data octets sent on the interface."                       G"The table will provide the user authentication statistic for this AP."                       ^"Each entry of the table will provide the user authentication statistic
        for this AP."                       C"Represents the current number of user authenticated with this AP."                       @"Represents the total number of user disconnected with this AP."                       H"Represents the total number of user authenticate request with this AP."                       K"Represents the total number of user authenticated successed with this AP."                       H"Represents the total number of user authenticated failed with this AP."                       C"The table will provide the user information statistic of this AP."                       Z"Each entry of the table will provide the user information statistic
        of this AP."                       8"Represents the mac address of user logging in this AP."                       7"Represents the ip address of user logging in this AP."                       7"Represents the login name of user logging in this AP."                       1"Represents the login time of user with this AP."                       2"Represents the online time of user with this AP."                       A"This table will provide statistic of reassociation for each AP."                       i"Each entry will provide statistic of reassociation with this AP
         because of different reasons."                       b"This object represents the count of reassociation failure because of
         lack of resource."                               å"The notification will be sent when AP changes the work mode, and
         h3cDot11APWorkMode suggests which work mode will be used by AP."                 ^"The notification will represent errors caused by the
        configuration operation of AP."                 ["The notification will notify which the operational status
        of radio becomes down."                 _"The notification will notify the operational status of which radio
        becomes up again."                 B"The notification will represent which radio changes the channel."                 Y"The notification will be sent when AC and AP failed to
        synchronize their time."                 b"The notification will be sent when some ambient device interferes with
        current channel."                 ^"The notification will be sent when some ambient AP interferes with
        current channel."                 c"The notification will be sent when some ambient station interferes with
        current channel."                 B"The notification will be sent when IP address of the AP changes."                 Q"The notification will be sent when AP failed to write data
        into flash."                 0"The notification will be sent when AP reboots."                 a"The notification will be sent when number of available channels is
         too low.
        "                 ^"The notification will be sent when AP succeeds to download image from
        AC.
        "                 `"This notification will be sent when some ambient AP interferes with
         current channel."                 u"This notification will be sent when interference caused by ambient
         APs on the current channel disappears."                 v"This notification will be sent when interference caused by ambient
         STAs on the current channel disappears."                 v"This notification will be sent when interference caused by ambient
         devices on the current channel happens."                 y"This notification will be sent when interference caused by ambient
         devices on the current channel disappears."                 j"This notification will be sent when previous ambient device disappeared with
         the same channel."                 9"This notification will be sent when WLAN module failed."                 ;"The notification will be sent when WLAN module recovered."                 ="This notification will be sent when WLAN links interrupted."                 9"This notification will be sent when WLAN links recover."                 D"This notification will be sent when STA number reach limit number."                 F"This notification will be sent when STA number recover enough level."                 ^"This notification will be sent when available channels number
        recover enough level."                 `"The notification will be sent when the AP CPU usage exceeds the
         threshold.
        "                 a"The notification will be sent when the AP CPU usage descends the
         threshold.
        "                 c"The notification will be sent when the AP memory usage exceeds the
         threshold.
        "                 e"The notification will be sent when the AP memory usage descends the
         threshold.
         "                 \"The notification will be sent when the online user counter exceeds
        the threshold."                 `"This notification will be sent when some ambient AP interferes with
         current channel."                 a"This notification will be sent when some ambient STA interferes with
         current channel."                 ]"This notification will be sent when other device interferes with
         current channel."                 a"This notification will be sent when some ambient AP interferes with
         adjacent channel."                 v"This notification will be sent when interference caused by ambient
         APs on the adjacent channel disappears."                     6"Represents errors caused by configuration operation."                      1"Represents errors caused by configuration operation.
        The following values are supported:
        config(1)   - Configuration error
        hwerror(2)  - Hardware error
        swerror(3)  - Software error
        radar(4)    - Radar Detection
        unknown(8)  - Unknown reason
        "                       1"Represents which channel the radio used to use."                       ."Represents which channel the radio will use."                       1"Represents the channel change mode for a radio."                      "Represents what work mode for AP.
        The following values are supported:
        normal(1)  - AP will supply WLAN service.
        monitor(2) - AP will be a monitor to detect attack.
        hybrid(3)  - AP will supply WLAN service and detect attack."                       G"Represents MAC address of the device which triggers the notification."                       ""Represents the IP address of AP."                       ."Represents the number of interfere detected."                       b"Reports which kind maximum number of STA
         is reached. New STA is not able to associate."                       %"Represents the limit number of STA."                       3"Reports the reason why WLAN links is interrupted."                       4"Represents MAC address list of interfere detected."                       +"Represents the online user counter of AP."                       3"Represents threshold of AP's online user counter."                       1"Represents how many times that channel changed."                       +"Represents former software version of AP."                       "To uniquely identify each AP."                       "Represents each radio."                       6"Represents the current channel allocation for radio."                       &"Represents the MAC address of an AP."                       +"Represents the adjacent channel of radio."                      