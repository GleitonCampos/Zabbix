�-- ==========================================================================
-- Copyright (C) 2004 by Hangzhou H3C Technologies Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              the voice interface general configuration.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2007-12-10 Initial version, created by Qu Pingping
-- ==========================================================================
                                     c"This MIB file is to provide the definition of the voice
        interface general configuration." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085" "200712101700Z" '"The initial version of this MIB file."                   r"The table contains configurable parameters for both analog
        voice interface and digital voice interface."                       %"The entry of voice interface table."                       �"This object indicates whether the silence gaps should be
        filled with background noise. It is applicable to FXO, FXS,
        E&M subscriber lines and E1/T1 voice subscriber line."                      "This object expresses the nonlinear processing is enable
        or disable for the voice interface. It is applicable to FXO,
        FXS, E&M subscriber lines and E1/T1 voice subscriber line.
        Currently, only digital voice subscriber lines can be set
        disabled."                       �"This object indicates the amount of gain added to the receiver
        side of the voice interface. Unit is 0.1 db. It is applicable to
        FXO, FXS, E&M subscriber lines and E1/T1 voice subscriber line."                       �"This object indicates the amount of gain added to the send side
        of the voice interface. Unit is 0.1 db. It is applicable to FXO,
        FXS, E&M subscriber lines and E1/T1 voice subscriber line."                       �"This object indicates whether the echo cancellation is enabled.
        It is applicable to FXO, FXS, E&M subscriber lines and E1/T1 voice
        subscriber line."                      Y"This object indicates the delay of the echo cancellation for
        the voice interface. This value couldn't be modified unless
        h3cVoiceIfCfgEchoCancelSwitch is enable. Unit is milliseconds.
        It is applicable to FXO, FXS, E&M subscriber lines and E1/T1
        voice subscriber line. The default value of this object is 32."                       "The interval, in seconds, between two dialing numbers.
        The default value of this object is 10 seconds. It is
        applicable to FXO, FXS, E&M subscriber lines and E1/T1 with
        loop-start or ground-start protocol voice subscriber line."                      "The period of time, in seconds, before dialing the first
        number. The default value of this object is 10 seconds. It
        is applicable to FXO, FXS subscriber lines and E1/T1 with
        loop-start or ground-start protocol voice subscriber line."                       �"This object indicates the E.164 phone number for plar mode.
        It is applicable to FXO, FXS, E&M subscriber lines and E1/T1
        voice subscriber line."                       �"This object uses 2 or 3 letter country code specify voice
        parameters of different countrys. This value will take effect
        on all voice interfaces of all cards on the device."                      