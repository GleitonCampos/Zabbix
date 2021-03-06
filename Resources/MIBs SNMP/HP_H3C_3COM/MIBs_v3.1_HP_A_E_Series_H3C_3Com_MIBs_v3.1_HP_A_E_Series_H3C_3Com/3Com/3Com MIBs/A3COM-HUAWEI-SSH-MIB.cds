�-- =========================================================================
-- Copyright (C) 2007 by  H3C TECHNOLOGIES. All rights reserved.
--
-- Description: Secure Shell(SSH) MIB
-- Reference: draft-ylonen-ssh-protocol-00.txt
-- Version: V1.0
-- History:
--  V1.0 2007-11-19 created by ZhangJun 03132
--       Initial version.
-- =========================================================================
                                         "The initial version." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085" "200711190000Z" +"This MIB is used to configure SSH server."                           )"The protocol version of the SSH server."                      Z"Supporting compatibility with SSH versions 1.x.  It is
        known that there are still devices using the previous
        versions.  During the transition period, it is important to
        be able to work in a way that is compatible with the
        installed SSH clients and servers that use the older version
        of the protocol."                       O"The time interval of regenerating SSH server key.  The unit
        is hour."                       0"The limit times of a specified user can retry."                       �"The SSH server has a timeout for authentication and
        disconnect if the authentication has not been accepted
        within the timeout period.  The unit is second."                       �"The SFTP server has a timeout for idle connection if a user
        has no activities within the timeout period.  The unit is
        minute."                       "Enable SSH server function."                       "Enable SFTP server function."                           !"A table for managing SSH users."                        "SSH users configuration entry."                       "The name of SSH user."                       $"The service type of SSH user uses."                       ."The authentication type of SSH user chooses."                       2"The public key which is used for authentication."                       B"The SFTP user's work directory associates with an existing user."                      �"The row status variable, used in accordance to installation
        and removal conventions for conceptual rows.

        When the `h3cSSHUserRowStatus' is set to active(1), no objects
        in this table can be modified.

        When 'h3cSSHUserRowStatus' is set to notInService(2), every object
        except the 'h3cSSHUserName' object in this table can be modified.

        To create a row in this table, a manager must set this object
        to createAndGo(4).  Until instances of all corresponding columns
        are appropriately configured, the value of the corresponding
        instance of the h3cSSHUserRowStatus column is 'notReady'."                       "A table for SSH sessions."                       $"The SSH session information entry."                        "The identifier of SSH session."                       "The user name of SSH session."                       *"The user IP address type of SSH session."                       %"The user IP address of SSH session."                       t"The client version of SSH session.  It is known that there are still
        devices using the previous versions."                       ""The service type of SSH session."                       �"The encryption algorithm of SSH session.  There are several encryption
        algorithms used in SSH protocol, please refer to RFC4253 Section 6.3."                      �"The status of SSH session.
        init           : This session is in initial status.
        verExchange    : This session is in version exchanging.
        keysExchange   : This session is in keys exchanging.
        authRequest    : This session is in authentication requesting.
        serviceRequest : This session is in service requesting.
        established    : This session has been established.
        disconnected   : This session has been disconnected."                           8"The user name of the attacker who attempted to log in."                       >"The IP address type of the attacker who attempted to log in."                       9"The IP address of the attacker who attempted to log in."                       ."The reason for that a user failed to log in."                               <"The trap is generated when a user fails to authentication."                 U"The trap is generated when a user fails to negotiate SSH
        protocol version."                 9"The trap is generated when a user logs in successfully."                 -"The trap is generated when a user logs off."                        