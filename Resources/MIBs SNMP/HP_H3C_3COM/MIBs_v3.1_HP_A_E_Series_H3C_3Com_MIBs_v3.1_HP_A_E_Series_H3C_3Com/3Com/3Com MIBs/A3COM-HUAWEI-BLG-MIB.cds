�-- ==================================================================
-- Copyright (c) 2004-2009 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: This MIB file is used for management of Balance Group
--              information.
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2009-09-15 Created by xupengfei02152
-- ==================================================================
   j"Cleared: reset the value of the group's counter.
         Nouse: 'nouse' will be returned when getting."                     �"This MIB module defines a set of basic objects for
        configuring switches and routers to set/get balance
        group information." �"Platform Team H3C Technologies Co., Ltd.
        Hai-Dian District Beijing P.R. China
        Http://www.h3c.com
        Zip:100085" "200909151111Z" ""The initial version of this MIB."                   O"This table contains the statistics information
        about balance groups."                       ,"This list contains statistics information."                       !"The index of the balance group."                       _"When retrieved, this object returns the count of
        packets the balance group has sent."                       c"When retrieved, this object returns the count of
        packets the balance group has received."                       ]"When retrieved, this object returns the count of
        bytes the balance group has sent."                       a"When retrieved, this object returns the count of
        bytes the balance group has received."                       h"This object is used to reset the counter of the balance group.
        Read operation is meaningless."                              