�-- =================================================================
-- Copyright (C) 2008 by Hangzhou H3C TECHNOLOGIES. All rights reserved.
--
-- Description: This MIB is to provide the definition of
--              Abnormal Flow Clean system.
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 2008-07-23, Created by luohaijun
-- =================================================================
         F"This MIB is to provide the definition of Abnormal Flow Clean system." �"PLAT Team Hangzhou H3C Technologies Co.,Ltd.
        Shang-Di Information Industry Base,
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085" "200807230000Z" )"The Initial Version of this MIB module."                   j"This shows the victim of a DDos attack.  The IP Address is in the list
        of protected IP address."                       9"This shows the attack type which the victim is sufferd."                       ;"This shows the policy name which detects the DDos Attack."                       5"This shows the policy threshold in the DDos Attack."                       3"This shows the rate of policy in the DDos Attack."                              q"This trap is sent when a DDos attack on specific IP is detected.
         The IP address of the victim is the first object.
         The exact type of the attack is the second object.
         The policy name which detects the attack is the third object.
         The threshold of the attack is the 4th object.
         The speed of the attack is the 5th object."                 f"This trap is sent when a DDos Attack end.  The IP address of the
        victim is the very object."                        