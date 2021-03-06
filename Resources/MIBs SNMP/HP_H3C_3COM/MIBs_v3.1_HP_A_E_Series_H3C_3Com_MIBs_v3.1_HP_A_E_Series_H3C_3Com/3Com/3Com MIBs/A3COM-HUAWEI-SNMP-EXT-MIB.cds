�-- ==========================================================================
-- Copyright (c) 2004-2010 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the object definition
--              of the SNMP (Simple Network Management Protocol) extended
--              information.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2009-04-07  Initial version, created by Lisong
-- V1.1 2010-03-12  Added h3cSnmpExtReadCommunitySingle and
--                  h3cSnmpExtWriteCommunitySingle by SongHao
-- ==========================================================================
         _"This MIB file is to provide the object definition of the SNMP extended
         information." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip: 100085" "200904071700Z" '"The initial version of this MIB file."                   ""The channel number used by SNMP."                       "The first read community."                       "The first write community."                           U"Modify the extended properties of SNMP community or
                         user."                       '"The entry of h3cSnmpExtCommunityTable"                       �"The Security Model of the specified community or user.
                         This object may not take the 'any' (0) value."                       7"The Security Name of the specified community or user."                       "The specified community name."                       m"The specified ACL (Access Control List) number used by
                         the community or the user."                                  