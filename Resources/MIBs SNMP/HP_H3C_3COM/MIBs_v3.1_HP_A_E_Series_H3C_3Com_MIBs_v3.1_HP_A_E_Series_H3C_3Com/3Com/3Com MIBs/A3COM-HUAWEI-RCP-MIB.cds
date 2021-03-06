d-- =================================================================
-- Copyright (C) 2006 by HUAWEI-3Com TECHNOLOGIES. All rights reserved
--
-- Description: Private MIB for RCP information
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2006-09-20, Created by ChaiYongfu
-- =================================================================
                                                             :"The MIB module is used for managing RCP protocol server." �"Platform Team Huawei 3Com Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085" "200609200000Z" #"The Initial Version of h3cRCPMIB."                   �"This attribute controls the system wide operation of RCP server.
        The value TRUE means that the RCP server is enabled.
        The value FALSE means that the RCP server is disabled."                       V"Specifies the maximum time in seconds that a RCP client connection
        is idle."                       �"Specifies the time in seconds before a RCP rule is aged out.
        If its value is 0, it indicates RCP rule will not be aged out."                       n"Specifies the maximum number of clients that permitted to connect with
        RCP server at the same time."                       G"The current actual number of clients that connecting with RCP server."                       3"Specifies the maximum value of h3cRCPConnTimeout."                       3"Specifies the maximum value of h3cRCPRuleTimeout."                       5"Specifies the maximum value of h3cRCPServerMaxConn."                       8"Specifies the minimum value of balance group identity."                       8"Specifies the maximum value of balance group identity."                       )"Specifies the total number of RCP user."                       ."Specifies the total number of RCP client IP."                           "RCP User Info Table."                       "The entry of h3cRCPUserTable."                       "The name of RCP user."                       V" The password of RCP user.
        It is invisible to users and displayed as '***'."                       �"The redirect interface index of RCP user.
        The RCP rule assigned by the user can be associated with the redirect
        interface.
        If the redirect interface is invalid, its value is set to be 0."                       �"The redirect balance group identity of RCP user.
        The RCP rule assigned by the user can be associated with the redirect
        balance group.
        If the balance group is invalid, its value is set to be 0."                      n"This manages the creation and deletion of rows, and shows
        the current status of the indexed user name. This object has the
        following values.

        active(1)        The indexed user name is configured on the device.
        notInService(2)  Not Supported.
        notReady(3)      Not Supported.
        createAndGo(4)   Create a new user.
        createAndWait(5) Not Supported.
        destroy(6)       Delete this entry.

        The associated entry can be modified when the value of
        h3cRCPUserRowStatus is active(1).
        When deleting an inexistence entry, return noError."                       "RCP Client IP Table."                       #"The entry of h3cRCPClientIPTable."                       3"The IP address type (IPv4 or IPv6) of RCP client."                       "The IP address of RCP client."                      �"This manages the creation and deletion or rows, and shows
        the current status of the indexed client IP address.  This object has
        the following values.

        active(1)        The indexed client IP is configured on the device.
        notInService(2)  Not Supported.
        notReady(3)      Not Supported.
        createAndGo(4)   Create a new client IP.
        createAndWait(5) Not Supported.
        destroy(6)       Delete this entry.

        The associated entry can be modified when the value of
        h3cRCPClientIPRowStatus is active(1).
        When deleting an inexistence entry, return noError."                       "RCP session Table."                       ""The entry of h3cRCPSessionTable."                       "RCP session identity."                       3"The IP address type (IPv4 or IPv6) of RCP client."                       "RCP client IP address."                      I"RCP server running status.
         It is one of the following status:
         connected: The connection is established and the RCP client is waiting
                    for authentication.
         operational: The RCP client is authenticated and the server is ready
                      for rule configuration request."                       "RCP user name."                          