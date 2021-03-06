�-- ==========================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide object definition
--              of WLAN radio resource management (RRM).
-- Reference:
-- Version: V1.5
-- History:
-- V1.0 2008-07-16 Initial version, created by ChenWei
-- V1.1 2009-04-16 modified by WangChunsheng
-- Add new table of h3cDot11MonitorDetectedDevTable for h3cDot11MonitorDetectedGroup.
-- Add new table of h3cDot11RRMAPCfgTable for h3cDot11RRMConfigGroup.
-- V1.2 2009-05-07 modified by Wang Shaojie, wangchunsheng
--      Add h3cDot11APInterfNumThreshhd, h3cDot11StaInterfNumThreshhd
--      to h3cDot11GlobeConfigGroup.
--      Modify h3cDot11RRMCfgIntrvl
-- V1.3 2009-05-07 modified by Wang Shaojie
--      Add new node h3cDot11MonitorDevSNR to h3cDot11MonitorDetectedDevTable
-- V1.4 2010-02-22 modified by Wang Chunsheng
--      Add new table h3cDot11RRMSDRadioGroupTable to h3cDot11RRMConfigGroup
--      2010-03-18 Modified by Wang Lu
--      Add h3cDot11RRMAPCfg2Table
-- V1.5 2010-09-21 Modified by wu xiaopeng
--      Add new node h3cDot11RRMCoChlIntfTrapThhd, h3cDot11RRMAdjChlIntfTrapThhd
--      to h3cDot11RRMAPCfg2Table
-- V1.6 2011-03-23 Modified by NiuJian
--      Add new node h3cDot11RrmNbrSSID
--      to h3cDot11RRMNbrInfoTable
-- ==========================================================================
                                                                                     e"This MIB file is to provide the object definition of
        WLAN radio resource management (RRM)." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R.China
         Http://www.h3c.com
         Zip: 100085" "201009251800Z" "201002231800Z" "200908012000Z" "200905072000Z" "200904172000Z" "200807141429Z" "Modified to add new nodes." "Modified to add new nodes." *"Modified to add new nodes and new table." *"Modified to add new nodes and new table." *"Modified to add new table and new group." *"The initial revision of this MIB module."       -- Sep 25, 2010 at 18:00 GMT
              �"Specify the maximum modulation and coding scheme (MCS) index for
        802.11n mandatory rates.
        The value 255 indicates that no maximum MCS index
        is specified.  No maximum MCS index is specified for 802.11n
        mandatory rates by default.
        Besides 255, the specified maximum MCS index for 802.11n supported
        rates must be no less than the specified maximum MCS index for 802.11n
        mandatory rates."                      "Specify the maximum Modulation and Coding Scheme (MCS) index for
        802.11n supported rates.
        The specified maximum MCS index for 802.11n supported rates must be no
        less than the specified maximum MCS index for 802.11n mandatory rates."                       #"Enable/Disable dot11g protection."                      %"Configure the power constraint for all 802.11a radios.
        The configured power constraint is advertised in beacons if spectrum
        management is enabled.
        The range of power constraint is 0 to MAX-POWER-1 (where the MAX-POWER
        is defined by the regulatory domain)."                      "Enable/Disable spectrum management for 802.11a radios.
        When spectrum management is enabled, the WLAN sub-system advertises
        power capabilities of the AP and power constraints applicable to all
        devices in the BSS based on regulatory domain specification."                       �"Configure the auto-channel set as non-dot11h channels, this is,
        only the non-dot11h channels belonging to the country code are scanned
        during initial channel selection and one of them is selected."                       �"Set the scan mode.
        auto: When this option is set, all channels of the country code being
              set are scanned.
        all: When this option is set, all the channels of the radio band are
             scanned."                       "Set the scan report interval."                       �"Represents threshold of AP interference .
         If the value of AP interference exceeds this threshold,
         AP interference trap will be sent. If the value of this node
         is zero, AP interference trap will be sent immediately."                      "Represents threshold of STA interference.
         If the value of STA interference exceeds this threshold,
         STA interference trap will be sent. If the value of this
         node is zero, STA interference trap will be sent immediately.
         "                      "Configure WLAN RRM based radio type.
        When 802.11b parameter is modified, 802.11g parameter will be
        changed at the same time.
        In the same way, when 802.11g parameter is modified, 802.11b parameter
        will be changed at the same time."                      "Configure WLAN RRM based radio type.
        When 802.11b parameter is modified, 802.11g parameter will be
        changed at the same time.
        In the same way, when 802.11g parameter is modified, 802.11b parameter
        will be changed at the same time."                       "802.11 radio type."                       +"Enable/Disable dynamic channel selection."                       �"Configure the mode of channel selection.
        This node can be configured only when dynamic channel selection
        is enabled."                      �"Specify the AP and radio that will change channel at next
        calibration cycle.
        0 is returned when getting the value of this node.
        This node can be configured only when the mode of channel selection
        control is user-triggered.
        When configuring, the higher 24 bits stand for the AP index,
        and the last 8 bits stand for the radio index.
        4294967295 stand for configuring each radio on all APs."                       6"Enable/Disable dynamic power selection for the band."                       �"Configure the mode of transmit power control.
        This node can be configured only when dynamic power selection
        is enabled."                      �"Specify the AP and radio that will change power at next
        calibration cycle.
        0 is returned when getting the value of this node.
        This node can be configured only when the mode of transmit power
        control is user-triggered.
        When configuring, the higher 24 bits stand for the AP index,
        and the last 8 bits stand for the radio index.
        4294967295 stand for configuring each radio on all APs."                       %"Configure the calibration interval."                      X"Configure the interface threshold.
        By default, interference observed on an operating channel is considered
        during dynamic frequency selection and transmit power control.  If the
        interference percentage on the channel reaches the set threshold, RRM
        will perform resource adjustment to control the situation."                        "Configure the noise threshold."                       �"Configure the CRC error threshold.
        If the percentage of CRC errors reaches the threshold, RRM will perform
        resource adjustment to control the situation."                       �"Configure the tolerance level.
        During dynamic frequency selection (DFS), the channel will be changed
        only if there is a better channel having lesser interference and packet
        error rate than those specified by the user."                       �"Configure the adjacency factor for the band.
        If transmit power control (TPC) is configured, power will be adjusted
        when the nth neighbor is detected.  The value n is the adjacency factor."                       /"This table defines the RRM parameters for AP."                       ;"Each entry contains information of RRM parameters for AP."                       "AP work mode."                       3"This table defines RRM self-decisive radio group."                       G"Each entry contains information of one RRM self-decisive radio group."                       ."Represents RRM self-decisive radio group ID."                       >"Represents the description of RRM self-decisive radio group."                       H"Represents the channel holddown time of RRM self-decisive radio group."                       F"Represents the power holddown time of RRM self-decisive radio group."                       %"The row status of this table entry."                       /"This table defines the RRM parameters for AP."                       ;"Each entry contains information of RRM parameters for AP."                       "Serial ID of the AP."                       �"Represents threshold of AP interference .
         If the number of AP interference exceeds this threshold,
         AP interference trap will be sent."                       �"Represents threshold of STA interference.
         If the number of STA interference exceeds this threshold,
         station interference trap will be sent."                       �"Represents threshold of interference trap with current ap.
        If signal strength of the device exceeds this threshold,
        corresponding trap will be sent."                       �"Represents threshold of adjacent interference trap with current ap.
        If signal strength of the device exceeds this threshold,
        corresponding trap will be sent."                           Q"This table shows the RRM channel information of each radio
        on all APs."                       ]"Each entry contains information of RRM channel information
        of the radio on the AP."                        "Represents index of the radio."                       "Channel number."                       "Channel type."                       "Channel quality."                       +"Number of neighbors found on the channel."                       -"Load observed on the channel in percentage."                       +"Utilization of the channel in percentage."                       5"Interference observed on the channel in percentage."                       :"Packet error rate observed on the channel in percentage."                       7"Percentage of retransmission happened on the channel."                        "Noise observed on the channel."                       "Radar detection status."                       R"This table shows the RRM neighbor information of each radio
        on all APs."                       ]"Each entry contains information of RRM neighbor information
        of the radio on an AP."                       "MAC address of the AP."                       1"Channel number on which the neighbor was found."                       A"Interference observed on the channel in percentage by neighbor."                       #"Signal strength of the AP in dBm."                       '"Type of the AP, managed or unmanaged."                       "SSID of the Neighbor."                       �"This table shows the details of the latest three channel changes
        and power changes applied on all APs, including time of change,
        reason of the change and the channel, power, interference parameters."                       <"Each entry shows the details of channel and power changes."                       "History number of the change."                       $"History record type of the change."                       ["Channel on which the radio operates before/after the change
        of channel or power."                       J"Power of the radio before/after the change of channel or
        power."                       `"Load observed on the radio in percentage before/after the
        change of channel or power."                       ^"Utilization of the radio in percentage before/after the
        change of channel or power."                       h"Interference observed on the radio in percentage
        before/after the change of channel or power."                       S"Noise observed on the radio before/after the change
        of channel or power."                       m"Packet error rate observed on the radio in percentage
        before/after the change of channel or power."                       j"Percentage of retransmission happened on the radio
        before/after the change of channel or power."                      �"Reason for the change of channel or power.
        The various bit positions are:
        |0        |Others                    |
        |1        |Coverage                  |
        |2        |Radar                     |
        |3        |Retransmission            |
        |4        |Packets discarded         |
        |5        |Interference              |
        0 is returned when the history record type is after."                       5"The time when the channel or power change occurred."                                   ["This notification will be sent when interference on the radio
        exceeds the limit."                 `"This notification will be sent when packet error rate on the
        radio exceeds the limit."                 T"This notification will be sent when noise on the radio exceeds
        the limit."                         X"This notification will be sent when power changed on the radio
        automatically."                     /"Power of the radio after the change of power."                       0"Power of the radio before the change of power."                           -"This table shows the devices of AP detected"                       6"Each entry contains information of detected devices."                       0"Represents MAC address of the device detected."                       )"Represents type of the device detected."                       +"Represents vendor of the detected device."                       f"Represents the service set identifier for the ESS of the device which
         type is ap or adhoc."                       E"Represents the basic service set identifier of the detected device."                       �"Represents the channel in which the device was last detected. AP will
         choose the channel which has maximum signal strength as effective
         channel, as there is interference between adjacent channels."                       ="Represents the radio ID of the AP that detected the device."                       L"Represents the maximum detected RSSI of the device in a scan report cycle."                       p"Represents the beacon interval for the detected device(not include
         the device which type is client)."                       ="Represents the time at which the device was first detected."                       A"Represents the time at which the device was detected last time."                       �"This object is used to clear the information of the device detected
         in the WLAN.
         It will return false for get operation."                       :"Represents the SNR of the device in a scan report cycle."                      