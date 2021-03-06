�-- =============================================================================
-- Copyright (C) 2006-2007 by HUAWEI-3COM TECHNOLOGIES.  All rights reserved.
--
-- Description:
--   The file defines a MIB to provide more information for WLAN network.
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2007-06-08 Initial version, created by wanghao (Kumar)
-- =============================================================================
                �"This MIB provides more information for WLAN network.

        GLOSSARY

        IEEE 802.11
        Standard to encourage interoperability among
        wireless networking equipment.

        IEEE 802.11e
        Standard to define the MAC procedures to support
        LAN applications with Quality of Service (QoS) requirements,
        including the transport of voice, audio and video over
        IEEE 802.11 wireless LANs.

        Access point (AP)
        Transmitter/receiver (transceiver) device
        that commonly connects and transports data
        between a wireless network and a wired network.

        Access control (AC)
        To control and manage multi-APs, it will bridge
        wireless and wired network.

        Radio
        The chip set to receive and send wireless signal.

        Fat AP
        Applied in the home, SOHO and so on, and it could
        independently work without help from AC.

        Fit AP
        Applied in the enterprise environment, it will work
        under the control and management from AC.

        Control And Provisioning of Wireless Access Points Protocol
        The short name of protocol is CAPWAP. AC will control
        and manage AP by CAPWAP tunnel protocol defined by IETF.
        Also, a data tunnel will be set up between AC and AP.

        Basic Service Set
        The IEEE 802.11 BSS of an AP comprises of the
        stations directly associating with the AP. It will
        be identified by BSSID." �"Platform Team HUAWEI-3COM Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085" "200706082000Z" *"The initial revision of this MIB module."       -- Jun. 08, 2007 at 20:00 GMT
           Y"The table will describe statistic information of signal strength
        for AP radio."                       _"Each entry contains the signal of each signal strength information of
        a specific AP."                       0"To identify each AP, and AP is running status."                       "Represents each radio."                       '"Represents the interval of statistic."                       \"Represents the average value of signal strength
        for stations on a specific radio."                       \"Represents the maximum value of signal strength
        for stations on a specific radio."                       \"Represents the minimum value of signal strength
        for stations on a specific radio."                           @"The table defines the attributes for the Qos feature of radio."                       E"Each entry contains information of the Qos attribute of each radio."                       ."To uniquely identify a AP in running status."                       "Represents each radio."                       8"The average frame numbers to be sent out in the queue."                       @"The ratio of dropped frames in a minute because of full queue."                       *"The average transmit data rate of radio."                       ;"The table defines the parameters for Qos access category."                       >"Each entry contains information of each Qos access category."                       "The access category type."                       k"The number of dropped frames in a minute for one specific access
        category because of full queue."                      