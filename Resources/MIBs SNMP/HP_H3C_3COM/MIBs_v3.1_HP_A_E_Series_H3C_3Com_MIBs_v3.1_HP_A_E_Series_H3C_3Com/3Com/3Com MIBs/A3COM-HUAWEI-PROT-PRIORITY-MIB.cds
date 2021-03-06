v-- =================================================================
-- Copyright (C) 2002 by HUAWEI 3COM TECHNOLOGIES.  All rights reserved.
--
-- Description: protocol priority mib
-- Reference:
-- Version: V1.0
-- History:
--   V1.0 created by zhuangyu
--     The initial version, 2005-01-17
-- =================================================================
                         �"This MIB is used to manage and configure the priority of specified protocol.
            This MIB is applicable to routers, switches and other products.
            " �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085
            " "200501171633Z" *"The initial revision of this MIB module."       "-- January 17, 2005 at 16:33 GMT
               <"A table is used to configure the priority of the protocol."                       E"An entry containing information about the priority of the protocol."                       "Protocol type."                       "Priority type."                      	"Priority value.
            If setting h3cPPriPriorityType to ip-precedence(1),
            the range of h3cPPriPriorityVlaue is from 0 to 7.
            If setting h3cPPriPriorityType to dscp(2),
            the range of h3cPPriPriorityVlaue is from 0 to 63."                      3"RowStatus, Now support createAndGo,active and destroy.
            To create a new row, h3cPPriPriorityType and h3cPPriPriorityValue must be specified.
            To modify a row,h3cPPriPriorityType and h3cPPriPriorityValue
            must change at the same time and the h3cPPriRowStatus is active ."                              