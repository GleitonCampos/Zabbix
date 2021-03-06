�-- ==================================================================
-- Copyright (C) 2008 by H3C Technologies. All rights reserved.
--
-- Description: Loopback detection MIB
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2008-09-27 Created by LuoXuefang
-- V1.1 2009-03-30 Added h3cLpbkdtTrapPerVlanLoopbacked, 
--                 h3cLpbkdtTrapPerVlanRecovered and
--                 h3cLpbkdtObjects by TongWei.
-- ==================================================================
         �"Loops may cause broadcast storms.  The purpose of loopback detection
         is to detect loops on the device and to protect the network." �"Comware Team H3C Technologies Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085" "200903301741Z" "200809271504Z" "To fix bugs in the MIB file." *"The initial revision of this MIB module."        -- March 30, 2009 at 17:41 GMT
               9"Trap message is generated when the interface is looped."                 U"Trap message is generated when the loops on the interface
         are eliminated."                 E"Trap message is generated when the interface is looped in the VLAN."                 _"Trap message is generated when the loop on the interface
         is eliminated in the VLAN."                     "The ID of VLAN."                              