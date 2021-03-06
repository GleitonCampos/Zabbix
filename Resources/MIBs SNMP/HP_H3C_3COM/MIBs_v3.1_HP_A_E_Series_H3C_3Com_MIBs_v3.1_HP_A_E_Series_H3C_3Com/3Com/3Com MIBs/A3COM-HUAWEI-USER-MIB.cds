�-- =================================================================
-- Copyright (C) 2009 by H3C Technologies. All rights reserved.
--
-- Description:
-- Reference:H3C enterprise mib
-- Version: V2.4
-- History:
--  V1.0 Initial version 2004-07-13
--  V1.1 2004-10-12 updated by gaolong
--       Remove hyphens from DisplayString definition.
--  V2.0 2004-12-28 updated by huguohua02576
--       Add h3cUserState, h3cUserInfoRowStatus, h3cUserIndex under h3cUserInfoTable
--   Change index from h3cUserName to h3cUserIndex under h3cUserInfoTable
--       Modify h3cUserName, h3cUserPassword, h3cAuthMode, h3cUserLevel's MAX-ACCESS
--       from read-only to read-create
--       Add h3cUserAttributeTable, h3cUserMaxNum, h3cUserCurrNum and h3cUserIndexIndicator
--  V2.1 2006-02-07 updated by sunludong03130
--       Modify h3cFtpService, h3cLanAccessService, h3cSshService, h3cTelnetService,
--       h3cTerminalService, h3cFtpDirectory's description
--  V2.2 2006-12-26 updated by zhangzhancheng02444
--       Modify h3cAccessLimit, h3cFtpDirectory, h3cSlotNum, h3cSubSlotNum,
--       and h3cPortNum
--  V2.3 2008-03-13 updated by w02260
--       Add h3cExpirationDate, h3cUserGroup under h3cUserAttributeTable,
--       and add h3cUserGroupObjects
--  V2.4 2008-12-29 updated by liubo04367
--       Add h3cPortalService under h3cUserAttributeTable
-- =================================================================
   +"enable (1)
        disable (2)
        "                                                                                     �"
        This MIB contains objects to
        Manage configuration and Monitor running state
        for userlog feature.
        " �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        "        -- April 10, 2003 at 00:00 GMT
           +"
        Local User Info Table
        "                       3"
        The entry of h3cUserInfoTable
        "                       @"
        The name of local user, it must be unique.
        "                       B"
        The password of local user, default is null.
        "                       �"
        The encrypting type of password:
        0 : password simple, means password is clean text.
        7 : password cipher, means password is encrypted text.
        default is 0.
        "                       �"
        The privilege of local user
        the value range is from 0 to 3, and 0 is minimum, 3 is maximum.
        default is 0.
        "                       �"
        The state of local user
        0: active, means local user can execute any operations that he has
           privilege to do.
        1: block, means local user can not execute any operations.
        default is active.
        "                       v"
        The status of this conceptual row. Now only support CreateAndGo and
        Destroy and Active.
        "                       -"
        The index of local user
        "                       �"
        Local User Attribute Table.
        if there are data in h3cUserInfoTable, this table should have the
        relevant data.
        this table only support query and modify, but not support create and
        delete operations.
        "                       %"The entry of h3cUserAttributeTable "                       |"
        The maximum user number of current user who can access devices.
        default is 0, means no limit.
        "                       p"
        Valid idle time out(second): 60..7200,
        default is 0, means disable idle time out.
        "                       N"
        Set local user's ip address.
        default is 0.0.0.0
        "                       "
        Set local user's ip address of network access server.
        default is 127.0.0.1, means local machine.
        "                       C"
        Set local user's slot.
        default is 0.
        "                       G"
        Set local user's sub-slot.
        default is 0.
        "                       l"
        Set local user's port number.
        0 is an insignificant value for initial status.
        "                       �"
        Set local user's mac address.
        default is 0-0-0, means the local user do not bind any mac address.
        "                       �"
        Set local user's vlan id.
        the value range is from 0 to 4094.
        default is 0, means the local user is not in any vlan.
        "                      �"
        FTP service:
        enable
        Setting this object to the value enable has the
        effect of enabling the FTP service for the corresponding entry in the
        h3cUserAttributeTable.

        disable
        Setting this object to the value disable has the
        effect of disabling the FTP service for the corresponding entry in the
        h3cUserAttributeTable.

        The default value is disable.
        "                       |"
        Directory of FTP user.
        default is null, means if local user has the privilege of ftp service.
        "                      �"
        Lan Access service:
        enable
        Setting this object to the value enable has the
        effect of enabling the lan access service for the corresponding entry
        in the h3cUserAttributeTable.

        disable
        Setting this object to the value disable has the
        effect of disabling the lan access service for the corresponding entry
        in the h3cUserAttributeTable.

        The default value is disable.
        "                      �"
        SSH service:
        enable
        Setting this object to the value enable has the
        effect of enabling the SSH service for the corresponding entry in the
        h3cUserAttributeTable.

        disable
        Setting this object to the value disable has the
        effect of disabling the SSH service for the corresponding entry in the
        h3cUserAttributeTable.

        The default value is disable.
        "                      �"
        Telnet service:
        enable
        Setting this object to the value enable has the
        effect of enabling the TELNET service for the corresponding entry in the
        h3cUserAttributeTable.

        disable
        Setting this object to the value disable has the
        effect of disabling the TELNET service for the corresponding entry in the
        h3cUserAttributeTable.

        The default value is disable.
        "                      �"
        Terminal service:
        enable
        Setting this object to the value enable has the
        effect of enabling the terminal service for the corresponding entry
        in the h3cUserAttributeTable.

        disable
        Setting this object to the value disable has the
        effect of disabling the terminal service for the corresponding entry
        in the h3cUserAttributeTable.

        The default value is disable.
        "                       �"
        Expired date of user.
        The default value is 0-0-0,0:0:0.0, and means it doesn't expire for
        ever.
        "                       �"
        The user group that user belongs to.
        Any user must belong to a user group.
        The default group is the 'system' group.
        The maximum length of the group name is 80.
        "                      �"
        Portal service:
        enable
        Setting this object to the value enable has the
        effect of enabling the portal service for the corresponding entry
        in the h3cUserAttributeTable.

        disable
        Setting this object to the value disable has the
        effect of disabling the portal service for the corresponding entry
        in the h3cUserAttributeTable.

        The default value is disable.
        "                       M"
        This object contains the maximum number of local users.
        "                       M"
        This object contains the current number of local users.
        "                      �"
        This object contains an appropriate value to
        be used for h3cUserIndex when creating entries in the
        h3cUserInfoTable. The value 0 indicates that no unassigned
        entries are available. To obtain the
        h3cUserIndex value for a new
        entry, the manager issues a management
        protocol retrieval operation to obtain the
        current value of this object.  After each
        retrieval, the agent should modify the value
        to the next unassigned index.
        After a manager retrieves a value the agent will
        determine through its local policy when this index
        value will be made available for reuse.
        "                           3"
        User group information table.
        "                       9"
        The entry of h3cUserGroupInfoTable.
        "                       ."
        The index of user group.
        "                       p"
        The status of this conceptual row.  Only support createAndGo, destroy
        and active.
        "                              