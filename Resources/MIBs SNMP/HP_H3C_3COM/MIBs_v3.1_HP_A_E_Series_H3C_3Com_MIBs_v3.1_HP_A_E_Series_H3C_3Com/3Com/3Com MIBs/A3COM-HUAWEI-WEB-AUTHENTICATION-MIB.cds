]-- =================================================================
-- Copyright (C) 2008 by H3C TECHNOLOGIES. All rights reserved.
--
-- Description: description of Web Authentication
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2008-6-25, Created by dupengfei
-- =================================================================
                         >"The MIB module is used for web authentication to send traps." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        " "200806250000Z" 0"The initial version of h3cWebAuthenticationMIB"                   :"The Vlan ID associate with the port and the MAC address."                      �"The code indicates the reason for the action of this trap.
         globalNumberMax:
            The global number of connections is up to max.
         configNumberMax:
            The global number of connections is up to configured max value.
         portNumberMax:
            The interface number of connections is up to max.
         invalidUsername:
            The username or password is too long or username is empty.
         authFail:
            Wrong username or password.
         setACLFail:
            Failed to set ACL.
         changeVlanFail:
            Failed to set VLAN.
         other:
            Other reasons.
         onlineOverTime:
            The online time is over the max value.
         noTransferData:
            There was no data flow for the connection.
         cutOperation:
            There was a cut operation.
         portDisabled:
            Web authentication was disabled on interface.
         portDown:
            The interface turned down.
         userLogout:
            The client required to logout.
         vlanChanged:
            The interface VLAN value was changed.
         vlanDelted:
            The interface VLAN was deleted."                       �"The code indicates the system action.
         enabled:
            Web authentication turns enabled.
         disabled:
            Web authentication turns disabled."                        "The MAC address of the client."                               3"It is generated when a client succeeded to logon."                 h"It is generated when a client failed to logon, the h3cWaReasonCode
         shows the failure reason."                 ^"It is generated when a client logout, the h3cWaReasonCode
         shows the logout reason."                 p"It is generated when a system action was occurred, the h3cWaActionCode
         shows the action information."                        