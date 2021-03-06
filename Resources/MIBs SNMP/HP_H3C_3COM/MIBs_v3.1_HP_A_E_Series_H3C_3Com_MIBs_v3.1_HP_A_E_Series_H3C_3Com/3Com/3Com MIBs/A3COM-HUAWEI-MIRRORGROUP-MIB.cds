-- =================================================================
-- Copyright (C) 2006 by HUAWEI 3COM TECHNOLOGIES.  All rights reserved.
--
-- Description: Mirror group MIB
-- Reference:
-- Version: V1.0
-- History:
--   2006-01-10 created by xialei
--     Initial version V1.0
-- =================================================================
-- =================================================================
--
-- Import and definition
--
-- =================================================================
                         5"This MIB defines objects for managing mirror group." �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085
            " "200601101903Z" *"The initial revision of this MIB module."                       !"A list of mirror group entries."                       B"A list of parameters that describe a mirror group to be created."                       G"An index that uniquely identifies an entry in the mirror group table."                       "GroupType."                      n"The status of a mirror group.  A mirror group will be inactive
            when it was created.

            The status of a mirror group can be changed automatically from inactive
            to active when appropriate conditions were met, also, it can be changed
            automatically from active to inactive when these conditions disappeared.

            Followings are conditions for a mirror group to become active:
              group type          conditions
              ============================================================================
              local               mirroring-port, monitor-port
              remoteSource        mirroring-port, remote-probe vlan, reflector-port(may not
                                  be supported by some products)
              remoteDestination   monitor-port, remote-probe vlan
              "                       "RowStatus"                           0"A list of mirror group mirroring-port entries."                       a"A list of parameters that describe a mirroring-port to be added to
            a mirror group."                       )"IfIndex of mirror group mirroring-port."                      �"Mirror direction of mirroring-port.  Once mirror direction
             was configured for a mirroring-port, it can not be changed
             unless the mirroring-port was removed from mirror group.

             If a mirror port is configured with two mirror directions
             'outbound' and 'inbound', though it is functionally equal
             to 'both', it will be handled as two table items.  If a
             mirror port is configured with mirror direction 'outbound'
             or 'inbound', or both of them, it will not be allowed to
             configure 'both', more details please refer to mirror group
             manual."                       "RowStatus"                           ."A list of mirror group monitor-port entries."                       _"A list of parameters that describe a monitor-port to be added to
            a mirror group."                       '"IfIndex of mirror group monitor-port."                       "RowStatus"                           0"A list of mirror group reflector-port entries."                       a"A list of parameters that describe a reflector-port to be added to
            a mirror group."                       )"IfIndex of mirror group reflector-port."                       "RowStatus"                           3"A list of mirror group remote-probe vlan entries."                       �"A list of parameters that describe a remote-probe vlan to be added
            to a mirror group.  Details about remote-probe vlan please refer to
            mirror group manual."                       L"An index that uniquely identifies an entry in the remote-probe vlan table."                       "RowStatus"                              