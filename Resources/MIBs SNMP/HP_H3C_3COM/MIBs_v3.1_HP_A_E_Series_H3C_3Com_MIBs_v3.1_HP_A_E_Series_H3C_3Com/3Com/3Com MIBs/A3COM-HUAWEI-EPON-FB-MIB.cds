�-- ===========================================================
-- Copyright (C) 2007 by  H3C TECHNOLOGIES. All rights reserved.
--
-- Description:
-- The information of EPON fiber backup.
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 created by zhaodan.
-- Initial version for h3cEponFBMibObjects of h3cEpon.
-- ===========================================================
                                 �"
        The objects in this MIB module are used to manage and
        display current configuration of fiber backup groups
        based on EPON OLT port.
        " �"Platform Team H3C Technologies Co., Ltd.
         Hai-Dian District Beijing P.R. China
         Http://www.h3c.com
         Zip:100085"                   D"This table defines several optical fiber-backup system parameters."                       !"The entry of h3cEponFBMIBTable."                       !"The EPON fiber-backup group ID."                       Y"This object allows entry to be created and deleted
        from the h3cEponFBMIBTable."                       b"OLT port ifindex of the fiber-backup group.
        Use it to set or get the group master port."                       �"OLT port ifindex of the fiber-backup group.
        Use it to set or get the group slave port.
        h3cEponFBSlavePort must be set after h3cEponFBMasterPort.
        "                       �"The master port status of the fiber-backup group.
        The active state indicates that the port's role is master, the olt chip is right
        and the optical module is inserted.
        The down state indicates others conditions."                       �"The slave port status of the fiber-backup group.
        The ready state indicates that the port's role is slave, the olt chip is right
        and optical module is inserted.
        The down state indicates others conditions."                      2"Switch the fiber backup group's two port manually.
        The group must has two ports
        and the value of h3cEponFBSlavePortStatus must be ready before Switchover.
        after Switchover the port's role will be changed.
        The value true is for switch-over.  The default value is false."                      