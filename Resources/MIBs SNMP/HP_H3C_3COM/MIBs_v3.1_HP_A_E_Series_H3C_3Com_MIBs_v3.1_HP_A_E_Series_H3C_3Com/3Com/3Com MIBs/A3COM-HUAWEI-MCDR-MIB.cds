�-- =========================================================================
-- Copyright (C) 2007 by H3C TECHNOLOGIES. All rights reserved.
--
-- Description: Multicast Call Detail Record(CDR) MIB
--              In IPTV application, user join in a multicast group to order
--              video programme. Multicast CDR is implemented for record basic
--              information that a user join in a multicast group.
--              The information record will be sent to NMS.
--              This new MIB is used for configured policy to send record and
--              display online user information.
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 Created by Wangxiaodong, 2007.12.15
--        Initial version.
-- =========================================================================
--
-- ==================================================================
--
-- Variables and types be imported
--
-- ==================================================================
                         '"The initial version of this MIB file." �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085" "200712150000Z" '"The multicast call detail record MIB."                   8"Configure to enable or disable multicast CDR function."                       <"Configure the multicast CDR report-interval. Unit: second."                       *"Configure the multicast CDR cache-limit."                       8"Configure the multicast CDR record-delay. Unit: second"                       "Send record at once."                       *"Multicast user online information table."                       7"The entry of multicast user online information table."                       "The index of online record."                       u"The index of sub-interface which is active.
        If the value is zero, h3cMultUserSubIfIndex should be ignored."                       >"The ID of VLAN in which the user joined the multicast group."                       )"Type of the multicast group IP address."                       4"The multicast group address which the user joined."                       *"Type of the multicast source IP address."                       �"The multicast source address which the user joined.
        If the value is '0.0.0.0'(IPv4) or '::'(IPv6), h3cMultUserJoinSAddr
        should be ignored."                       q"The current status of user.
        permit - user in permit status.
        preview - user in preview status."                       4"The time when the user joined the multicast group."                       �"The times of multicast preview which the user joined.
        If h3cMultUserStatus is not preview, h3cMultUserPreviewTimes
        should be ignored."                       �"The remanent time slice of multicast preview which the user joined.
        If h3cMultUserStatus is not preview, h3cMultUserPreviewRemain
        should be ignored."                                  