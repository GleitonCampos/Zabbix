|-- =============================================================================
-- Copyright (c) 2004-2010 by Hangzhou H3C Technologies. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide WLAN configuration extended.
-- Reference:
-- Version: V1.2
-- History:
--   V1.0 2007-04-25 Initial version, created by shiyang (Richard)
--   V1.1 2008-07-17 Changed by chenwei
--        Add h3cDot11LoadBalanceTrafficGap and
--        h3cDot11LoadBalanceSessionGap to h3cDot11LBGlobalGroup.
--   V1.2 2010-02-22 Changed by Wang Chunsheng
--        Add new table of h3cDot11LBRadioGroupTable for h3cDot11LoadBalance.
--        2010-06-02 Changed by Yin Junjie
--        Add new node h3cDot11LBTrafficThresKbps and
--        h3cDot11LBTrafficGapKbps to h3cDot11LBGlobalGroup.
-- =============================================================================
                                                �"This MIB provides information for WLAN configuration extended.
        The h3c-dot11-cfg.mib define MIB objects for WLAN basic configuration,
        while this MIB will define MIB objects for load balance these kinds
        feature.

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
        802.11i, and which includes 802.1x and pre-shared key." �"Platform Team HUAWEI-3COM Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085" "201006021400Z" "200704252000Z" "Modified to add new nodes." *"The initial revision of this MIB module."       -- Jun 02, 2010 at 14:00 GMT
               Q"Represents whether enable load balancing according to station
        traffic."                       B"Represents the threshold value for Traffic based load balancing."                       X"Represents whether enable load balancing according to station
        session number."                       R"Represents the threshold value for session number based
        load balancing."                       �"Traffic gap threshold.  Load balancing is carried out for a radio
        when the traffic threshold and session gap are exceeded."                       �"Session gap threshold.  Load balancing is carried out for a radio
        when the session threshold and session gap are exceeded."                       B"Represents the threshold value for Traffic based load balancing."                       x"Traffic gap threshold. Load balancing is carried out for a radio
        when the traffic threshold gap are exceeded."                       ."This table defines load balance radio group."                       B"Each entry contains information of one load balance radio group."                       )"Represents load balance radio group ID."                       9"Represents the description of load balance radio group."                       %"The row status of this table entry."                      