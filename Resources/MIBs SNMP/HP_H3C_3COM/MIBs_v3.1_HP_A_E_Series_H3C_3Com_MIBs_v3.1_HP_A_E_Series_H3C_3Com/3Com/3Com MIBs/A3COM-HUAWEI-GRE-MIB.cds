�-- =================================================================
-- Copyright (C) 2005 by  HUAWEI 3COM TECHNOLOGIES. All rights reserved.
--
-- Description: Generic Routing Encapsulation configuration MIB
-- Reference: IF-MIB
-- Version: V1.0
-- History:
-- V1.0 created by Sun Ludong
--   2005-06-04 Initial version
-- =================================================================
         j"This MIB contains objects to Manage configuration and 
        Monitor running state for GRE.
        " �"Platform Team Huawei 3Com Technologies Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.huawei-3com.com
        Zip:100085
        " "200506040000Z" 4"The initial revision of this MIB module.
        "       -- June 4, 2005 at 00:00 GMT
           �"A table of Generic Routing Encapsulation(GRE) configuration. 
        It contains configuration of GRE Key, and enable flags of Key
        and Checksum. The detail of Key and Checksum is described in
        RFC2784 and RFC2890.
        "                       $"The entry of h3cGreTable
        "                        "The value of GRE key
        "                       &"The enable flag of GRE key
        "                       /"The enable flag of GRE Checksum
            "                                  