W-- ************************************************************************
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: WAPI extension mib
-- Reference:
-- Version: V1.3
-- History:
--   V1.0 created by zhanglianglun
--     Initial version 2007-5-20
--   V1.1 2009-06-04 modified by caizibin
--        Add h3cwapiCertificateInstalled, h3cwapiConfigTable,
--        h3cwapiUserwithInvalidCertificate,
--        h3cwapiStationReplayAttack, h3cwapiTamperAttack,
--        h3cwapiLowSafeLevelAttack, h3cwapiAddressRedirectionAttack,
--        h3cwapiTrapInfoMacAddr, h3cwapiTrapInfoAPId,
--        h3cwapiTrapInfoRadioId, h3cwapiTrapInfoBSSId
--   V1.2 2010-03-06 modified by xuyonggang
--        Add h3cwapiConfigExtTable
--   V1.3 2010-11-23 modified by xuyonggang
--        Add h3cwapiCfgExtASIPAddressType
--        Add h3cwapiCfgExtASIPAddress
--        Add h3cwapiCfgExtASName
--        Add h3cwapiCfgExtCertDomain
--        Add h3cwapiCfgExtCertInstalled
-- ************************************************************************
                                         �"A3COM-HUAWEI-WAPI-MIB is an extension of MIB in WAPI
            protocol.  This MIB contains objects to
            manage configuration and monitor running state
            for WAPI feature." �"Platform Team H3C Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.h3c.com
            Zip:100085
            "                   �"When this object is set to TRUE, it shall indicate that WAPI
            is enabled.  Otherwise, it shall indicate that WAPI is disabled."                       X"This object is used to set global IP addresses
            type (IPv4 or IPv6) of AS."                       9"This object is used to set the global IP address of AS."                      "This object indicates whether the entity has installed
            certificate.  When the value is TURE, it shall indicate that
            the entity has installed certificate.  Otherwise, it shall
            indicate that the entity hasn't installed certificate."                           Y"This counter increases when the received packet of
            WAI signature is wrong."                       w"This counter increases when the received packet of
            WAI message authentication key checking error occurs."                       Y"This counter increases when the WAI authentication result is
            unsuccessful."                       T"This counter increases when the received packet of WAI are
            discarded."                       S"This counter increases when the packet of WAI overtime are
            detected."                       Z"This counter increases when the WAI packet of WAI format
            error is detected."                       \"This counter increases when the WAI certificate authenticates
            unsuccessfully."                       `"This counter increases when the WAI unicast cipher key
            negotiates unsuccessfully."                       a"This counter increases when the WAI multicast cipher key
            announces unsuccessfully."                           2"The table containing WAPI configuration objects."                       %"An entry in the h3cwapiConfigTable."                       5"This object is used to set IP addresses type of AS."                       2"This object is used to set the IP address of AS."                       k"This object selects a mechanism for WAPI authentication method.  The
            default is certificate."                      B"This object selects a mechanism for WAPI authentication mode.  When
            the value is standard, it shall indicate that the entity acts accord
            with the official definition.  Otherwise, it shall indicate that the
            entity finishs authentication by means of RADIUS.  The default is standard."                       "The ISP domain name."                       "The PKI domain name."                       "The name of AS."                       �"This object indicates whether the BK rekey function is supported.  When the
            value is TURE, it shall indicate that the BK rekey function is supported.
            Otherwise, it shall indicate that the BK rekey function is not supported."                       ;"The table containing WAPI configuration objects for SSID."                       /"An extend entry in the h3cwapiConfigExtTable."                       +"Represents the ID of each service policy."                       5"This object enables or disables the unicast cipher."                       �"This object indicates the length in bits of the unicast cipher
            key.  This should be 256 for SMS4, first 128 bits for encrypting,
            last 128 bits for integrity checking."                       Z"This variable indicates the corresponding AKM suite is enabled
            or disabled."                       �"The selector of an AKM suite.  It consists of an OUI (the first 3
           octets) and a cipher suite identifier (the last octet)."                       5"This object is used to set IP addresses type of AS."                       2"This object is used to set the IP address of AS."                       ,"This object is used to set the name of AS."                       1"This object is used to set the PKI domain name."                      
"This object indicates whether the entity has installed
            certificate.  When the value is TURE, it shall indicate that
            the SSID has installed certificate.  Otherwise, it shall
            indicate that the SSID hasn't installed certificate."                               \"This trap is sent when a user intrudes upon network with invalid
            certificate."                 ["This trap is sent when an attacker records and replays network
            transactions."                 �"This trap is sent when an attacker monitors network traffic and
            maliciously changes data in transit(for example, an attacker may
            modify the contents of a WAI message)."                 �"This trap is sent when a station associates AP(Access Point),
            creates packet of Unicast Key Negotiation Response with wrong
            WIE(WAPI Information Element) of ASUE(Authentication Supplicant
            Entity)."                 �"This trap is sent when an attacker maliciously changes destination
            MAC address of WPI(WLAN Privacy Infrastructure) frame."                     #"The MAC address of the WAPI user."                       "To uniquely identify each AP."                       "Represents each radio."                       /"As MAC Address format, it is to identify BSS."                                  