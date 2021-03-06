�-- ==========================================================================
-- Copyright (C) 2008 by Hangzhou H3C Technologies Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide object definition
--              of network management parameters.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2008-04-16 Initial version, created by Longyin
-- ==========================================================================
         �"This MIB file is to provide the object definition of the network
        management parameters.  These parameters are used to identify devices.
        It is useful for devices management in a dynamic address assignment
        network." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip: 100085" "200804161700Z" '"The initial version of this MIB file."                               ;"The IP address type of specified interface on the device."                       6"The IP address of specified interface on the device."                       m"The customer-required information of devices, for example,
        OUI (Organizational Unique Identifier)."                       h"The serial number used by NMS (Network Management Station) for
        mapping IP address and device."                              r"This notification will be generated when the IP address of active
        management interface is changed.  The change maybe originate from NMS,
        DHCP server or administrator.

        The management interfaces are the interfaces that assigned by
        administrator, which can be used to manage device, but may be inactive
        for link fault or IP address (IPv4 or IPv6) missing.

        The active management interface means an active interface, the IP
        address of which can be used for network management.

        This notification announces useful management IP address change.  So it
        is triggered by significative IP address change.

        Suppose that two management interfaces on a device, Interface-A and
        Interface-B.  Initially both interfaces are down and assigned no IP
        address. Configure Interface-A as the primary monitored interface,
        Interface-B as the secondary.

        Significative IP address change in following cases:
        1. If Interface-A is assigned an IP address primarily, and it is linking
        up, then Interface-B will be ignored.  A notification will be triggered,
        appending IP address of Interface-A.

        2. If Interface-B is assigned an IP address primarily, and it is linking
        up, then Interface-A will be ignored.  A notification will be triggered,
        appending IP address of Interface-B.

        3. If IP address of that interface, which had its IP address announced
        to NMS, is changed since last notification triggered, then another
        notification will be sent to NMS.

        4. Suppore that Interface-A was linked up and assigned an IP address
        primarily.  If for some unknown reason, Interface-A is down or loses IP
        address, and Interface-B is assigned an IP address which is different
        with that announced to NMS before, then a notification will be
        triggered, appending the new IP address that Interface-B assigned.

        5. A notification appending new IP address that Interface-A assigned
        will be triggered, if 4 occurs to Interface-B."                         Y"The statement of compliance for those implementing
        the network management MIB."                   :"A collection of objects in net management monitor group."                 ?"A collection of objects in net management notification group."                            