�-- =====================================================================
-- Copyright (C) 2003 by HUAWEI 3COM TECHNOLOGIES. All rights reserved.
--
-- Description: DHCP Relay MIB.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2005-4-11 created by wumingyu
-- V1.1 2006-01-10 modified by xuyufei
--      Add h3cDHCPRConfigOption82IfTable
-- =====================================================================
                                                         "HUAWEI-3COM DHCPR MIB" �"Platform Team Huawei 3Com Technologies Co.,Ltd.
                                Hai-Dian District Beijing P.R. China
                                http://www.huawei-3com.com
                                Zip: 100085" "200506080000Z" )"The initial version of this MIB module."                   o"A table for configuring relay mode
                            for interfaces.
                            "                       r"An entry for configuring relay mode for an
                            interface.
                            "                       �"If the value is on, the DHCP relay function
                            would be enabled on this interface.
                            "                       y"A table for configuring ip addresses for DHCP
                            server groups.
                            "                       {"An entry for configuring ip addresses for a DHCP
                            server group.
                            "                       )"Group identifier of DHCP server group. "                       ""Ip address type of DHCP server. "                       "Ip address of DHCP server. "                       �"Operation status of this table entry.
                        Three actions are used: active,
                        createAndGo, destroy.
                        "                       w"A table for configuring DHCP server groups
                            for interfaces.
                            "                       y"An entry for configuring DHCP server group for
                            an interface.
                            "                       ,"The DHCP server group for this interface. "                       �"Operation status of this table entry.
                        Three actions are used: active,
                        createAndGo, destroy"                       �"A table containing the states of dhcp security address
                        check switchs for interfaces.
                        "                       �"An entry containing the state of dhcp security address
                        check switch for an interface.
                        "                      Y"The state of dhcp security address check switch for
                        this interface.
                        It has two defined values: enabled and disabled.
                        If the value is enabled, the address check function
                        would be enabled. The default value is disabled.
                        "                       q"A table containing the information of
                            DHCP security.
                            "                       r"An entry containing the information of
                            DHCP security.
                            "                       #"DHCP client's net ip address type"                       "DHCP client's net ip address"                       "DHCP client's mac address"                       "Property of client address"                       �"Operation status of this table entry.
                        Three actions are used: active,
                        createAndGo, destroy"                           ~"The total number of the packets received from DHCP
                        clients by DHCP relay.
                        "                       �"The total number of the brodcast packets transmitted
                        to DHCP clients by DHCP relay.
                        "                       ~"The total number of the packets received from
                        DHCP Servers by DHCP relay.
                        "                       "The total number of the packets transmitted to
                        DHCP Servers by DHCP relay.
                        "                       y"The total number of the DHCP Discover packets handled
                        by DHCP relay.
                        "                       x"The total number of the DHCP Request packets handled
                        by DHCP relay.
                        "                       x"The total number of the DHCP Decline packets handled
                        by DHCP relay.
                        "                       x"The total number of the DHCP Release packets handled
                        by DHCP relay.
                        "                       w"The total number of the DHCP Inform packets handled
                        by DHCP relay.
                        "                       v"The total number of the DHCP Offer packets handled
                        by DHCP relay.
                        "                       t"The total number of the DHCP Ack packets handled
                        by DHCP relay.
                        "                       t"The total number of the DHCP Nak packets handled
                        by DHCP relay.
                        "                       �"This node only supports set operation.
                        If the value is true,it will clear all of the packet
                        statistics.
                        "                           u"If the value is on, the cycle function
                            would be enabled.
                            "                           �"If the value is enabled,
                            DHCP relay supporting option 82 function
                            would be enabled.
                            "                      V"The strategies of DHCP relay handling option 82.

                            'drop' indicates DHCP relay discarding the request
                            packet including option 82.

                            'keep' indicates DHCP relay accepting the request
                            packet without any change of the option 82.

                            'replace' indicates DHCP relay accepting the
                            request packet on condition that it generates a new
                            option 82 to replace the original one.
                            "                      R"A table containing the information of DHCP
                            option 82.
                            This table depends on h3cDHCPRIfToGroupTable.
                            An entry of this table will be created when
                            an entry of h3cDHCPRIfToGroupTable is created.
                            "                       s"An entry containing the information of
                            DHCP option 82.
                            "                      "If DHCP relay supports option 82 functions, the
                            value is 'enabled'.
                            If DHCP relay does not support option 82 functions,
                            the value is 'disabled'.
                            "                      V"The strategies of DHCP relay handling option 82.

                            'drop' indicates DHCP relay discarding the request
                            packet including option 82.

                            'keep' indicates DHCP relay accepting the request
                            packet without any change of the option 82.

                            'replace' indicates DHCP relay accepting the
                            request packet on condition that it generates a new
                            option 82 to replace the original one.
                            "                       �"The format of DHCP relay option 82.

                            'normal' is the standard format.

                            'verbose' is the detailed format.
                            "                      ]"Property of DHCP relay option 82 verbose format.
                            The value can be set by user only when the value
                            of h3cDHCPROption82IfFormat is set with 'verbose'.

                            If the value of h3cDHCPROption82IfFormat is
                            'normal', the value is automatically set with
                            'invalid'. the value can not be set with 'invalid'
                            by user.

                            'mac' indicates the option 82 verbose format is
                            filled in with the mac of DHCP relay input
                            interface. If the value of h3cDHCPROption82IfFormat
                            is set with 'verbose', the value is automatically
                            set with 'mac'.

                            'sysname' indicates the option 82 verbose format
                            is filled in with the name of the DHCP relay.

                            'userdefine' indicates the option 82 verbose format
                            is filled in with the string defined by user.
                            If the value is set with 'userdefine', the value of
                            h3cDHCPROption82IfUsrDefString must be set
                            simultaneously.
                            "                      �"The string defined by user to fill in the
                            option 82 verbose format. If the value of
                            h3cDHCPROption82IfFormat is 'normal', or the
                            value of h3cDHCPROption82IfNodeType is 'mac'
                            or 'sysname', it is set with a null string
                            automatically and can not be modified by user.
                            It must be set with a non-zero length string
                            when the value of h3cDHCPROption82IfNodeType
                            is set with 'userdefine'.
                            "                                  