%--===========================================================
-- Copyright (C) 2004-2010 by H3C Technologies. All rights reserved.
--
-- Description:  Transceiver MIB
-- Reference:  IF-MIB
-- Version:  V1.2
-- History:
-- V1.0 created by liuhongxu and zoudian.
--   Initial version 2006-01-10
-- V1.1 2006-06-08 Updated by chenzhaojie
--   Change description of h3cTransceiverWaveLength
-- V1.2 2009-12-29 Updated by jinyi
--   Add the objects of h3cTransceiverDiagnostic, h3cTransceiverCurTXPower,
--   h3cTransceiverMaxTXPower, h3cTransceiverMinTXPower, h3cTransceiverCurRXPower,
--   h3cTransceiverMaxRXPower, h3cTransceiverMinRXPower, h3cTransceiverTemperature,
--   h3cTransceiverVoltage, h3cTransceiverBiasCurrent
--=================================================================
                         n"The objects in this MIB module are used to display the
            information of transceiver on interface." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.h3c.com
            Zip:100085
            " "200912291650Z" *"The initial revision of this MIB module."                   >"This table show the information of transceiver on interface."                       +"The entry of the h3cTransceiverInfoTable."                       :"Hardware type of the interface, such as SM(single mode)."                       ."Type of the interface, such as SFP/XFP/GBIC."                       6"Wave length of the interface, measured in nanometer."                       "Vendor name of the interface."                       !"Serial number of the interface."                       �"The diameter of the fiber, measured in micron.
            fiber9 - 9 micron multi-mode fiber
            fiber50 - 50 micron multi-mode fiber
            fiber625 - 62.5 micron multi-mode fiber
            copper - copper cable."                       Z"The maximal distance which the interface could transmit,
            measured in meter."                       9"Indicating the digital diagnostic monitoring function ."                       ["Indicating the current transmitted power .
            The unit is in hundredths of dBM."                       ["Indicating the maximal transmitted power .
            The unit is in hundredths of dBM."                       ["Indicating the minimal transmitted power .
            The unit is in hundredths of dBM."                       X"Indicating the current received power .
            The unit is in hundredths of dBM."                       X"Indicating the maximal received power .
            The unit is in hundredths of dBM."                       X"Indicating the minimal received power .
            The unit is in hundredths of dBM."                       I"Indicating the current temperature.
             The unit is celsius. "                       N"Indicating the current voltage .
            The unit is in hundredths of V"                       ]"Indicating the current bias electric current .
            The unit is in hundredths of mA"                                  