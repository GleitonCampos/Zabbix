�-- =============================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide root node and TC for 802.11 MIB series.
-- Reference:
-- Version: V1.6
-- History:
--   V1.0 created by shiyang (Richard)
--     Initial version 2006-05-10
--   V1.1 2007-04-27 modified by shiyang(Richard)
--        Add "none" and "all" enumerate for H3cDot11AuthenType.
--        Add H3cDot11RFModeType.
--        Add none(1) for H3cDot11AKMType.
--   V1.2 2007-06-21 modified by Vikas K
--        Added H3cDot11AssocFailType.
--        Added H3cDot11AuthorFailType.
--        Added H3cDot11QosAcType.
--   V1.3 2008-8-23 modified by Wang Lu
--        Add H3cDot11RadioElementIndex
--        Add enumerations to H3cDot11RadioType.
--        Remove hyphen in enumerations of H3cDot11QosAcType.
--        Add h3cDot11ElementGroup.
--   V1.4 2008-11-18 modified by Wang Lu
--        Add H3cDot11WorkMode and H3cDot11CirMode
--   V1.5 2009-05-07 modified by Wang Shaojie
--        Modify H3cDot11SSIDEncryptModeType
--   V1.6 2010-01-07 modified by Wang Shaojie
--        Modify H3cDot11SecIEStatusType, H3cDot11CipherType
--        2010-03-18 modified by Wang Lu
--        Modify H3cDot11AKMType and H3cDot11CipherType
-- =============================================================================
  `"CAPWAP defines three kinds MAC mode for fit AP.
        The management packet will be exchanged between AP and AC by
        CAPWAP control tunnel.
        For data packet, the following MAC mode are supported:
        split(1)        - AP will tunnel 802.11 data message
        - to AC by CAPWAP,
        localtunnel(2)  - AP will convert data to 802.3, then tunnel
        - it to AC by CAPWAP,
        localbridge(3)  - AP will directly handle data packet without
        - sending to AC to process,
        fatAP           - For fat AP, it will handle all 802.11 frames
        - by itself."               &"Represents AP identifier value type."              �"Enumeration of the reasons for station association failure.
        including:
        unknownfailure(1)          - unknown failure,
        toomanyassoc(2)            - too many association,
        invalidie(3)               - information element is invalid,
        unsupportedrate(4)         - rate is not supported,
        unsupportedpwrcap(5)       - power capability is not supported
        unsupportedcap(6)          - capability is not supported"               �"Represents encryption mode for the specific ESS:
        The following values are supported:
        cleartxt(1)  - clear txt,
        cipher(2)    - WPA and 802.11i
        wapi(3)      - WAPI."              "802.11e defines four types of access category, including:
        acbk(1)      - for background access category,
        acbe(2)      - for besteffort access category,
        acvi(3)      - for voice access category,
        acvo(4)      - for video access category
        "               @"The explanation string is for the event notification of dot11."               ="Represents the channel scope which consists of 802.11a/b/g."              0"Represents the key management mode defined by 802.11i.
        The following values are supported:
        none(1)         - No key management mode configured,
        psk(2)          - pre-shared key authentication,
        dot1x(3)        - 802.1x authentication,
        wapi(4)         - WAPI."               8"SSID is a string to identify ESS for wireless network."               �"Represents RF management mode.
        The following values are supported:
        manual(1)  - Configure RF parameter by manual,
        auto(2)    - Automaticall configure."               �"Work mode of device.
    In normal mode, the device will provide WLAN service.
    In monitor mode, the device will monitor the environment.
    In hybrid mode, the device will provide WLAN service while monitoring the
    environment."              O"Enumeration of the reasons for station authorization failure.
        including:
        unknownfailure(1)           - unknown failure,
        invalidie(2)                - information element is invalid,
        rsnieversionunsupported(3)  - rsn information element version
        is not supported,
        wpaieversionunsupported(4)  - wpa information element version
        is not supported,
        groupcipherinvalid(5)       - group cipher is invalid,
        pairwisecipherinvalid(6)    - pairwise cipher is invalid,
        akminvalid(7)               - akm is invalid"               �"Represents AP 802.11 radio type of 802.11a/b/g/n as per
        the standard.
        The following values are supported:
        dot11a(1)  - 802.11a
        dot11b(2)  - 802.11b
        dot11g(4)  - 802.11g
        dot11n(8)  - 802.11n
        "               �"The mode of committed information rate.
    'static' means station will use the configured CIR seperately.
    For example, if the CIR is 1Mbps, every station can enjoy 1Mbps.
    'dynamic' means all stations will share the configured CIR in common."              4"Represents index of radio.  For split architecture, It comprises two parts.
    The lowest 8 bits mean radio ID.  The highest 8 bits are reserved.  The
    highest 8 bits stand for AP ID.  The meaning is shown as follows:
    31             23                15             7             0
    + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +
    |  reserved   |             AP  ID              | radio ID    |
    + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + + +

    For FAT AP, the type represents ifIndex of radio.
    "               �"Represents the current radio preamble type.
        The following values are supported:
        long(1)  - long preambles,
        short(2) - short preambles."               +"Represents the type of service policy ID."              "Represents the frame encryption cipher types for
        frames on IEEE 802.11 radio interfaces.
        The MIB defines TC by referring to the 802.11i protocol.
        The following values are supported:
        none(1)     - clear text or no cipher method is configure,
        wep40(2)    - 40-bit WEP key,
        tkip(4)     - WPA Temporal Key encryption,
        aesccmp(16) - WPA AES CCMP encryption,
        wep104(32)  - 104-bit WEP key,
        wpisms4(64) - WAPI encryption,
        wep128(128) - 128-bit WEP key."              �"Represents the Authentication mode defined by 802.11.
        The following values are supported:
        none(1)         - No authentication mode configured,
        opensystem(2)   - In fact,no real authentication happened,
        sharedkey(3)    - System will use challenge message to
        - authenticate the access user,
        all(4)          - both open system and shared key."               "Represents radio value scope."              a"To enable the WPA Information element in the beacon and probe
        response frames sent by AP.
        The following values are supported:
        none(1) - both wpa and rsn are disabled,
        rsn(2)  - only enable rsn,
        wpa(3)  - only enable wpa,
        all(4)  - both wpa and rsn are enabled,
        wapi(5) - only enable wapi."              "Represents which security scheme option is available for
        CAPWAP tunnel.
        The following values are supported:
        cleartxt(1)  - No encryption protection,
        dtls(2)      - Encrypted by DTLS,
        ipsec(3)     - Encrypted by IPSEC."               1"Represents the Tx power level scope for 802.11."                    �"This MIB defines the root node and TC for 802.11 features.
        By this way, the MIB series for 802.11 will be easily maintained.

        GLOSSARY

        IEEE 802.11
        Standard to encourage interoperability among
        wireless networking equipment.

        IEEE 802.11a
        This is a high speed physical layer extension to
        the 802.11 standard on the 5 GHz band.

        IEEE 802.11b
        High-rate wireless LAN standard for wireless
        data transfer at up to 11 Mbps.

        IEEE 802.11g
        Higher Speed Physical Layer (PHY) Extension to
        IEEE 802.11b, will boost wireless LAN speed to 54
        Mbps by using OFDM (orthogonal frequency division
        multiplexing). The IEEE 802.11g specification is
        backward compatible with the widely deployed IEEE
        802.11b standard.
        When configure radio with as bg mode, it means that
        radio will be compatible to 802.11b and 802.11g.
        When configure radio with as g mode, it means that
        radio will be only compatible to 802.11g.

        IEEE 802.11i
        As 802.11 has lot of deficiency in wireless security
        domain, especially for enterprise custom, IEEE defined
        a new standard 802.11i to extend security feature of
        802.11 standard.

        AKM
        The authentication and key management method defined by
        802.11i, and which includes 802.1x and pre-shared key." �"Platform Team Hangzhou H3C Tech. Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085
        " "201001072000Z" "200905072000Z" "200706212000Z" "200704272000Z" "200605101900Z" *"Modified for CMCC of GuangDong province." *"Modified for CMCC of GuangDong province." R"Modified for CMCC(China Mobile Communication Corporation)
        requirements." "Modified to add new TC." *"The initial revision of this MIB module."       -- Jan 7, 2009 at 20:00 GMT
               b"This table is used to represent fat AP and AP template on AC
        as one kind of AP element."                       6"Each entry contains information for each AP element."                       1"This object represents the index of AP element."                       9"This object represents the template name of AP element."                       5"This object represents the serial ID of AP element."                       <"This object represents the alias of AP element model name."                       E"This table is used to represent the radio element of fat AP and AC."                       9"Each entry contains information for each radio element."                       9"This object represents the number of the radio element."                       ?"This object represents the radio policy of the radio element."                      "This object represents the index of the radio element.
        On AC, the higher 24 bits stand for the AP index,
        and the last 8 bits stand for the radio index.
        On fat AP, the index stands for the interface index of radio
        interface."                              