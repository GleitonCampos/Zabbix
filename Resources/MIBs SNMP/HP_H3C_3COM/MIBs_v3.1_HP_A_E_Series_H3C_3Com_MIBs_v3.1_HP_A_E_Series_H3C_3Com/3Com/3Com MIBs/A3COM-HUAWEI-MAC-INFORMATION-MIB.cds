?-- ============================================================================
-- Copyright (c) 2004-2009 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              the MAC Information general configuration.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2007-12-28
--   Initial version, created by gejianzhuang
-- V1.1 2009-08-13
--   Add 'h3cMACInformationTrapObjectsExt' by gejianzhuang
-- ============================================================================
   2"The working mode of the MAC Information feature."                     "This MIB file is to provide the definition of the MAC Information
        general configuration.  MAC Information feature is used to
        make that the changed MAC information in the monitored device is
        knowable in remote monitoring device." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "200712281912Z" '"The initial version of this MIB file."       -- DEC 28, 2007 at 19:12 GMT
               �"The value is a global setting.  The feature will not work until the
        value is set to enabled(1).  If the value is set to disabled(2),
        the feature will stop working even there are interfaces that have
        been enabled the feature."                       ^"The maximum interval that the device generate syslogs or traps.
        The unit is second."                      )"The number of MAC addresses that learnt by the device since the
        h3cMACInformationEnabled is set to enabled(1) and h3cMACLearntEnable
        is set to enabled(1) at least on one interface. If the h3cMACInformationEnabled
        is set to disabled(2), the object will always return 0."                      +"The number of MAC addresses that removed by the device since the
        h3cMACInformationEnabled is set to enabled(1) and h3cMACRemovedEnable
        is set to enabled(1) at least on one interface. If the h3cMACInformationEnabled
        is set to disabled(2), the object will always return 0."                       �"The number of traps that have been generated. This object is valid
        only when the h3cMACInfomationWorkMode is set to trap(1). If the
        h3cMACInfomationWorkMode is set to syslog(2), the object will always return 0."                       �"The number of syslogs that have been generated. This object is valid only
        when the h3cMACInfomationWorkMode is set to syslog(2). If the
        h3cMACInfomationWorkMode is set to trap(1), the object will always return 0."                       �"The maximum queue lenth used to cache the changed MAC addresses information
        in the monitored device. If the value is set to 0, syslog or trap will generate
        as soon as there is a MAC address learnt or removed."                      �"The working mode of MAC Information feature.  If the object is
        set to trap(1), the device will use trap mode to notify the MAC
        address information and all properties of trap interrelated is
        valid.  If the object is set to syslog(2), the device will use
        syslog mode to notify the MAC address information and all
        properties of trap interrelated is invalid."                           \"The table is used to enable or disable the MAC Information feature
        on interfaces."                       '"The entry of h3cMACInfomationIfTable."                       �"If the object is set to enabled(1) on interface, the device
        will cache the MAC address information that learnt on the interface."                       �"If the object is set to enable(1) on interface, the device
        will cache the MAC address information that removed on the interface."                              �"When the cached number of MAC address information is reached the
        value specified by h3cMACInformationCacheLen, trap is generated
        and is sent to the remote monitoring device.  The trap is also
        generated when the amount of time elapsed since the previous
        notification is greater than the interval value specified by
        h3cMACInformationcSendInterval and there is at least one cached
        MAC address information learnt or removed. The object is valid
        only when h3cMACInfomationWorkMode is set to trap(1).  When the
        h3cMACInfomationWorkMode is set to syslog(2), No trap will be
        generated even h3cMACInformationEnabled is set to enabled(1) and
        the feature is enabled on interface."                     m"The sequence number of trap information. When it reaches the
        maximum value, it should be set to 1."                       �"The cell number of the current trap information.  The trap
        message may consists of more than one MAC address information.
        Each of the one MAC address information in one trap is called cell."                      �"This object is the MAC information that learnt or removed
        in the monitored device. It can consists of more than
        one MAC information in the object.
        This object is in the format of '<cell1><cell2>...'. Each
        cell consists of 12 octets in the format of
        '<operationType><VLAN><MAC><MACtype><ifIndex>'.

        <operationType> is the reason type of MAC address changed and have
        size of 1 octet. It only supports the following values.
        1 - MAC learnt.
        2 - MAC removed.

        <VLAN> is the vlan number that correspond to the MAC address in
        MAC address table and has size of 2 octet.

        <MAC> is the MAC address and has size of 6 octets.

        <MACtype> is the MAC address type and has size of 1 octet. It only
        supports the following values.
        0 - Unknown
        1 - Learnt
        2 - Config dynamic
        3 - Config static
        4 - Blackhole
        5 - Security
        6 - 802.1x
        7 - MAC authentication
        8 - Voice VLAN
        9 - WAPI

        <ifIndex> is the index of the interface where the MAC
        address is learnt or removed and has size of 2 octets."                              �"When the cached number of MAC address information is reached the
        value specified by h3cMACInformationCacheLen, trap is generated
        and is sent to the remote monitoring device.  The trap is also
        generated when the amount of time elapsed since the previous
        notification is greater than the interval value specified by
        h3cMACInformationcSendInterval and there is at least one cached
        MAC address information learnt or removed.  The object is valid
        only when h3cMACInfomationWorkMode is set to trap(1).  When the
        h3cMACInfomationWorkMode is set to syslog(2), No trap will be
        generated even h3cMACInformationEnabled is set to enabled(1) and
        the feature is enabled on interface."                     ""The version of trap information."                       n"The sequence number of trap information.  When it reaches the
        maximum value, it should be set to 1."                       �"The cell number of the current trap information.  The trap
        message may consists of more than one MAC address information.
        Each of the one MAC address information in one trap is called cell."                      �"This object is the MAC information that learnt or removed
        in the monitored device.  It can consists of more than
        one MAC information in the object.
        This object is in the format of '<cell1><cell2>...'.  Each
        cell consists of 14 octets in the format of
        '<operationType><VLAN><MAC><MACtype><ifIndex>'.

        <operationType> is the reason type of MAC address changed and have
        size of 1 octet.  It only supports the following values.
        1 - MAC learnt.
        2 - MAC removed.

        <VLAN> is the vlan number that correspond to the MAC address in
        MAC address table and has size of 2 octet.

        <MAC> is the MAC address and has size of 6 octets.

        <MACtype> is the MAC address type and has size of 1 octet.  It only
        supports the following values.
        0 - Unknown
        1 - Learnt
        2 - Config dynamic
        3 - Config static
        4 - Blackhole
        5 - Security
        6 - 802.1x
        7 - MAC authentication
        8 - Voice VLAN
        9 - WAPI

        <ifIndex> is the index of the interface where the MAC
        address is learnt or removed and has size of 4 octets."                                  