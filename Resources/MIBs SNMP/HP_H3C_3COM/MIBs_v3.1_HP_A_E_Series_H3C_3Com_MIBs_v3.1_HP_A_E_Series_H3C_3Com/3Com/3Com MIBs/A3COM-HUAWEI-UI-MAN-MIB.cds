�-- =======================================================================
-- Copyright (C) 2002-2004 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description:user-interfaces management mib
-- Reference:huawei enterprise mib
-- Version: V1.6
-- History:
--  V1.0 Initial version 2002-12-20
--  V1.1 2004-10-12 updated by gaolong
--       Remove h3cVtyAccUserIndex, h3cVtyAccConnway from h3cUIMgtBasicGroup
--       because they are not accessbile objects.
--  V1.2 Updated by tanbo 02122, 2004-12-20
--       Add h3cConStatus for console re-authentication.
--  V1.3 2005-01-03 updated by huguohua02576
--       Modified h3cVtyAccAclNum's attribute.
--       Added rowstatus for h3cVtyAccTable.
--  V1.4 2005-08-15 updated by wangrui01736
--       Add enumeration value linkinbound(3) for h3cVtyAccConnway.
--  V1.5 2006-11-03 updated by songhao02718
--       Add enumeration value acl6inbound(11) and acl6outbound(12) for h3cVtyAccConnway.
--  V1.6 2007-12-12 updated by miaochunyan05345
--       Add h3cTerminalUserName, h3cTerminalSource, h3cTerminalUserAuthFailureReason,
--       h3cLogIn, h3cLogOut and h3cLogInAuthenFailure.
-- =======================================================================
                                          "User interfaces management MIB" �"Comware Team Huawei-3com Technologies co.,Ltd.
        Shang-Di Information Industry Base,
        Hai-Dian District Beijing P.R. China
        http://www.huawei-3com.com
        Zip:100085"        -- April 08, 2004 at 14:05 GMT
                       �"
        It represents the name of the logging user when login with authentication,
        otherwise login mode, such as Console, AUX, TTY, VTY etc.
        "                       E"
        Login mode, such as Console, AUX, TTY, VTY etc.
        "                       )"The reason why a user failed to log in."                               I"
        This notification is generated when a user logs in.
        "                 J"
        This notification is generated when a user logs out.
        "                 t"
        This notification is generated when a user fails to log in
        because of authentication.
        "                     "Description."                       "Description."                       F"
        The relative index of the user interface of vty.
        "                      �"
        inbound(1):Filter login connections from current UI with ipv4 layer acl.
        outbound(2):Filter logout connections from current UI with ipv4 layer acl.
        linkinbound(3):Filter login connections from current UI with link layer acl.
        acl6inbound(11):Filter login connections from current UI with ipv6 layer acl.
        acl6outbound(12):Filter logout connections from current UI with ipv6 layer acl.
        "                       4"
        The filter rule number of ACL.
        "                       v"
        The status of this conceptual row. Now only support CreateAndGo and
        Destroy and Active.
        "                           �"
        The current status of CONSOLE user interface. A group of
        attributes are used to describe the current status.
        "                       4"
        An entry of h3cConStatusTable.
        "                       h"
        The index of the user interface of CONSOLE.
        It's equal to current UserID.
        "                      "
        The re-authentication attribute of current user interface.
        After disconnection of current user interface, connection
        is rebuilt, at the moment
        disable(1): re-authentication is not need.
        enable(2): re-authentication is need.
        "                               "The compliance statement"                   0"A collection of objects for a basic implement."                 0"A collection of current user interface status."                        