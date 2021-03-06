 -- =================================================================
-- Copyright (C) 2008 by Hangzhou H3C Technologies Co., Ltd. All rights reserved.
--
-- Description: The purpose of this MIB is to provide the definition of
--              the DSP(Digital Signal Processing) status.
-- Reference:
-- Version: V1.1
-- History:
-- V1.0 2008-01-16 Initial version, created by Zhu Xinfeng
-- V1.1 2008-07-14 Add h3cVPMStateChange and h3cDSPStateChange by zhuxinfeng
-- =================================================================
         ^"This MIB is to provide the definition of the DSP(Digital Signal
        Processing) status." �"PLAT Team Hangzhou H3C Technologies Co.,Ltd.
        Shang-Di Information Industry Base,
        Hai-Dian District Beijing P.R. China
        http://www.h3c.com
        Zip:100085" "200801161300Z" *"The initial revision of this MIB module."               R"The table contains status parameters of VPM(Voice Process
        Module) card."                        "The entry of VPM status table."                       g"The index for this entry. The sequence of VPM card in the chassis is
        from the top to bottom."                       9"The object corresponds to PhysicalIndex in the chassis."                      0"The object indicates the current state of VPM card being monitored.
        normal(1)  - VPM card in normal condition.
        warning(2) - VPM card has some problem and need attention.
        fatal(3)   - VPM card is not functional.
        offLine(4) - VPM card is in off-line maintenance state."                      "The object indicates the percentage of current DSP resource utilization
        of the VPM card. The utilization is a ratio of number of busy DSP
        resources (for handling calls, transcoding, voice compression,...)
        to the total available DSP resources."                       z"The object indicates the highest percentage of DSP resource utilization
        of the VPM card that have been occured."                       C"The maximum number of channels can be supported in each VPM card."                       W"The table contains status parameters of DSP(Digital Signal
        Processing) card."                        "The entry of DSP status table."                       �"The index for this entry. DSP is fixed on VPM card or chassis card.
        The sequence of DSP in the VPM card or chassis card is from right to left."                       �"The object corresponds to VPMIndex in the chassis.
        If value of this object is non-zero, it is the index of VPM card.(DSP is in
        this VPM card.) If value of this object is 0, then the DSP is fixed in the
        chassis card."                       9"The object corresponds to PhysicalIndex in the chassis."                       :"The value of sysUpTime from the last DSP reset occurred."                       �"The maximum number of channels can be supported in each DSP.
        The value is chosen in an implementation-dependent manner by the
        DSP functionality."                       �"The object indicates the current state of DSP being monitored.
        normal(1)  - DSP in normal condition.
        fatal(3)   - DSP is not functional.
        offLine(4) - DSP is in off-line maintenance state."                       �"The number of channels that are reserved for serving calls.
        The value is incremented when the DSP channel is reserved for call setup
        and is decremented after the DSP channel is free due to call disconnection."                               +"This trap is sent when VPM state changes."                 +"This trap is sent when DSP state changes."                        