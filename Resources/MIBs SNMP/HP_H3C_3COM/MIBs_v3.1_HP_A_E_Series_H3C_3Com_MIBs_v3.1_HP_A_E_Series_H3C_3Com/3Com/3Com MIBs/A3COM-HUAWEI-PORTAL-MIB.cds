�-- =================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: Description Of Portal
-- Reference:
-- Version: V1.3
-- History:
--   V1.0 2008-12-30, Created by d04528
--   V1.1 2009-4-30, Modified by h02978
--        Added node h3cPortalServerPort
--        Added table h3cPortalIfInfoTable, including the following nodes,
--            h3cPortalAuthReqNumber
--            h3cPortalAuthSuccNumber
--            h3cPortalAuthFailNumber
--        Added trap node h3cPortalServerGet
--   V1.2 2010-5-31, Modified by y07111
--        Added table h3cPortalIfServerTable, including the following nodes,
--            h3cPortalIfServerIndex
--            h3cPortalIfServerUrl
--            h3cPortalIfServerRowStatus
--        Added h3cPortalNasId
--   V1.3 2010-11-8, Modified by y07111
--        Added table h3cPortalStatistic,including the following nodes,
--        h3cPortalStatAuthReq
--        h3cPortalStatAckLogout
--        h3cPortalStatNotifyLogout
--        h3cPortalStatChallengeTimeout
--        h3cPortalStatChallengeBusy
--        h3cPortalStatChallengeFail
--        h3cPortalStatAuthTimeout
--        h3cPortalStatAuthFail
--        h3cPortalStatPwdError
--        h3cPortalStatAuthBusy
--        h3cPortalStatAuthDisordered
--        h3cPortalStatAuthUnknownError
-- =================================================================
                         -"The MIB module is used for managing portal." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        "       $-- November 8th, 2010 at 00:00 GMT
          '"Specify the maximum number of online users,
        the value to be set should meet the following two conditions:
        1. Less than or equal to h3cPortalUserNumberUpperLimit.
        2. Greater than or equal to one.

        The default value is equal to h3cPortalUserNumberUpperLimit."                       7"The current number of users connecting to the portal."                       �"It indicates the portal status.
         enabled:
            Portal is enabled on one or more interfaces.
         disabled:
            Portal is not enabled on any interface."                       ,"The upper limit of h3cPortalMaxUserNumber."                       "The nas id of this device."                           l"This table defines the name and URL of portal server.
        It can not be created and destroyed by MIB."                       �"There is a row in this table for each name and URL of portal server.
        It is indexed using the object h3cPortalServerName."                       h"It is the index of the table of h3cPortalServerTable, it shows
        the name of the portal server."                      �"It shows the uniform resource locator to the portal server.
        Users which have not logon to portal will be redirected to the
        portal server according to h3cPortalServerUrl.

        The value is consisted of protocol, IP address and relative path.
        For example: HTTP://10.1.1.1/portal

        It is not configurable when the portal server has been enabled."                       �"It shows the UDP port of the portal server.

        The port will be used when client sends packets to portal server.
        Default value is 50100.

        It is not configurable when the portal server has been enabled."                       @"This table describes the portal information on some interface."                       �"There is a row in this table for a interface on which
        portal has been enabled.
        It is indexed using the object ifIndex."                       p"It shows the number of authentication request messages
        which are sent by portal module to AAA module."                       y"It shows the number of authentication success response messages
        which are sent by AAA module to portal module."                       y"It shows the number of authentication failure response messages
        which are sent by AAA module to portal module."                       @"This table describes the portal information on some interface."                       �"There is a row in this table for a interface on which
        portal has been enabled.
        It is indexed using the object ifIndex."                       g"It is the index of the table of h3cIfPtServerTable, it shows
        the index of the portal server."                      �"It shows the uniform resource locator to the portal server.
        Users which have not logon to portal will be redirected to the
        portal server according to h3cPortalServerIfUrl.
        The value is consisted of protocol, IP address and relative path.
        For example: HTTP://10.1.1.1/portal
        It is not configurable when the portal server has been enabled."                      F"This object is responsible for managing the creation, deletion and
        modification of rows, which support active status and CreateAndGo,
        Destroy operation.  To create a new row, portal server must be specified.
        To destroy an existent row, the portal server MUST NOT be referred by
        interface."                               �"This trap is generated when the device finds that the portal server
        is unreachable, the portal server's name is h3cPortalServerName,
        and the portal server has been enabled."                 �"This trap is generated when the device finds that the state of portal
        server changes from unreachable state to reachable,
        the portal server's name is h3cPortalServerName,
        and the portal server has been enabled."                     ^"It shows the total number of portal authentication requests from the
        portal server."                       @"It shows the number of logout requests from the portal server."                       @"It shows the number of logout requests from the access device."                       T"It shows the number of challenge from the portal server without
        response."                       ^"It shows the number of device-busy responses for challenges from
        the portal server."                       Z"It shows the number of challenges from the portal server with
        failure response."                       c"It shows the number of authentication requests from the portal
        server without responses."                       h"It shows the number of authentication requests from the portal
        server with failure responses."                       )"It shows the number of password errors."                       j"It shows the number of device-busy responses to authentication
        requests from the portal server."                       ["It shows the number of disordered authentication packets from
        the portal server."                       ("It shows the number of unknown errors."                                  