�-- ==================================================================
-- Copyright (C) 2005 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description: H3C L2VPN PWE3(Pseudo Wire Emulation Edge-to-Edge) MIB
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2007-03-31 Created by Lixufu ID: 05023
-- ==================================================================
  �"An indication of the L2Vpn's VC encapsulation type:
        Frame Relay DLCI ( Martini Mode ) (1)
        ATM AAL5 SDU VCC transport (2)
        ATM transparent cell transport (3)
        Ethernet Tagged Mode (4)
        Ethernet (5)
        HDLC (6)
        PPP (7)
        SONET/SDH Circuit Emulation Service Over MPLS (CEM) (8)
        ATM n-to-one VCC cell transport (9)
        ATM n-to-one VPC cell transport (10)
        IP Layer2 Transport (11)
        ATM one-to-one VCC Cell Mode (12)
        ATM one-to-one VPC Cell Mode (13)
        ATM AAL5 PDU VCC transport (14)
        Frame-Relay Port mode (15)
        SONET/SDH Circuit Emulation over Packet (CEP) (16)
        Structure-agnostic E1 over Packet (SAE1oP)  (17)
        Structure-agnostic T1 (DS1) over Packet (SAT1oP)  (18)
        Structure-agnostic E3 over Packet (SAE3oP) (19)
        Structure-agnostic T3 (DS3) over Packet (SAT3oP) (20)
        CESoPSN basic mode (21)
        TDMoIP basic mode (22)
        CESoPSN TDM with CAS (23)
        TDMoIP TDM with CAS (24)
        Frame Relay DLCI (25)
        IP-interworking (64)
        unknown (255)
        "                                                     +"This MIB contains objects to manage PWE3." �"Platform Team Huawei 3Com Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085"        -- March 31, 2007 at 00:00 GMT
           X"Whether pwe3 trap is globally enabled.
        false: disable;
        true: enable."                           ["This table is the VC configuration table. Users
        can create or delete a VC by it."                       )"Provides the information of a VC entry."                       X"Index for the conceptual row identifying a PW within
        this PW Emulation table."                       U"Used in the outgoing PW ID field within the 'Virtual
        Circuit FEC Element'."                       2"Indication of the L2Vpn's VC encapsulation type."                       V"This object contain the value of the peer ip address
        of the Martini VLL PW."                      "If not equal zero, the optional Mtu object in the
        signaling protocol will be sent with this value,
        representing the locally supported MTU size over the
        interface (or the virtual interface) associated with the
        PW.
        The default value is 1500."                       _"Indicates the type of the pw:
        1: primary;
        2: backup;
        3: multiPort."                       N"For Martini VLL, the value will be created by system
        automatically."                       P"For Martini VLL, the value will be created by the peer
        automatically."                       T"Index of the interface (or the virtual interface)
        associated with the PW."                       H"Local AC(Attachment Circuit) status:
        1: down;
        2: up."                       U"Indicates the status of the PW in the local node.
        1: down;
        2: up."                      C"This object is responsible for managing the creation,
        deletion and modification of rows, which support active
        status and CreatAndGo, destroy operation.
        To create a new row, h3cPwVcID, h3cPwVcType, h3cPwVcPeerAddr
        h3cPwVcMtu, hwPwVcCfgType and h3cPwVcIfIndex
        must be specified."                          *"This notification is generated when switch from working
        pw to protect pw happens. The first group of
        h3cPwVcID/h3cPwVcTypeh3cPwVcPeerAddr is parameter of the work PW , and
        the second group of h3cPwVcID/h3cPwVcTypeh3cPwVcPeerAddr is parameter
        of the protect PW."                *"This notification is generated when switch from protect
        pw to working pw happens. The first group of
        h3cPwVcID/h3cPwVcTypeh3cPwVcPeerAddr is parameter of the protect PW , and
        the second group of h3cPwVcID/h3cPwVcTypeh3cPwVcPeerAddr is parameter
        of the work PW."                 ="This notification indicates the VC's state changes to down."                 ;"This notification indicates the VC's state changes to up."                 0"This notification indicates the VC is deleted."                        