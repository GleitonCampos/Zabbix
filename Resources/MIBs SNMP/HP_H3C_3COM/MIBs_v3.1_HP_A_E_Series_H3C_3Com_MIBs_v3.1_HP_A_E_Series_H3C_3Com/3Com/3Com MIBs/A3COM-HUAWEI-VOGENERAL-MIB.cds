�-- Copyright (C) 2004 by Huawei 3Com Technologies. All rights reserved.
--
-- Description: The purpose of this MIB file is to provide the definition of
--              voice general configuration.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2005-03-22 Initial version, created by Yang Youku
-- V1.1 2006-02-27 Revised enumerative name of h3cVoGeneralPeerSelectOrderRule
--      by Zhou Xinzhong.
-- ==========================================================================
                                 ^"This MIB is to provide the definition of voice voice
                general configuration." �"PLAT Team Huawei 3Com Technologies co.,Ltd.
                Shang-Di Information Industry Base,
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085" "200503150000Z" '"The initial version of this MIB file."                   8"This object indicates the length of the Jitter buffer."                       6"This object indicates the policy of number matching."                       ?"This object indicates whether the data statistics is enabled."                       y"This object indicates the global character, which is used to
                notify gateway that dialing is completed."                       p"This object indicates whether to support the FAST START mode
                which the caller side initiates."                       W"This object indicates whether the called tunnel function
                is enabled."                       \"This object indicates whether special service number
                function is enabled."                       �"This object indicates the maximum amount of the entities which
                the system will scan when a call has been initiated."                      L"This object indicates the rule order applied in voice
                entity selection.
                epr(1)  --- explicit match, priority, random
                epl(2)  --- explicit match, priority, longest no use
                elp(3)  --- explicit match, longest no use, priority
                elr(4)  --- explicit match, longest no use, random
                per(5)  --- priority, explicit match, random
                pel(6)  --- priority, explicit match, longest no use
                ple(7)  --- priority, longest no use, explicit match
                plr(8)  --- priority, longest no use, random
                lep(9)  --- longest no use, explicit match, priority
                ler(10) --- longest no use, explicit match, random
                lpe(11) --- longest no use, priority, explicit match
                lpr(12) --- longest no use, priority, random
                er(13)  --- explicit match, random
                pr(14)  --- priority, random
                lr(15)  --- longest no use, random
                explicitMatch(16)    --- explicit match
                priority(17)         --- priority
                random(18)           --- random
                longestNoUse(19)     --- longest no use
                ep(20)  --- explicit match, priority
                el(21)  --- explicit match, longest no use
                pe(22)  --- priority, explicit match
                pl(23)  --- priority, longest no use
                le(24)  --- longest no use, explicit match
                lp(25)  --- longest no use, priority
                "                      "This object indicates the priority-ranked type of voice entity.
                                         1ST  2DN  3RD
                noneType(1)          --- NONE TYPE
                voipPotsVofr(2)      --- VOIP POTS VOFR
                voipVofrPots(3)      --- VOIP VOFR POTS
                potsVoipVofr(4)      --- POTS VOIP VOFR
                potsVofrVoip(5)      --- POTS VOFR VOIP
                vofrPotsVoip(6)      --- VOFR POTS VOIP
                vofrVoipPots(7)      --- VOFR VOIP POTS
                "                       Y"This object indicates DSCP(Different Service Code Point)
                signal value."                       X"This object indicates DSCP(Different Service Code Point)
                media value."                           0"The table contains the number substitute rule."                       ""The entry of h3cVoNumSubstTable."                       0"The index of the number substitute rule table."                       2"This object indicates the first rule to be used."                      "This object indicates the dot wildcard match rule.
                endOnly   - only end of E.164 number (input format)
                leftRight - match form left to right (input format)
                rightLeft - match form right to left (input format)
                "                       W"This object is used to create, delete or modify a row in
                this table."                       <"The table contains the number-substitute rule information."                       /"The entry of a single number substitute rule."                       ("The index of a number-substitute rule."                       3"This object specifies the match format for input."                       *"This object specifies the output format."                       S"This object is used to create, delete or modify a row in
            this table."                       j"The table contains the maximum number of the calls which
            can be established simultaneously."                       ""The entry of the max call table."                       <"The index uniquely identifies a single maximum call value."                       4"This object specifies a single maximum call value."                       �"This object is used to create, delete or modify a row in
            this table.
            Note: when create a new row, h3cVoMaxCallValue must be configured."                       ["This table contains the rules of caller number substitute for
            incoming call."                       +"The entry of h3cVoInCallingNumSubstTable."                       ."The index of incoming call substitute table."                       S"This object is used to create, delete or modify a row in
            this table."                       ["This table contains the rules of called number substitute for
            incoming call."                       *"The entry of h3cVoInCalledNumSubstTable."                       -"The index of incomed call substitute table."                       S"This object is used to create, delete or modify a row in
            this table."                       ["This table contains the rules of caller number substitute for
            outgoing call."                       ,"The entry of h3cVoOutCallingNumSubstTable."                       1"The index of outgoing calling substitute table."                       S"This object is used to create, delete or modify a row in
            this table."                       ["This table contains the rules of called number substitute for
            outgoing call."                       +"The entry of h3cVoOutCalledNumSubstTable."                       0"The index of outgoing called substitute table."                       W"This object is used to create, delete or modify a row in
                this table."                      