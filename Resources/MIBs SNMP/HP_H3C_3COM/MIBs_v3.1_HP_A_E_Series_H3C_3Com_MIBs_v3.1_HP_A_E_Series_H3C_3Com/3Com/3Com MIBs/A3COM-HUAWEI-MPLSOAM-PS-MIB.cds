t-- ==================================================================
-- Copyright (C) 2005 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description:  H3C MPLSOAM PS(protection switching) MIB
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2007-03-31 Created by LiXufu ID: 05023
-- ==================================================================
                                         M"This MIB contains objects to configure mpls
        protect-switch module." �"Platform Team Huawei 3Com Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085"        -- March 31, 2007 at 00:00 GMT
           f"Whether mpls protect-switch trap is globally enabled.
        false: disable;
        true: enable"                           c"This table specifies per-protection-group MPLS PS
        capability and associated information."                       p"An entry in this table is created by an LSR for every
        protection group capable of supporting mpls ps."                       9"This is a unique index for an entry in the mplspsEntry."                       �"This is a unique group id for an entry in the mplspsEntry.
        One protect-switch group is composed of one working static-lsp
        and one protection static-lsp."                       %"The name of the working static-lsp."                       ("The name of the protection static-lsp."                      "Revertive mode is a protection switching mode where revertive
        action (switch back to the working LSP) is taken after the
        working LSP is repaired. And switching does not occur in a
        non-revertive mode.
        1: revertive;
        2: non-revertive;"                      "Wait to Restore timer is only applicable for the revertive mode
        and applies to a working LSP, it prevents reversion back to
        select the working LSP until the Wait to Restore timer has
        expired.
        The default value is 12 minutes. step is 30s."                       �"The time between declaration of signal degrade or signal fail,
        and the initialization of the protection switching algorithm.
        Step is 100ms, maximum is 10s."                      �"The current switch condition of the protection group.
        1: clear, this command clears all of the externally
        initiated switch commands listed below;
        2: lockout of protection, fix the selector position on the
        working LSP, Prevents the selector from switching to the
        protection LSP when it is selecting the working LSP.
        Switches the selector from the protection to the working LSP
        when it is selecting the protection LSP;
        3: forced protection, switches the selector from the working LSP
        to the protection LSP (unless a higher priority switch
        request (i.e., LoP) is in effect);
        4: signal fail, for 1:1, Signal Fail (SF) is declared when the
        source of the protection domain enters the Defect State by
        receiving a BDI packet (from the return LSP or out of band).
        5: manual switch for working-lsp, switches the selector from the
        working LSP to the protection LSP (unless an equal or higher
        priority switch request (i.e., LoP, FS, SF or MS) is in
        effect);
        6: manual switch for protection-lsp, switches the selector from
        the protection LSP to the working LSP (unless an equal or
        higher priority switch request (i.e., LoP, FS, SF or MS) is
        in effect).
        7: WTR-timer, a configurable timer which is used to delay before
        reversion;
        8: HoldOff-timer, the time between declaration of signal degrade
        or signal fail, and the initialization of the protection
        switching algorithm;
        9: Others;
        The pripority of the commands are:
        clear > lockout of protection > force switch > manual switch for working
        lsp = manual switch for protection lsp"                       �"The state of working static-lsp state in one protection group,
        whether it is in defect:
        1: it is out of defect;
        2: it enters defect."                       �"The state of working static-lsp state in one protection group,
        whether it is up or down:
        1: it is in up state;
        2: it is in down state."                       �"The state of protection static-lsp state in one protection group,
        whether it is in detection:
        1: it is out of defect;
        2: it enters defect."                       �"The state of protection static-lsp state in one protection group,
        whether it is up or down:
        1: it is in up state;
        2: it is in down state."                       v"Which tunnel is used to transfer the data stream.
        1: working static-lsp;
        2: protection static-lsp."                      i"This object is responsible for managing the creation,
        deletion and modification of rows, which support active
        status and CreatAndGo, destroy operation.
        To create a new row, h3cMplsPsGroupID, h3cMplsPsWorkLspName,
        h3cMplsPsProtectLspName, h3cMplsPsRevertiveMode, h3cMplsPsWTR
        and h3cMplsPsHoldOff must be specified."                           d"This notification is generated when switching from
        protection-lsp to working-lsp occured."                 c"This notification is generated when switching from woking-lsp
        to protection-lsp occured."                        