�-- ============================================================================
-- Copyright (C) 2005 by  HUAWEI 3COM TECHNOLOGIES.  All rights reserved.
-- Description:  This mib is used for configuration of ATM-DXI.
--               include :1.ATM-DXI PVC
--                        2.ATM-DXI MAP
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2005/04/14 created by Liguanmin
-- ============================================================================
                         "This MIB contains objects to manage configuration of ATM-DXI.
                         There are no constraints on this MIB." �"Platform Team Huawei 3Com Technologies Co., Ltd.
                         Hai-Dian District Beijing P.R. China
                         http://www.huawei-3com.com
                         Zip:100085" "200504141518Z" *"The initial revision of this MIB module."        -- 14 April, 2005 at 15:18 GMT
           `"This node identifies the ATM-DXI mode being
                        used at the ATM-DXI port."                           ?"This table describes information of PVC in ATM-DXI interface."                       !"The entry of h3cAtmDxiPvcTable."                       ;"The value of VPI.  It can't be 0 if h3cAtmDxiPvcVci is 0."                       ;"The value of VCI.  It can't be 0 if h3cAtmDxiPvcVpi is 0."                       �"The index of PVC.  It is equal with vci and VPI.  And this node value
                        is correlate with h3cAtmDxiPvcVpi and h3cAtmDxiPvcVci. "                       ""Encapsulation type of the frame."                       �"The number of map.  One map can only associate with one PVC, but
                        one PVC can associate with 32 maps.  This node is the map count
                        which one PVC associated with."                       4"Only support 'destroy' 'createAndGo' and 'active'."                       +"This table describes PVC map information."                       !"The entry of h3cAtmDxiMapTable."                       '"The type of ip address: IPv4 or IPv6."                       t"The peer ip address.  This ip address is the peer ip
                        address which the frame will arrive."                       <"The VPI of PVC.  It can't be 0 if h3cAtmDxiMapPvcVci is 0."                       <"The VCI of PVC.  It can't be 0 if h3cAtmDxiMapPvcVpi is 0."                       "Pvc map type."                       �"The interval time of inarp request.  This node describes
                        the interval time inarp request frame sent.  If the h3cAtmDxiMapType
                        isn't inarp, this value is 0.  Its unit is minute."                       ."Whether ATM-DXI map enable broadcast or not."                       5"Only support 'destroy', 'createAndGo' and 'active'."                               "The compliance statement."   i"If ATM-DXI protocol supports other ATM-DXI modes,
                       this group must be supported."                 @"This group includes nodes which are associated with interface."                 6"This group includes the general nodes about ATM-DXI."                            