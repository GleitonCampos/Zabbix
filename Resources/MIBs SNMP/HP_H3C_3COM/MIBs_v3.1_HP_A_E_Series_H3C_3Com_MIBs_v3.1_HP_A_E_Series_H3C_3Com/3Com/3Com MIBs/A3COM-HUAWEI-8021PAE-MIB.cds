-- ==================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
-- 
-- Description: HUAWEI Lan Switch 802.1X MIB
-- Reference:
-- Version: V1.3
-- History:
-- 1) 2003-03-27 Fuzhenyu created  
-- 2) v1.1 2004-08-28 chaiyongfu 
--         change node  hwdot1xAuthServerTimeout's DEFVAL { 30 } to DEFVAL { 100 }
--    v1.2 2004-10-12 updated by gaolong
--         Import NOTIFICATION-TYPE
--         Remove chinese characters
--         Fix time format of  hwpaeExtMib.
--    v1.3 2007-10-23 updated by chaiyongfu
--         Add node hwdot1xAuthMethod, hwdot1xpaeportMcastTrigStatus,
--         hwdot1xpaeportHandshakeStatus
-- ==================================================================
                                     ,"this file extends IEEE8021-PAE-MIB(802.1x)" "" "200106290000Z" ""                       �"The value, in seconds, of the quietPeriod constant
                    currently in use by the Authenticator PAE state
                    machine." " 9.4.1, quietPeriod"                     �"The value, in seconds, of the txPeriod constant
                    currently in use by the Authenticator PAE state
                    machine." " 9.4.1, txPeriod"                     �"The value, in seconds, of the suppTimeout constant
                   currently in use by the Backend Authentication state
                   machine." " 9.4.1, suppTimeout"                     �"The value, in seconds, of the serverTimeout constant
                   currently in use by the Backend Authentication state
                   machine." " 9.4.1, serverTimeout"                     t"The value of the maxReq constant currently in use by
                   the Backend Authentication state machine." " 9.4.1, maxReq"                     �"The value, in seconds, of the reAuthPeriod constant
                   currently in use by the Reauthentication Timer state
                   machine." " 9.4.1, reAuthPeriod"                     4"The value defines the 802.1X authenticatin method." ""                         %" table extends dot1xAuthConfigTable" $" 9.4.1 Authenticator Configuration"                     :" The configuration information for an Authenticator PAE."                       L"The administrative enable/disable state for Port Access Control in a port." ""                     P"Port Access Control type , base port access control or base MAC access control" ""                     &"the max num of online user in a port" ""                     '"the num of online user in a port now " ""                      "Clear various Statistics viz. " ""                     e"The administrative enable/disable state for sending
                   muticast EAP_REQ/ID packet." ""                     f"The administrative enable/disable state for sending
                   handshake EAP_REQ/ID packet." ""                         ""                 "."                       "."                       "."                       "."                       "."                      