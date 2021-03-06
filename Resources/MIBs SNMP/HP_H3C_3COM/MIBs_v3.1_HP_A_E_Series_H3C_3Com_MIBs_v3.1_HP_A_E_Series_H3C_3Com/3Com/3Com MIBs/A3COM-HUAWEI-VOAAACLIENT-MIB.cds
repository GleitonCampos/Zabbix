�-- ==========================================================================
-- Copyright (C) 2006 by Huawei-3Com Technologies. All rights reserved.
--
-- Description: The voice AAA client MIB for remote dialing users'
--              Authentication, Authorization and Accounting.
--
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 Initial version
--      Created by XiangZongxin
-- ==========================================================================
                                                 �"This MIB file defines the voice AAA client MIB for remote
            dialing users' Authentication, Authorization and Accounting." �"PLAT Team Huawei-3Com Technologies Co.,Ltd.
            Shang-Di Information Industry Base,
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085" "200603270000Z" '"The initial version of this MIB file."       -- Mar 27, 2006  GMT
               Z"Enable or disable the function of authentication
            for Direct Inward Dialing."                       �"Enable or disable the function of authorization for Direct
            Inward Dialing on condition that the function of authentication
            is enabled."                       V"Enable or disable the function of accounting for
            Direct Inward Dialing."                      �"Specify the sending mode of accounting packets of this gateway.
            startAck: send starting and stopping accounting packets and wait
                for the acknowledge of RADIUS server.
            startNoAck: send starting and stopping accounting packets
                without waiting for the acknowledge of RADIUS server.
            stopOnly: send stopping accounting packets and wait
                for the acknowledge of RADIUS server."                      5"The table contains the information of the AAA access number for
            Two-stage Dialing, which includes the configuration of
            authentication, authorization, accounting, the dialing process,
            the length of card number, the length of password ,
            the redialing times."                       '"The information of the access number."                      �"The access number of the AAA client.
            The access number can be composed of digits, wildcards
            or the letter 'T'.
            If digits, wildcards and the letter 'T'
            are all included in an access number, the wildcards must
            follow digits and appear at the end, and 'T' must be the
            last character and appear only once.
            In addition, an access number can include only wildcards,
            or only one 'T'."                       V"Enable or disable the function of authentication for
            Two-stage Dialing."                       �"Enable or disable the function of authorization
            for Two-stage Dialing on condition that the function
            of authentication is enabled."                       R"Enable or disable the function of accounting for
            Two-stage Dialing."                      �"The dialing process type of this access number.
            callerNumber: caller number dialing process without IVR
                (Interactive Voice Reponse), that is, caller number's
                authentication for Two-stage Dialing process
                without IVR.
            cardNumber: card number dialing process with IVR, that is,
                card number and password's authentication for
                Two-stage Dialing process with IVR.
            callerNumIvr: caller number dialing process with IVR,
                that is, caller number's authentication for
                Two-stage Dialing process with IVR."                       Q"The length of card number only for the cardNumber
            dialing process."                       N"The length of password only for the cardNumber
            dialing process."                       �"The redialing times of inputing card number or
            password or called number for the cardNumber dialing process,
            or the redialing times of inputing called number
            for the callerNumIvr dialing process."                       "The row status of this table."                      