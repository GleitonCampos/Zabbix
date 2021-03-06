�-- ==========================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              the general analog voice interface configuration. 
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2005-03-22 Initial version, created by Yang Youku
-- ==========================================================================
                 q"The MIB file is to provide the definition of the
                general analog voice interface configuration." "PLAT Team Huawei 3Com Technologies co.,Ltd.                                
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085" "200503150000Z" '"The initial version of this MIB file."                   t"This table contains the information about configurable 
                parameters for an voice analog interface."                       �"The entry of h3cVoAnalogIfCommonCfgTable, which is 
                automatically created when an analog voice module 
                has been found."                       U"The index of a voice analog interface common configuration 
                table."                       ="This object indicates the type of a voice analog interface."                       6"This object indicates the port subscriber line name."                           r"This table contains the information about configurable 
                parameters for an analog fxs interface."                       �"The entry of h3cVoAnalogIfFXSCfgTable, which is automatically   
                created when an analog fxs voice module has been found."                       >"The index of voice analog interface fxs configuration table."                       l"This object indicates whether displays the calling number
                of analog fxs interface or not."                       j"This object indicates whether sends the calling number 
                of analog fxs interface or not."                       \"This object indicates the type of cid message on an analog
                fxs interface."                       6"This object indicates the port subscriber line name."                       Z"This table contains the timer information for an 
                analog fxs interface."                       �"The entry of h3cVoAnalogIfFXSTimerTable, which is automatically 
                created when an analog fxs voice module has been found."                       8"The index of a voice analog interface fxs timer table."                       8"The interval, in seconds, between two dialing numbers."                       B"The period of time, in seconds, before dialing the first number."                       g"This object indicates the maximum duration the ring back
                to persist. Unit is second."                       6"This object indicates the port subscriber line name."                           u"This table contains the information about configurable 
                parameters for analog fxo voice interface."                       �"The entry of h3cVoAnalogIfFXOCfgTable, which is automatically 
                created when an analog fxo interface has been found."                       P"The index of voice analog interface fxo configuration 
                table."                       M"This object indicates the area where this product is
                used."                       j"The maximum length of time, in seconds, of pre-dial 
                delay on the analog fxo interface."                       >"This object indicates the port impedance of a FXO interface."                       p"This object indicates whether enables the cid receiving 
                function on an analog fxo interface."                       K"This object indicates whether sends the calling 
                number."                       ]"This object indicates the type of cid message on an analog
                 fxo interface."                       6"This object indicates the port subscriber line name."                       Z"This table contains the timer information for an 
                analog fxo interface."                       �"The entry of h3cVoAnalogIfFXOTimerTable, which is automatically 
                created when an analog fxo interface has been found."                       6"The index of voice analog interface fxo timer table."                       m"This object indicates duration of DTMF(Dual Tone Multi-Frequency) 
                signal in milliseconds."                       k"This object indicates DTMF(Dual Tone Multi-Frequency) sending 
                interval in milliseconds."                       8"The interval, in seconds, between two dialing numbers."                       B"The period of time, in seconds, before dialing the first number."                       h"This object indicates the maximum duration the ring back 
                to persist. Unit is second."                       6"This object indicates the port subscriber line name."                           q"This table contains the information about configurable 
                parameters for an analog EM interface."                       �"The entry of h3cVoAnalogIfEMCfgTable, which is automatically 
                created when an analog EM voice module has been found."                       ="The index of voice analog interface EM configuration table."                       V"This object indicates the signal modes of an analog 
                EM interfaces."                       O"This object indicates the operation of an analog EM 
                signal."                       O"This object indicates the EM type of the 
                analog interface. "                       W"The maximum seconds, to wait for the ring back on the 
                EM interface."                       q"The maximum length of time, in  seconds, to wait for called 
                number on an analog EM interface."                       6"This object indicates the port subscriber line name."                       Y"This table contains the timer information for an analog 
                EM interface."                       �"The entry of h3cVoAnalogIfEMTimerTable, which is automatically
                created when an analog EM voice module has been found."                       5"The index of voice analog interface EM timer table."                       k"This object indicates DTMF(Dual Tone Multi-Frequency) 
                sending duration in milliseconds."                       k"This object indicates DTMF(Dual Tone Multi-Frequency) 
                sending interval in milliseconds."                       �"This object indicates the maximum time in milliseconds
                between receiving seizure signal and sending wink signal. 
                This object can only take effect when h3cVoAIfEMCfgSignalMode 
                is set to 'winkStart'."                       �"This object indicates the maximum time in milliseconds
                between sending seizure signal and receiving wink signal. 
                This object can only take effect when h3cVoAIfEMCfgSignalMode 
                is set to 'winkStart'."                       �"This object indicates the maximum duration in milliseconds
                to send wink signal. This object can only take effect 
                when h3cVoAIfEMCfgSignalMode is set to 'winkStart'."                       �"This object indicates the maximum duration in milliseconds
                to send called digits. This object can only take effect 
                when h3cVoAIfEMCfgSignalMode is set to 'immediateDial'."                      "This object indicates the maximum duration in milliseconds
                between receiveing seizure signal and sending delay signal. 
                This object can only take effect when 
                h3cVoAIfEMCfgSignalMode is set to 'delayDial'."                       �"This object indicates the maximum duration in milliseconds 
                to send delay signal. This object can only take effect when 
                h3cVoAIfEMCfgSignalMode is set to 'delayDial'."                       6"This object indicates the port subscriber line name."                      