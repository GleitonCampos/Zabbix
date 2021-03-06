w-- =============================================================
-- Copyright (c) 2004-2009 by H3C Technologies. All rights reserved.
--
-- Description:
-- Reference:
-- Version: V1.1
-- History:
--   V1.0 2009-04-30 Initial Version by jinyi
--   V1.1 2009-12-30 added h3cAccessMediaChanged by jinyi
-- =============================================================
   "The status of the UIM."                     ]"The information about the wireless card and the UIM
         (User Identification Module)." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        " "200904301200Z" %"Initial version of this MIB module."                       0"This table contains one row per wireless card."                       /"Information about a particular wireless card."                       "The index for this entry."                       "The model name of this card."                       ,"The name of the manufacturer of this card."                       '"The textual description of this card."                       9"The vendor-specific serial number string for this card."                       B"The card ID of CMII (Ministry of Information Industry of China)."                       <"The vendor-specific hardware version string for this card."                       <"The vendor-specific firmware version string for this card."                       3"The preferred roaming list version for this card."                           &"This table contains one row per UIM."                        "The information about the UIM."                       "The index for this entry."                       "The status about this UIM."                       �"The IMSI (International Mobile Subscriber Identification Number) about
        this UIM.  If this information is unknown to the agent, then this object
        will be returned a zero-length string."                       �"The PIN about this UIM.  If this information is unknown to the agent,
        then this object will be returned a zero-length string."                       �"The voltage about this UIM.  If this information is unknown to the
        agent, then this object will be returned 4294967295."                       �"The provider of mobile network.  If this information is unknown to the
        agent, then this object will be returned a zero-length string."                       W"The intensity of the signal about this UIM.
        A value of '99' means no signal."                       �"The number of remaining times for unlocking PIN or PUK.
        The value is associated the same instance of h3cUIMStatus.  If this
        information is unknown to the agent, then this object will be
        returned 4294967295."                       "The old PIN for this UIM."                           *"The serial number of the current device."                       C"The OUI (Organizational Unique Identifier) of the current device."                       "The current access media."                               `"A h3cWirelessCardInserted notification is generated when a wireless
        card is inserted."                 c"A h3cWirelessCardPulledOut notification is generated when a wireless
        card is pulled out."                 G"A h3cUIMPinInvalid notification is generated when UIM PIN is invalid."                 G"A h3cUIMPinInvalid notification is generated when UIM PIN is changed."                 ["A h3cAccessMediaChanged notification is generated when access media
         is changed."                        