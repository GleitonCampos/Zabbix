e-- =================================================================
-- Copyright (C) 2008 by H3C TECHNOLOGIES.  All rights reserved.
--
-- Description: stack mib
-- Reference: STACK-MIB
-- Version: V1.0
-- History:
--   V1.0 created by ranbin
--     Initial version 2008-04-30
-- =================================================================
        s"This MIB is used to manage STM (Stack Topology Management)
         information for IRF (Intelligent Resilient Framework) device.
         This MIB is applicable to products which support IRF. Some objects in
         this MIB may be used only for some specific products, so users should
         refer to the related documents to acquire more detailed information." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085" "200804301650Z" *"The initial revision of this MIB module."       "-- 30th April, 2007 at 16:50 GMT
           +"The maximum number of members in a stack."                       -"The number of members currently in a stack."                       F"The highest priority that can be configured for a member in a stack."                      �"The function for automatically updating the image from master to
         slave. When a new device tries to join a stack, the image version is
         checked. When this function is enabled, if the image version of the
         new device is different from that of the master, the image of the new
         device will be updated to be consistent with that of the master.
         When this function is disabled, the new device can not join the stack
         if the image version of the new device is different from that of the
         master.

        disabled: disable auto update function
        enabled: enable auto update function"                      �"The mode of bridge MAC address persistence. When a stack starts, the
         bridge MAC address of master board will be used as that of the stack.
         If the master board leaves the stack, the bridge MAC address of the
         stack will change based on the mode of bridge MAC address persistence.

        notPersist: The bridge MAC address of the new master board will be used
         as that of the stack immediately.
        persistForSixMin: The bridge MAC address will be reserved for six
         minutes. In this period, if the master board which has left the stack
         rejoins the stack, the bridge MAC address of the stack will not change.
         Otherwise, the bridge MAC address of the new master board will be used
         as that of the stack.
        persistForever: Whether the master leaves or not, the bridge MAC address
         of the stack will never change."                      �"The delay time for a device in a stack to report the change of stack
         port link status.
         If the delay time is configured, a device in a stack will not report
         the change immediately when the stack port link status changes to down.
         During the delay period, if the stack port link status is resumed, the
         device will ignore the current change of the stack port link status.
         If the stack port link status is not resumed after the delay time,
         the device will report the change.
         0 means no delay, namely, the device will report the change as soon as
         the stack port link status changes to down.

        0: no delay
        200-2000(ms): delay time"                       f"The topology of the stack.

        chainConn: chain connection
        ringConn: ring connection"                       F"This table contains objects to manage device information in a stack."                       F"This table contains objects to manage device information in a stack."                       )"The member ID of the device in a stack."                      �"The configured member ID of the device. The valid value ranges from 1
         to the value of h3cStackMaxMember. After the member ID is configured
         for a device, if this ID is not the same with that of another device,
         the ID will be used as the member ID of the device when the device
         reboots. If a same ID exists, the member ID of the device will be set
         as another exclusive ID automatically."                       y"The priority of a device in a stack. The valid value ranges from 1 to
         the value of h3cStackMaxConfigPriority."                       9"The number of stack ports which is enabled in a device."                       0"The maximum number of stack ports in a device."                       ]"This table contains objects to manage board information of the device
         in a stack."                       ]"This table contains objects to manage board information of the device
         in a stack."                       �"The role of the board in a stack.

        slave: slave board
        master: master board
        loading: slave board whose image version is different from that of the
         master board.
        other: other"                       S"The member ID of the device where the current board resides in a
         stack."                       `"This table contains objects to manage stack port information of a
         device in a stack."                       `"This table contains objects to manage stack port information of a
         device in a stack."                       5"The index of a stack port of the device in a stack."                      "The status of the stack port of the device in a stack. If no physical
         port is added to the stack port, its status is 'disabled'; otherwise,
         its status is 'enabled'.

        disabled: The stack port is disabled.
        enabled: The stack port is enabled."                      �"The link status of the stack port of the device in a stack.

        up: The link status of a stack port with reasonable physical connection
         is up.
        down: The link status of a stack port without physical connection is
         down.
        silent: The link status of a stack port which can not be used normally
         is silent.
        disabled: The link status of a stack port in disabled status is
         disabled."                       ^"The member ID of the stack port's neighbor in a stack. 0 means no
         neighbor exists."                       �"This table contains objects to manage the information for physical
         ports which can be used for physical connection of stack port in a
         stack."                       �"This table contains objects to manage the information for physical
         ports which can be used for physical connection of stack port in a
         stack."                       �"The index of the stack port to which the physical port is added. 0
         means the physical port is not added to any stack port. The value will
         be valid after the device in the stack reboots."                               o"The h3cStackPortLinkStatusChange trap indicates that the link status
         of the stack port has changed."                 f"The h3cStackTopologyChange trap indicates that the topology type of
         the stack has changed."                            