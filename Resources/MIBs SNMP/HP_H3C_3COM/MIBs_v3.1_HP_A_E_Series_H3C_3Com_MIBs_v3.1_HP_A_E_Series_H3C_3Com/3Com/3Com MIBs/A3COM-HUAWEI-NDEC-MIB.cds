e-- ==================================================================================
-- Copyright (C) 2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: This file describes the huawei mib implementation of ndec
-- Reference:
-- Version: V1.6
-- History:
--  for V1.0
--      Add MODULE-IDENTITY to mib
--  V1.1 2004-9-9 lizhiyong
--      add hipsNDECSAListTable,hikeSATable,hipsIKEPolicyTable,
--      hipsStaticCryptomapTable,hipsTransformNameSetTable,hipsNDECLeaf,
--      modify hipsNDECInfoTable,
--  V1.2 2004-9-14 lizhiyong
--      delete useless comments
--      modify the SYNTAX type of hipsInPac,hipsOutPac,hipsInByte,hipsOutByte
--      and hipsDropPac from Gauge to Counter32.
--      delete the underscore character "_" which is note compliant with ASN.1
--      modify the whole file with SMIv2.
--  V1.3 2004-10-12 updated by gaolong
--      Remove variable value range from table SEQUENCE definition.
--  V1.4 2004-10-21 lizhiyong
--      modify hipsStaticCryptomapMatchAddr range from 1..199 to 1..100000.
--      update the description of hipsNDECBackup node
--  V1.5 2004-11-26 updated by gaolong
--      File description updated
--  V1.6 2007-1-29 updated by liukan
--      Add a new value ealgXNsa in hipsEncAlgorithm type.
-- ===================================================================================
                                         H"This MIB contains objects to manage the NDEC device.
                " �"HUAWEI Technologies Co.,Ltd.
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei.com
                Zip:100085" "200409151052Z" ("The initial version of this MIB module"       -- August 15, 2004  GMT
       ^"The table containing the list of all
        SA entries configured on NDEC by the operator."                       W"Each entry contains the attributes
        associated with a single NDEC'S SA entry."                       1"The peer IP address of this SA entry.
        "                       *"The Protocol of this SA entry.
        "                       %"The SPI of this SA entry.
        "                       3"The encrypt algorithm of this SA entry.
        "                       :"The authentication algorithm of this SA entry.
        "                       2"The local IP address of this SA entry.
        "                       3"The lifetime of this SA entry in bytes.
        "                       5"The lifetime of this SA entry in seconds.
        "                       /"The flag of this SA on NDEC or not.
        "                       ="The type of key used by the IPSec Phase-2 Tunnel.
        "                       y"This object specifies the lifetime in bytes
        of the tunnels generated using this
        policy specification."                       y"This object specifies the lifetime in bytes
        of the tunnels generated using this
        policy specification."                       {"This object specifies the lifetime in seconds
        of the tunnels generated using this
        policy specification."                       {"This object specifies the lifetime in seconds
        of the tunnels generated using this
        policy specification."                       ]"The table containing IKE SA entities
        configured on NDEC by the operator.
        "                       U"Each entry contains the attributes
        associated with a single IKE SA entity."                       &"The identifier of IKE SA connection."                       /"The peer IP address of this IKE SA.
        "                       &"The status of this IKE SA.
        "                       %"The phase of this IKE SA.
        "                       %"The domain of this IKE SA
        "                       %"Clear this IKE SA or not.
        "                       $"List of all ISAKMP policy entries."                       >"Each entry includes the properties of a ISAKMP Policy entry."                       !"ISAKMP Policy entry's priority."                       �"The specified encryption transform. It is used by
        Internet Key Exchange(IKE) tunnels to protect the ISAKMP
        PDUs."                       ~"The specified hash transform. It is used by
        Internet Key Exchange(IKE) tunnels to protect the ISAKMP
        PDUs."                       �"The specified peer authentication method.
        The local entity would authenticate the peer using
        the method specified by this object when this policy
        entity is selected to negotiate with a peer."                      ]"This object is used to specify the Oakley group
        which is used for Diffie Hellman exchange in the
        Main Mode.
        The local entity selects the group specified by
        this object to perform Diffie Hellman exchange with
        the peer when this policy item is chosen to negotiate
        the Main Mode with an IKE peer."                       C"This object indicates the lifetime of the IKE tunnels in seconds."                       {"The table includes the list of the member cryptomaps
        of the cryptomap sets which are set on the specific entity."                       �"Each entry contains  properites of a single static cryptomap entry.
        The members of dynamic cryptomap sets, which may be linked with the
        parent static cryptomap set, are not included in this table."                       z"The name of the cryptomap entry in the
        cryptomap set. This is the first index
        component of this table."                       �"The sequence number of the cryptomap entry in the
        cryptomap set. This is the second index component
        of this table."                       Y"Type of the cryptomap entry. This object may be an ISAKMP
        cryptomap or manual."                       Z"The access list number entered by the operatoir
        while creating this cryptomap. "                       �"The IP address of the current peer. Traffic protected by
        this cryptomap is protected by a tunnel terminating
        at the device whose IP address is the value of this object."                       5"The transform associated with this cryptomap entry."                       m"This object indicates the lifetime of the IPSec SA which is
        created using this IPSec policy entry."                       �"This object identifies the lifesize of the IPSec SAs
        generated using this IPSec policy entry.
        Lifesize means maximum traffic in bytes that may be carried.
        "                       "The value of this object is the local IP address of the
        IPSec SAs generated using this IPSec policy entry.
        "                       h"This object indicates the name of the
        interface which uses this IPSec policy entry.
        "                       f"This object indicates the inbound AH SPI
        IPSec SAs generated using this IPSec policy entry."                       p"This object indicates the inbound ESP SPI
        IPSec SAs generated using this IPSec policy entry.
       "                       p"This object indicates the outbound AH SPI
        IPSec SAs generated using this IPSec policy entry.
       "                       q"This object indicates the outbound ESP SPI
        IPSec SAs generated using this IPSec policy entry.
       "                       �"This object indicates the inbound AH authentication key
        IPSec SAs generated using this IPSec policy entry.
        The AH authentication key is in hex.
       "                       �"This object indicates the inbound ESP authentication key
       IPSec SAs generated using this IPSec policy entry.
       The ESP authentication key is hex.
       "                       �"This object indicates the inbound ESP authentication key
        IPSec SAs generated using this IPSec policy entry.
        The ESP authentication key is hex.
       "                       �"This object indicates the inbound ESP authentication key
        IPSec SAs generated using this IPSec policy entry.
        The key is in string.
       "                       �"This object indicates the inbound ESP authentication key
        IPSec SAs generated using this IPSec policy entry.
        The key is in string.
       "                       �"This object indicates the outbound AH authentication key
        IPSec SAs generated using this IPSec policy entry.
        The key is in hex.
       "                       �"This object indicates the outbound ESP authentication key
        IPSec SAs generated using this IPSec policy entry.
        The key is in hex.
       "                       �"This object indicates the outbound ESP authentication key
        IPSec SAs generated using this IPSec policy entry.
        The key is in hex.
       "                       �"This object indicates the outbound AH authentication key
        IPSec SAs generated using this IPSec policy entry.
        The key is in string.
       "                       �"This object indicates the outbound ESP authentication key
        IPSec SAs generated using this IPSec policy entry.
        The key is in string.
       "                       "Transform set table."                       1"Each entry refers to properties of a transform."                       "Name of the transform entry."                       "Mode of the transform entry."                       "Transform protocol."                       "Algorithm of AH protocol."                       '"Encryption algorithm of ESP protocol."                       +"Authentication algorithm of ESP protocol."                       }"This object indicates the flag of the NDEC is used for
        IPSec SAs generated using this IPSec policy entry.
       "                       "Table of NDEC set."                       $"Properties of each NDEC.
        "                       "Slot number of NDEC ."                       %"Total packets of the NDEC recieved."                       !"Total packets of the NDEC sent."                       "Total bytes of the NDEC sent."                       "Total bytes of the NDEC sent."                       %"Total packets of the NDEC dropped ."                       "State of the NDEC."                       "Hardware version of the NDEC."                       "Software version of the NDEC."                       "CPLD version of the NDEC."                      h"The version of the NDEC's CPLD.
         cardClearStatic(1): clear the statistics of the card
         cardReset(2): rest the card
         cardSynTime(3): synchoronize the clock of the card
         cardSysLogOn(4):turn on the log of the card
         cardSysLogOff(5):turn off the log of the card
         cardSysLogClear(6):clear the log of the card"                       #"Dropped packets in unit interval."                           /"Total connections of the system at this time."                       w"The flag that NDEC using backup. The value 1 represents using backup
        The value 0 represents not using backup"                           5"This trap is generated when the NDEC card is reset."                 <"This trap is generated when the NDEC card's state changes."                 8"This trap is generated when a NDEC card is overloaded."                        