�-- =================================================================
-- Copyright (c) 2004-2009 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: This file describes the h3c MIB implementation of l2 isolation
-- Reference:   H3C Enterprise MIB
-- Version:     V1.0 Created by y04444 Initial version
-- History:
-- V1.0 Initial version
-- =================================================================
                                                         *"The MIB module is used for l2 isolation." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "200905060000Z" "Initial version"        -- May 06th, 2009 at 00:00 GMT
           :"A table for enabling/disabling layer-2-isolate for VLAN."                       ;"An entry for enabling/disabling layer-2-isolate for VLAN."                       /"Represents index of VLAN for layer-2-isolate."                       0"Represents the layer-2-isolate status of VLAN."                       F"A table represents the permitting MAC address for the specific VLAN."                       I"Each entry represents the permitting MAC address for the specific VLAN."                       3"Represents the MAC address permitted in the VLAN."                       B"RowStatus. Three actions are used: active, CreateAndGo, destroy."                              