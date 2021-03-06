[-- ==================================================================
-- Copyright (C) 2005 by HUAWEI-3COM TECHNOLOGIES. All rights reserved.
--
-- Description:  H3C MPLSOAM MIB
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2007-03-31 Created by Lixufu ID: 05023
-- ==================================================================
  �"An indication of the OAM's frequent type( ITU-T: Y.1711(0402) ):
        For CV: the frequency is static. The value is 1/s.
        For FFD: the frequency is set by user. The value
        can be 10ms, 20ms, 50ms, 100ms, 200ms, 500ms.
        Any other frequency is wrong.
        1: 10ms;
        2: 20ms;
        3: 50ms;
        4: 100ms;
        5: 200ms;
        6: 500ms;
        7: 1000ms(only for cv)."              ="An indication of the OAM's defect type:
        1: dServer, server layer defect;
        2: dPeerMe, peer network maintenance entity defect;
        3: dLOCV, Loss of Connectivity Verification defect;
        4: dTTSIMismatch, Trail Termination Source Identifier Mismatch defect;
        5: dTTSIMismerge, Trail Termination Source Identifier Mismerge defect;
        6: dExcess, receiving excess rate of CV/FFD;
        7: dUnknown, unknown defect in the MPLS network..
        8: rlsn down;
        9: dLspDown;
        10: MPLS OAM ME;
        11: no defect."                                                    "This MIB contains objects to configure OAM module.
        The Operation, Administration and Maintenance (OAM)
        is an effective means for decreasing the cost of network maintenance.
        The MPLS OAM is used to administrate and maintain MPLS." �"Platform Team Huawei 3Com Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.huawei-3com.com
         Zip:100085"        -- March 31, 2007 at 00:00 GMT
           ~"Whether OAM is globally capable.
        false: incapable;
        true: capable;
        The default value is incapable."                       ~"Whether OAM trap is globally enabled.
        false: disable;
        true: enable;
        The default value is disable."                           �"This table specifies per-LSP MPLS OAM ingress capability and
        associated information, such as IgrLspName and IgrDetType."                       o"An entry in this table is created by an LSR for every LSP
        capable of supporting MPLS OAM at ingress."                       D"This is an unique index for an OAM ingress entry in the OAM table."                       I"The name of an LSP.
        It means the LSP name of the detected LSP."                      D"There are two types of OAM packets, CV and FFD.
        The CV flow is generated at the source LSR of the LSP with
        a nominal frequency of 1/s and terminated at the sink LSR of the LSP.
        FFD provides failure detection option for an LSP independent
        of the CV based availability model and is not tied to the
        CV insertion rate. Insertion rates at 1/s or faster may
        also be used.
        The CV/FFD packet contains a network-unique identifier (TTSI)
        so that all types of defects can be detected.
        1: CV;
        2: FFD."                       ("Indication of the OAM's frequent type."                      �"When an LSP is found to be in defect, the sink LSR of the LSP
        should send BDI to inform the source LSR of the LSP, the BDI is
        transferred through the reverse LSP.
        The type of reverse LSP can be private or shared.
        If private, then the reverse LSP can be used only by the oam ingress;
        If shared, the reverse LSP which is shared between many forward
        LSPs, whose source LSRs are the same and sink LSRs are the same.
        1: private;
        2: share."                       3"The object indicates the name of the reverse LSP."                       L"For ingress, the object indicates the lsp ID of
        the detected LSP."                      h"Whether one LSP is OAM enable.
        If disable, LSP is not monitored;
        If enable, CV/FFD is generated at the source LSR of the LSP and
        checked at the sink LSR of the LSP, and user can set
        other configuration.
        false: The OAM function is disabled on the ingress;
        true: The OAM function is enabled on the ingress."                       &"Indication of the OAM's defect type."                      |"This object is responsible for managing the creation,
        deletion and modification of rows, which support active
        status and CreatAndGo, destroy operation.
        To create a new row, h3cMplsOamIgrLspName, h3cMplsOamIgrDetectType,
        h3cMplsOamIgrDetectFreq, h3cMplsOamIgrRevType, h3cMplsOamIgrRevLspName,
        and h3cMplsOamIgrLspId must be specified."                       |"This table specifies per-LSP MPLS OAM capability and
        associated information, such as DetectType, DetectFrequency."                       n"An entry in this table is created by an LSR for every LSP
        capable of supporting MPLS OAM at egress."                       B"This is a unique index for an OAM egress entry in the OAM table."                       8"The object indicates the name of static LSP at egress."                      D"There are two types of OAM packets, CV and FFD.
        The CV flow is generated at the source LSR of the LSP with
        a nominal frequency of 1/s and terminated at the sink LSR of the LSP.
        FFD provides failure detection option for an LSP independent
        of the CV based availability model and is not tied to the
        CV insertion rate. Insertion rates at 1/s or faster may
        also be used.
        The CV/FFD packet contains a network-unique identifier (TTSI)
        so that all types of defects can be detected.
        1: CV;
        2: FFD."                       ("Indication of the OAM's frequent type."                       "When an LSP is found to be in defect, the sink LSR of the LSP
        should send BDI to inform the source LSR of the LSP, the BDI is
        transferred through the reverse LSP.
        The type of reverse LSP can be private or shared.
        If private, then the reverse LSP can be used only when the only
        LSP in defect;
        If shared, the reverse LSP, which is shared between many forward
        LSPs that have the same source LSRs and sink LSRs.
        1: private;
        2: share."                       8"The object indicates the name of a reverse static-lsp."                       5"The object indicates the Ingress LSR ID of the LSP."                       Z"The object indicates the the Ingress session lsp ID of the
        detected static-LSP."                      l"Whether one LSP is enabled with OAM.
        If disable, LSP is not monitored;
        If enable, CV/FFD is generated at the source LSR of the LSP and
        checked at the sink LSR of the LSP, and user can set
        other configuration.
        false: The OAM function is disabled on the egress;
        true: The OAM function is enabled on the egress."                       &"Indication of the OAM's defect type."                      �"This object is responsible for managing the creation,
        deletion and modification of rows, which support active
        status and CreatAndGo, destroy operation.
        To create a new row, h3cMplsOamEgrLspName, h3cMplsOamEgrDetectType,
        h3cMplsOamEgrDetectFreq, h3cMplsOamEgrRevType, h3cMplsOamEgrRevLspName,
        h3cMplsOamEgrLsrId and h3cMplsOamEgrLspId must be specified."                           k"This notification is generated when the LSP is found
        out of the defect state at the LSP ingress."                 g"This notification is generated when the LSP is found
        in the defect state at the LSP ingress."                 j"This notification is generated when the LSP is found
        out of the defect state at the LSP egress."                 f"This notification is generated when the LSP is found
        in the defect state at the LSP egress."                        