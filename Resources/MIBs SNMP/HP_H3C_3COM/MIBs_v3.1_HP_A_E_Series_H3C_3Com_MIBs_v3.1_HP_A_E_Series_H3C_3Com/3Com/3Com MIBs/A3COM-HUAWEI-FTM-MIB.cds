�-- ============================================================================
-- Copyright (C) 2003 by  HUAWEI-3COM TECHNOLOGIES. All rights reserved.
-- h3c-ftm-man-mib.mib
-- Description: this mib is a mib for fabric topology management
--
-- Reference:  
-- Version:     V2.3
-- History:
-- V1.0 2004/01/13 created by wangjiao
-- V1.1 2004/06/15 modifyied by huxiaolong  
-- V1.2 2004/07/13 modified by huxiaolong add h3cFtmUnitRole node 
-- V1.3 2004/07/16 add h3cFtmUnitRole to H3cFtmUnitEntry SEQUENCE { }
--		   add h3cFtmUnitRole OBJECT
-- V2.0 2004-10-12 updated by gaolong
--      Relocate h3cFtmManMIB MODULE-IDENTITY.
--      Change MAX-ACCESS clause value of h3cFtmIndex to accessible-for-notify
--      because this index is used when sending trap.
--      Relocate h3cFtmManMIBNotification.
--      Add MODULE clause for h3cFtmMIBCompliance.
--      Change value of h3cFtmAuthMode from underscores to hephens.
-- V2.1 2004-11-20 updated by xuhui
--      Add h3cFtmFabricVlanID
-- V2.2 2004-12-22 add h3cFtmFabricType node by zhuchaopeng
-- V2.3 2005-03-31 add h3cFtmNumberMode by yangjianfeng
-- ============================================================================
             �"this mib will maintain Fabric topology management.
				 The mib includes unit-id, unit-name and 
     				 fabric authentication information." "http://www.huawei-3com.com"       "-- January 13, 2004 at 10:55 GMT
           -"A table of informations of XRN-Fabric Unit."                       ;"An entry for configuring unit informations of XRN-Fabric."                       "The unique index of a unit."                      "Identifer of unit in fabric. Its value should be between 1 and the maximum which defines 
				in product specification.
				An exception is described in description of h3cFtmNumberMode. In that case, the value
				of this object remains its original value after set to zero.
				"                       H"Name of unit in XRN-Fabric. It consists of no more than 64 characters."                       n"Role of unit in XRN-Fabric. One unit in a XRN-Fabric acts as master role and others 
				act as slave roles"                      f"Numbering Mode of unit in XRN-Fabric.  If the unit ID is assigned by the auto 
				numbering algorithm, the numbering mode will be automatic numbering; if the 
				unit ID (h3cFtmUnitID) is assigned by the user, the numbering mode will be manual
				numbering; if h3cFtmUnitID is set to be zero, the numbering mode will become 
				automatic numbering."                       $"Authentication mode of XRN-Fabric."                       �"Authentication value of XRN-Fabric Feature. ftm_none mode means no authentication.
				In simple mode, the value is password of a string of 1 to 16 charactors.
				While in md5 mode, the value is key of a string within 16 charactors."                       �"The object is used for get and set the Fabric VlanID.
				Only is the equipment not in the stacking status, the value can be set."                       L"Topology type of Fabric. 
				outofStack means this unit is not in stack."                           T"When unit id changes in fabric, this trap is sent with unit index and its new id ."                 W"When unit name changes in fabric, this trap is sent with unit index and its new name."                         8"The compliance statement for FTM implementing the MIB."                   E"The basic collection of objects for sending trap of FTM Management."                 E"The basic collection of objects for sending trap of FTM Management."                            