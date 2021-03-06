�-- =================================================================
-- Copyright (c) 2004-2009 Hangzhou H3C Tech. Co., Ltd. All rights reserved.
--
-- Description: PPPoE server MIB
-- Reference:
-- Version:     V1.1
-- History:
-- V1.0 Initial version by y04444
-- V1.1 2009-09-07 Modify by yuhaibo
--      Add PPPoE server trap
-- =================================================================
         *"The MIB module is used for PPPoE server." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         http://www.h3c.com
         Zip: 100085" "200905060000Z" "Initial version"        -- May 06th, 2009 at 00:00 GMT
           1"The maximum sessions supported by PPPoE server."                       5"The number of current sessions on the PPPoE server."                       ("The number of authentication requests."                       ("The number of authentication succeses."                       '"The number of authentication failure."                       *"The threshold of abnormal offline count."                       ,"The threshold of abnormal offline percent."                       *"The threshold of normal offline percent."                               s"This trap is generated when the PPPoE server abnormal
            offline counts over threshold in five minutes."                 t"This trap is generated when the PPPoE server abnormal
            offline percent over threshold in five minutes."                 s"This trap is generated when the PPPoE server normal
            offline percent under threshold in five minutes."                        