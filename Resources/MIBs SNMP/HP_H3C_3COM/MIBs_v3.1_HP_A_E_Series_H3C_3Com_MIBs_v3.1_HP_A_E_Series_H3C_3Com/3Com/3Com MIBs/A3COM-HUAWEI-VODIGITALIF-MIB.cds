�-- ==========================================================================
-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the the definition 
--              of the general digital voice interface configuration.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2005-03-22 Initial version, created by Yang Youku
-- ==========================================================================
                 r"The MIB file is to provide the definition of the
                general digital voice interface configuration." "PLAT Team Huawei 3Com Technologies co.,Ltd.                                
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085" "200503150000Z" '"The initial version of this MIB file."                   t"This table contains the information about configurable 
                parameters for a digital voice interface."                       �"The entry of h3cVoDigitalIfCommonCfgTable, which is 
                automatically created when a digital voice module has 
                been found."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       *"This object indicates the type of board."                       3"This object indicates the signal type of a group."                      "This object indicates the availability of every single timeslot 
                for voice services. 
                '1' indicates the timeslot is available for voice services.
                '0' indicates the timeslot is not available for voice services."                       6"This object indicates the port subscriber line name."                           w"This table contains the information about configurable 
                parameters for a digital EM voice interface."                       ("The entry of h3cVoDigitalIfEMCfgTable."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       a"The maximum seconds, to wait for two DTMF (Dual Tone 
                Multi-Frequency) number."                       V"The maximum seconds, to wait for the ring back on the
                EM interface."                       @"The maximum seconds, to wait for called number of called side."                       6"This object indicates the port subscriber line name."                       t"This table contains the information about ABCD bits
                 parameters for a digital EM voice interface."                       ,"The entry of h3cVoDigitalIfEMABCDCfgTable."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       Q"This object indicates the ABCD bits of receiving idle 
                signal."                       T"This object indicates the ABCD bits of receiving seizure 
                signal."                       O"This object indicates the ABCD bits of sending idle 
                signal."                       R"This object indicates the ABCD bits of sending seizure 
                signal."                       6"This object indicates the port subscriber line name."                       ^"This table contains the timer parameters for a digital 
                EM voice interface."                       *"The entry of h3cVoDigitalIfEMTimerTable."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       �"This object indicates the maximum time in milliseconds
                between receiving seizure signal and sending wink signal. 
                This object can only take effect when h3cVoDIfCfgSignalType 
                is set to 'emWinkStart'."                       �"This object indicates the maximum time in milliseconds
                between sending seizure signal and receiving wink signal. 
                This object can only take effect when h3cVoDIfCfgSignalType 
                is set to 'emWinkStart'."                       �"This object indicates the maximum duration in milliseconds
                for sending wink signal. This object can only take effect 
                when h3cVoDIfCfgSignalType is set to 'emWinkStart'."                       �"This object indicates the maximum duration in milliseconds
                for sending called digits. This object can only take effect 
                when h3cVoDIfCfgSignalType is set to 'emImmediateStart'."                      "This object indicates the maximum duration in milliseconds
                between receiveing seizure signal and sending delay signal. 
                This object can only take effect when h3cVoDIfCfgSignalType 
                is set to 'emDelayStart'."                       �"This object indicates the maximum duration in milliseconds 
                for sending delay signal. This object can only take effect when 
                h3cVoDIfCfgSignalType is set to 'emDelayStart'."                       >"This object indicates DTMF sending duration in milliseconds."                       >"This object indicates DTMF sending interval in milliseconds."                       6"This object indicates the port subscriber line name."                           y"This table contains information about general configurable 
                parameters for digital r2 voice interface."                       ("The entry of h3cVoDigitalIfR2CfgTable."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       2"This object indicates the value of country mode."                       ;"This object indicates the special character(A,B,C,D,#,*)."                       8"This object indicates the signal of special character."                      h"This object indicates the trunk mode to be selected:
                min            set selected trunk mode to min-mode.
                max            set selected trunk mode to max-mode.
                minpoll        set selected trunk mode to min-poll-mode.  
                maxpoll        set selected trunk mode to max-poll-mode.
                "                       6"This object indicates the port subscriber line name."                       t"This table contains the information about ABCD bits
                 parameters for a digital r2 voice interface."                       ,"The entry of h3cVoDigitalIfR2ABCDCfgTable."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       �"This object indicates whether the ABCD bits should be inverted.
                '0' : disable invertion.
                '1' : enable invertion.
                "                       8"This object indicates the unused ABCD bits to be sent."                       ?"This object indicates the IDLE line signaling to be received."                       ;"This object indicates the IDLE line signaling to be sent."                       B"This object indicates the SEIZURE line signaling to be received."                       >"This object indicates the SEIZURE line signaling to be sent."                       W"This object indicates the SEIZURE_ACK line signaling to be
                received."                       B"This object indicates the SEIZURE_ACK line signaling to be sent."                       A"This object indicates the ANSWER line signaling to be received."                       ="This object indicates the ANSWER line signaling to be sent."                       Y"This object indicates the CLEAR_FORWARD line signaling to be
                received."                       V"This object indicates the CLEAR_FORWARD line signaling to 
                be sent."                       Z"This object indicates the CLEAR_BACKWARD line signaling to
                be received."                       V"This object indicates the CLEAR_BACKWARD line signaling to
                be sent."                       Z"This object indicates the RELEASE_GUARD line signaling 
                to be received."                       U"This object indicates the RELEASE_GUARD line signaling
                to be sent."                       U"This object indicates the BLOCKING line signaling to be 
                received."                       P"This object indicates the BLOCKING line signaling to be
                sent."                       6"This object indicates the port subscriber line name."                       �"This table contains information about MFC(Multi-Frequency  
                Control) configurable parameters for digital r2 voice 
                interface."                       +"The entry of h3cVoDigitalIfR2MfcCfgTable."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       `"This object indicates the value of BILLING CATEGORY during
                the MFC procedure."                       a"This object indicates the value of CALLING CATEGORY during 
                the MFC procedure."                       \"This object indicates the value of CONGESTION during 
                the MFC procedure. "                       _"This object indicates the value of DEMAND REFUSED during 
                the MFC procedure."                       Z"This object indicates the value of DIGIT END during 
                the MFC procedure."                       \"This object indicates the value of NULL NUMBER during 
                the MFC procedure."                       l"This object indicates the value of REQUESTING BILLING 
                category during the MFC procedure."                       l"This object indicates the value of REQUESTING CALLING CATEGORY 
                during the MFC procedure."                       i"This object indicates the value of REQUESTING CURRENT DIGIT 
                during the MFC procedure."                       p"This object indicates the value of REQUESTING FIRST CALLING 
                NUMBER during the MFC procedure."                       g"This object indicates the value of REQUESTING FIRST DIGIT 
                during the MFC procedure."                       n"This object indicates the value of REQUESTING NEXT CALLED 
                NUMBER during the MFC procedure."                       o"This object indicates the value of REQUESTING NEXT CALLING 
                NUMBER during the MFC procedure."                       l"This object indicates the value of REQUESTING LAST FIRST 
                DIGIT during the MFC procedure."                       m"This object indicates the value of REQUESTING LAST SECOND DIIGT 
                during the MFC procedure."                       q"This object indicates the value of REQUESTING LAST LAST THIRD 
                DIGIT during the MFC procedure."                       j"This object indicates the value of REQUESTING SWITCH GROUP B 
                during the MFC procedure."                       _"This object indicates the value of SUSCRIBER IDLE during the 
                MFC procedure."                       5"This object indicates the value of SUBSCRIBER BUSY."                       f"This object indicates the value of CALLING NUMBER OFFSET 
                during the MFC procedure."                       x"This object indicates the value of CALLCREATE IN GROUP A during 
                the MFC procedure.
                "                       o"This object indicates the value of FIRST CALLED NUMBER IN GROUP C 
                during the MFC procedure."                       q"This object indicates the value of CURRENT CALLED NUMBER IN GROUP 
                C during the MFC procedure."                       |"This object indicates the value of REQUEST CALLED NUMBER AND 
                SWITCH TO GROUP A during the MFC procedure."                       _"This object indicates the value of SPECIAL SIGNAL during the 
                MFC procedure."                       b"This object indicates the value of SUBSCRIBER CHARGE during the 
                MFC procedure."                       d"This object indicates the value of SUBSCRIBER ABNORMAL during 
                the MFC procedure."                       ~"This object indicates whether to return the calling category and 
                the call number during the MFC procedure."                       6"This object indicates the port subscriber line name."                       h"This table contains information about time parameters
                for digital r2 voice interface."                       ,"The entry of h3cVoDigitalIfR2TimeCfgTable."                       ;"This object indicates the port of a voice digital module."                       U"This object indicates the group number of a voice digital 
                module."                       i"This object indicates the minimum duration which is the line 
                signal going to persist."                       g"This object indicates the minimum duration which is the ring 
                back going to persist."                       g"This object indicates the minimum duration which is the ring 
                busy going to persist."                       V"This object indicates the value of pulse signal persistence 
                timer."                       2"This object indicates the value of answer timer."                       6"This object indicates the value of clear back timer."                       9"This object indicates the value of clear forward timer."                       3"This object indicates the value of seizure timer."                       4"This object indicates the value of reanswer timer."                       9"This object indicates the value of release guard timer."                       3"This object indicates the value of group B timer."                       ]"This object indicates the value of DTMF(Dual Tone 
                Multi-Frequency) timer."                       6"This object indicates the port subscriber line name."                       n"This table contains information about capability parameters
                for digital r2 voice interface."                       ,"The entry of h3cVoDIfR2CapabilityCfgTable."                       ;"This object indicates the port of a voice digital module."                       C"This object indicates the group number of a voice digital module."                       ?"This object indicates whether the group B process is enabled."                       Z"This object indicates whether the CLEAR_FORWARD_ACK signal is 
                enabled."                       B"This object indicates whether the SEIZURE_ACK signal is enabled."                       a"This object indicates whether the DTMF(Dual Tone Multi-Frequency) 
                is enabled."                       ="This object indicates whether the ANSWER signal is enabled."                       ?"This object indicates whether the REANSWER signal is enabled."                       Z"This object indicates whether the FINAL_CALL_NUMBER signal 
                is enabled."                       ?"This object indicates whether the METERING signal is enabled."                       ;"This object indicates whether to send the ring back tone."                       6"This object indicates whether to send the busy tone."                       6"This object indicates the port subscriber line name."                      