�-- =========================================================================
-- Copyright (C) 2001,2002 by  HUAWEI TECHNOLOGIES. All rights reserved.
--
-- Description: This file describes various common MIB objects implemented 
-- by both Routers and Switches.
-- Reference: VRRP-MIB
-- Version: V1.0
-- History:
--      V1.0 2004-12-09
--        Initial version
-- =========================================================================
                         k"This MIB describes objects used for managing Virtual Router
         Redundancy Protocol (VRRP) routers." �"Huawei-3Com Technologies Co.,Ltd.
         Shang-Di Information Industry Base,
         Hai-Dian District Beijing P.R. China
         Zip:100085 
         Http://www.huawei-3com.com"                   �"Table extends for a VRRP router which consists of a
         sequence (i.e., one or more conceptual rows) of
         h3cVrrpExtEntry items."                       ]"An entry in the h3cVrrpExtTable containing the status
         values of a virtual router."                       b"This value is the ifIndex that identifies which interface 
         the virtual router tracked."                       �"This value identifies how much priority of a virtual router
         will be reduced/increased when the interface tracked is down/up."                      }"The row status variable, used according to installation
         and removal conventions for conceptual rows. Setting this
         object to active(1) or createAndGo(4) results in the
         addition of the ifIndex tracked by a virtual router.
         Destroying the entry removes the tracked ifIndex from the 
         virtual router. Other values is not supported now."                                      