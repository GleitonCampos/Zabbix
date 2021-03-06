S-- ==========================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              the voice interface general configuration.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2005-03-22 Initial version, created by Yang Youku
-- V1.1 2005.10.08  zhoujianming
--      change MAX-ACCESS clause of h3cVoIfCfgStatus from read-only to read-write
-- ==========================================================================
                 k"This MIB file is to provide the definition of the voice
                interface general configuration." �"PLAT Team Huawei 3Com Technologies co.,Ltd.
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085" "200503150000Z" '"The initial version of this MIB file."                   z"The table contains configurable parameters for both analog
                voice interface and digital voice interface."                       %"The entry of voice interface table."                       %"The port number of voice interface."                       b"The group number of voice interface. For an analog interface,
                the value is 255."                       i"This object indicates whether the silence gaps should be
                filled with background noise."                       ~"This object indicates the amount of gain added to the receiver
                side of the voice interface. Unit is 0.1 db."                       z"This object indicates the amount of gain added to the send side
                of the voice interface. Unit is 0.1 db."                       A"This object indicates whether the echo cancellation is enabled."                       �"This object indicates the delay of the echo cancellation for
                the voice interface. This value couldn't be modified unless
                h3cVoIfCfgEchoCancelSwitch is enable. Unit is milliseconds."                       ="This object indicates the E.164 phone number for plar mode."                       :"This object indicates the description of voice interface"                       6"This object indicates the status of voice interface."                       9"This object indicates a calling number substitute rule."                       8"This object indicates a called number substitute rule."                       6"This object indicates the port subscriber line name."                      