�-- =============================================================================
-- Copyright (C) 2009 by H3C Technologies Co., Ltd. All rights reserved.
--
-- Description:
--   The file defines a MIB to provide MESH configuration information.
-- Reference:
-- Version: V1.2
-- History:
--   V1.0 2008-07-08 Initial version, created by ChangHuifeng
--   V1.1 2008-11-07 modified by liyugang
--        Add h3cDot11sMeshLinkStatisTable, h3cDot11sMeshNbrStatusTable
--        to h3cDot11sMeshStatusGroup
--   V1.2 2009-08-01 modified by Wang Shaojie
--        Add h3cDot11sMeshLinkIFName to h3cDot11sMeshLinkStatisTable.
-- =============================================================================
                                                                    r"The file defines a MIB to provide MESH configuration information.

        GLOSSARY

        IEEE 802.11
        Standard to encourage interoperability among
        wireless networking equipment.

        Access point (AP)
        Transmitter/receiver (transceiver) device
        that commonly connects and transports data
        between a wireless network and a wired network.

        Access control (AC)
        To control and manage multi-APs, it will bridge
        wireless and wired network.

        Fat AP
        Applied in the home, SOHO and so on, and it could
        work independently without help from AC.

        Fit AP
        Applied in the enterprise environment, it will work
        under the control and management from AC.

        BSS
        IEEE 802.11 Basic Service Set (Radio Cell).  The
        BSS of an AP comprises of the stations directly
        associating with the AP.

        Radio
        The chip set to receive and send wireless signal.

        Mesh
        A network consisting of two or more mesh points
        which communicate with each other via mesh services.

        Mesh Point (MP)
        An IEEE 802.11 entity that contains an IEEE 802.11-conformant
        medium access control (MAC) and physical layer (PHY) interface
        to the wireless medium (WM) that supports mesh services.

        Mesh Access Point (MAP)
        A mesh point that is collocated with one or more access points.

        Mesh Portal Point (MPP)
        A mesh point that is collocated with one or more portals.

        Mesh Link
        A link between two MPs." �"Platform Team Hangzhou H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085" "200908011000Z" "200811071000Z" "200807081800Z" "Add new nodes." ,"Modified to add new nodes and a new table." *"The initial revision of this MIB module."       -- Nov 07, 2008 at 10:00 GMT
               �"This object represents the mesh key distributor identifier (MKD-ID).
        If the MKD-ID is not configured, the value is '00:00:00:00:00:00'."                      �"This table is used to configure mesh profile.
        A mesh profile is created and mapped to a MP so that
        it can provide mesh services to other MPs which have the same
        mesh ID.
        When the mesh profile is enabled, all of the object in this table
        can not be modified except h3cDot11sMeshPflEnable.
        The mesh profile can not be deleted when it is bound with the radio."                       4"Each entry contains information of a mesh profile."                       7"This object represents the index of the mesh profile."                       �"This object represents the mesh ID of the mesh profile.
        The string length of this object is zero when the mesh ID is not
        configured.  If the mesh ID is not configured, h3cDot11sMeshPflEnable
        can not be set to 'true'."                      "This object represents the specified mesh interface number
        binding to the mesh profile.
        If the value is set to -1, the binding will be removed.
        If the mesh interface is not specified, the value of
        h3cDot11sMeshPflEnable can not be set to 'true'."                       ;"This object represents the mesh link keep-alive interval."                       0"This object represents the link backhaul rate."                       �"This object indicates whether the mesh key distributor (MKD)
        service for the mesh profile is enabled.
        'true': The MKD service for the mesh profile is enabled.
        'false': The MKD service for the mesh profile is disabled."                       �"This object indicates whether the mesh profile is enabled.
        'true': The mesh profile is enabled.
        'false': The mesh profile is disabled."                       !"The status of this table entry."                      I"This table is used to configure MP policy.
        There is 'default_mp_plcy' on system by default and its index is 1.
        The 'default_mp_plcy' can not be deleted or modified.
        The MP policy can not be deleted when it is applied to a radio.
        It can not be modified when it is applied to an enabled radio."                       1"Each entry contains information of a MP policy."                       -"This object represents the MP policy index."                       �"This object represents the MP policy name.
        MP policy can not be created with name 'a', 'al', 'all' or
        'default_mp_plcy'.
        Modification is not supported."                       �"This object indicates whether the link initiation for
        the MP policy is enabled.
        'true': The link initiation for the MP policy is enabled.
        'false': The link initiation for the MP policy is disabled."                       �"This object indicates whether the mesh link switch protocol (MLSP)
        is enabled.
        'true': MLSP is enabled.
        'false': MLSP is disabled."                       4"This object represents the probe request interval."                       ]"This object indicates whether the device can play as the role
        of an authenticator."                       Y"This object represents the link-hold
        receive signal strength indicator (RSSI)."                       ,"This object represents the link-hold time."                       0"This object represents the link-switch margin."                       _"This object represents the link saturation
        receive signal strength indicator (RSSI)."                       8"This object represents the rate mode of the mesh link."                       ="This object represents the maximum number of the mesh link."                       !"The status of this table entry."                       �"This table is used to configure MLSP proxy MAC address.
        Only if the specified MP policy is modifiable and the MLSP
        is enabled, the row of this table can be created and deleted.
        The row of this table can not be modified."                       <"Each entry contains information of MLSP proxy MAC address."                       :"This object represents the MLSP proxy MAC address index."                       4"This object represents the MLSP proxy MAC address."                       !"The status of this table entry."                       >"This table is used to configure mesh to the specified radio."                       Q"Each entry contains mesh configure information
        of the specified radio."                        "Represents index of the radio."                       �"This object represents the number of the mesh profile mapped to
        the specified radio.  The value is zero when the radio is not
        binding mesh profile."                      0"This object represents the index of the MP policy mapped to the
        specified radio.  The MP policy is 'default_mp_plcy' when the radio
        is not binding user-defined MP policy.
        The index of 'default_mp_plcy' is 1.
        This object can not be modified when the radio is enabled."                       ;"This table is used to configure mesh to the specified AP."                       N"Each entry contains mesh configure information
        of the specified AP."                       �"This object indicates whether the portal service is enabled.
        'true': The portal service is enabled.
        'false': The portal service is disabled."                           y"This table is used to configure wireless distribution system (WDS).
        The row of this table can not be modified."                       )"Each entry contains information of WDS."                       4"This object represents the peer MAC address index."                       ."This object represents the peer MAC address."                       !"The status of this table entry."                           :"This table is used to represent the status of mesh link."                       6"Each entry contains status information of mesh link."                       >"This object represents the interface index of the mesh link."                       3"This object represents the name of the mesh link."                       5"This object represents the BSS ID of the mesh link."                       ?"This object represents the peer MAC address of the mesh link."                       A"This object represents the time for which the link has been up."                       U"This table is used to represent the statistical information of
         mesh link."                       ;"Each entry contains statistical information of mesh link."                       >"This object represents the interface index of the mesh link."                       1"Represents the neighbor index of the mesh link."                       ="Represents the amount of bytes that the mesh link received."                       ?"Represents the amount of packets that the mesh link received."                       G"Represents the amount of unicast packets that the mesh link received."                       S"Represents the amount of broadcast packets that the mesh link
         received."                       S"Represents the amount of multicast packets that the mesh link
         received."                       @"Represents the amount of packets that the mesh link discarded."                       F"Represents the total amount of bytes that the mesh link transmitted."                       H"Represents the total amount of packets that the mesh link transmitted."                       T"Represents the amount of unicast packets that the mesh link
         transmitted."                       V"Represents the amount of broadcast packets that the mesh link
         transmitted."                       V"Represents the amount of multicast packets that the mesh link
         transmitted."                       V"Represents the amount of discarded packets that the mesh link
         transmitted."                       -"Represents the name of mesh link interface."                       G"This table represents the status information for the neighbors of MP."                       \"Each entry of the table will provide status information for the
         neighbors of MP."                       ("Represents the index for the neighbor."                       *"Represents the radio ID of the neighbor."                       "Represents the local mesh ID."                       )"Represents the mesh ID of the neighbor."                       ("Represents the BSS ID of the neighbor."                       2"Represents the MAC address of the peer neighbor."                       `"Represents the interface index of mesh link that used to connect with
         this neighbor."                       W"Represents the status of mesh link that used to connect with this
         neighbor."                       6"Represents the channel number used by this neighbor."                       Y"Represents the duration of mesh link that used to connect with this
         neighbor."                       U"Represents the RSSI of mesh link that used to connect with this
         neighbor."                       T"Represents the SNR of mesh link that used to connect with this
         neighbor."                      