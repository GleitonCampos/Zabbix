=Ë-- ==================================================================
-- Copyright (c) 2004-2011 Hangzhou H3C Tech. Co., Ltd.  All rights reserved.
--
-- Description: Lan Switch Device Physical Information MIB
-- Reference:
-- Version: V3.58
-- History:
--    v1.0 (1) Created by Hou Qiang, 2001.5.15
--         (2) Revised by Qi Zhenglin, 2002.01.08 ----r003 revision
--    v1.1 2004-7-12 add some card type define(hwLswSlotType 119-138)
--    v1.2 add enum value from 42 to 49 in hwLswPortType.
--    v1.3 2004-7-29 add some port type define(hwLswPortType 50-58)
--    v1.4 2004-8-11 add some slot type define
--                    (hwLswSlotType    type_LSA1FP8U(139))
--                    (hwLswSubslotType type_LSA1FP8U(139))
--    v1.5 2004-08-25 change emunation name
--                     from type_LS81SFCA(120) to type_LS81SRPG0(120),
--                     from type_LS81SFCB(121) to type_LS81SRPG1(121),
--                     from type_LS81SFCC(122) to type_LS81SRPG2(122),
--                     from type_LS81SFCD(123) to type_LS81SRPG3(123).
--                    modify comments for these emunations as well.
--    v1.6 2004-8-26 add some port types define(h2LswPortType 59-71)
--    v1.7 2004-09-08 add enum value from 140 to 148 in hwLswSlotType and hwLswSubSlotType by kangyinan
--    v1.8 2004-09-14 add enum value from 149 to 157 in hwLswSlotType and hwLswSubSlotType by wangyahui
--                    add enum value from 158 to 159 in hwLswSlotType and hwLswSubSlotType by kangyinan
--                    add enum value from 72 to 93 in hwLswPortType by wangyahui
--                    add enum value from 94 to 96 in hwLswPortType by kangyinan
--                    add type description for type_SP4, type_UP1, type_XP4 by kangyinan
--    v1.9 2004-10-12 updated by gaolong
--         Change all underscore('_') characters to hyphen characters('-') because underscore character is not allowed in MIB module.
--         The change refers to the value of hwLswSlotType, hwLswSlotAdminStatus, hwLswSubslotType, hwLswPortType, hwLswSubslotAdminStatus
--         Change MAX-ACCESS clause value of hwLswPortLoopbackOperate from write-only to read-write, and
--         update its DESCRIPTION.
--    v2.0 2004-10-19 add enum value from 160 to 162 in hwLswSlotType and hwLswSubSlotType by kangyinan
--                    add enum value 97 in hwLswPortType by kangyinan
--    v2.1  2004-11-23 add enum value from 163 to 166 in hwLswSlotType and hwLswSubSlotType by zhangchengmei
--    V2.2  2004-12-23 add enum value from 167 to 169 in hwLswSlotType and hwLswSubSlotType by zhangjianfeng
--    V2.3  2004-12-26 add enum value 170 in hwLswSlotType and hwLswSubSlotType by wangyahui
--    V2.4  2004-12-23 add enum value from 171 to 172 in hwLswSlotType and hwLswSubSlotType
--                     add enum value from 98 to 99 hwLswPortType by liyue
--    V2.5  2004-12-29 add enum value 173 in hwLswSlotType and hwLswSubSlotType by zhangjianfeng
--                     add enum value from 100 in hwLswPortType by zhangjianfeng
--    V2.6  2005-01-07 add enum value 174 and 175 in hwLswSlotType and hwLswSubSlotType by wangyahui
--    V2.7  2005-01-31 add enum value 176 in hwLswSlotType and hwLswSubSlotType by wangyahui
--    V2.8  2005-02-03 define HwLswTypeOfSlot
--                     change the SYNTAX of hwLswSlotType and hwLswSubSlotType to HwLswTypeOfSlot,add new enum vlaue to HwLswTypeOfSlot
--                     add enum value from 101 to 137 in hwLswPortType by zhangchengmei
--                     add enum value 178 in HwLswTypeOfSlot by zhouqiang
--                     add enum value 138 in hwLswPortType by zhouqiang
--                     add enum value from 179 to 180 in hwLswSubSlotType by wangyahui
--    V2.9  2005-03-22 add enum value from 181 to 187 in HwLswTypeOfSlot by zhangchengmei
--    V3.0  2005-05-10 add enum value from 188 to 216 in HwLswTypeOfSlot by zhangchengmei
--    V3.1  2005-07-18 add enum value from 217 to 219 in HwLswTypeOfSlot by yangliming
--          2005-06-25 add enum value from 139 to 142 in hwLswPortType by wangyahui
--    V3.11  2005-07-29 add enum value from 220 to 225 in HwLswTypeOfSlot by wangyahui
--    V3.12  2005-07-21 change the name of subidentifier 183 in HwLswTypeOfSlot by zhangchengmei
--                     add enum value 226 to 227 in HwLswTypeOfSlot by zhangchengmei
--           2005-08-29 add enum value 143 in hwLswPortType by qianxiaoyu
--    V3.13  2005-09-13 add enum value 228 to 253 in HwLswTypeOfSlot by zhangchengmei
--           2005-09-13 add enum value 257 to 268 in HwLswTypeOfSlot by zhangchengmei
--    V3.14  2005-11-04 add enum value 144 to 149 in hwLswPortType by zhangchengmei
--                      add enum value 150 in hwLswPortType by huangyuetao
--                      add enum value 269 to 271 in hwLswSlotType by yangxiaopeng
--                      add enum value 272 in HwLswTypeOfSlot by qianxiaoyu
--    V3.15  2005-11-24 add enum value 500 to 501 in hwLswSlotType by wangyahui
--    V3.16  2005-11-28 add enum value 300 to 316 in HwLswTypeOfSlot by zhangchengmei
--    V3.17  2005-12-30 add enum value 151 to 170 in hwLswPortType by zhangchengmei
--    V3.18  2006-01-04 add enum value 701 in HwLswTypeOfSlot by qianxiaoyu
--    V3.19  2006-02-12 add enum value 702 in HwLswTypeOfSlot by chenxiaohui
--                      add enum value 317 in HwLswTypeOfSlot by zhangchengmei
--    V3.20  2006-02-20 add enum value 703 in HwLswTypeOfSlot by chijuntao
--    V3.21  2006-02-28 add enum value 171 to 174 in hwLswPortType by wangshunli
--                      add enum value 318 to 336 in HwLswTypeOfSlot by zhaiyingying
--                      Modify description of hwLswSysIpAddr, hwLswSlotCpuRatio, hwLswSysCpuRatio
--                      and some wrong format of the description by wangyong
--    V3.22  2006-03-14 add enum value 175 in hwLswPortType by wangyahui
--                      add enum value 502 to 504 in HwLswTypeOfSlot by wangyahui
--    V3.23  2006-04-03 add enum value 176 in hwLswPortType by wangyahui
--    V3.24  2006-04-21 add enum value 337 to 340 in HwLswTypeOfSlot by zhaiyingying
--    V3.25  2006-04-21 add enum value 704 to 705 under HwLswTypeOfSlot by zhangxianguo
--                      add enum value 505 to 506 under HwLswTypeOfSlot by zhangjianfeng
--                      add enum value 341 to 349 under HwLswTypeOfSlot by zhaiyingying
--                      add enum value 177 to 178 under hwLswPortType by zhangjianfeng
--                      add enum value 179 to 180 under hwLswPortType by zhangxianguo
--    V3.26  2006-07-12 add enum value 507 to 509 in HwLswTypeOfSlot by wangyahui
--                      modify enum name 502 and 503 of HwLswTypeOfSlot by wangyahui
--                      add enum value 350 to 357 under HwLswTypeOfSlot by zhaiyingying
--                      Modify description of enum element(3) in HwLswTypeOfSlot by zhangxianguo
--    V3.27  2006-08-31 add enum value 510 to 514 in HwLswTypeOfSlot by wangyahui
--                      add enum value 800 to 801 in HwLswTypeOfSlot by luoguixing
--    V3.28  2006-10-26 add enum value 358 to 370 under HwLswTypeOfSlot by zhaiyingying
--                      add enum value 183 under hwLswPortType by zhaiyingying
--                      add enum value 515 to 526 in HwLswTypeOfSlot by wangyahui
--                      modify enum 505 and 506 of HwLswTypeOfSlot by wangyahui
--                      add enum value 181 to 182 in hwLswPortType by wangyahui
--    V3.29  2006-11-02 add enum value 527 to 536 in HwLswTypeOfSlot by wangyahui
--                      modify description of 511 to 513 in HwLswTypeOfSlot by wangyahui
--           2006-11-10 add enum value 371 to 378 under HwLswTypeOfSlot by shuxiongtao
--           2006-11-08 add enum value 184 to 185 under hwLswPortType by zhaiyingying
--    V3.30  2007-03-19 add enum value 537 in HwLswTypeOfSlot by wangyahui
--    V3.31  2007-04-25 add enum value 538 to 542 in HwLswTypeOfSlot by wangyahui
--                      add enum value 379 to 380 under HwLswTypeOfSlot by zhaiyingying
--                      add enum value 706 in HwLswTypeOfSlot by zhangzongyi
--    V3.32  2007-05-28 add enum value 707 in HwLswTypeOfSlot by ligaoxu
--                      add enum value 381 to 392 in HwLswTypeOfSlot by shuxiongtao
--                      modify name of enum value 371 and 374 in HwLswTypeOfSlot by shuxiongtao
--                      add enum value 186 in hwLswPortType by jinzhaoqiong
--    V3.33  2007-07-09 add enum value 543 to 551 in HwLswTypeOfSlot by Zhangjianfeng
--                      add enum value 552 to 554 in HwLswTypeOfSlot by wangyahui
--    V3.34  2007-07-26 add enum value 708 in HwLswTypeOfSlot by Xiuyihong
--    V3.35  2007-08-27 add enum value 187 to 188 in hwLswPortType by ruanhan
--                      add enum value 802 to 804 in HwLswTypeOfSlot by luoguixing
--                      add enum value 393 to 397 under HwLswTypeOfSlot by shuxiongtao
--    V3.36  2007-09-25 add enum value 555 to 559 in HwLswTypeOfSlot by wangyahui
--                      add enum value 805 in HwLswTypeOfSlot by luoguixing
--                      add enum value 398 to 399 in HwLswTypeOfSlot by hexuefei
--    V3.37  2007-10-16 add enum value 189 in hwLswPortType by liaoxin
--    V3.38  2007-11-20 add enum value 400 to 407 in HwLswTypeOfSlot by shuxiongtao
--    V3.39  2007-12-27 add enum value 560 to 568 in HwLswTypeOfSlot by wangyahui
--    V3.40  2008-01-30 add enum value 408 in HwLswTypeOfSlot by hexuefei
--                      add enum value 569 to 572 in HwLswTypeOfSlot by wangyahui
--    V3.41  2008-02-20 add enum value 573 to 574 in HwLswTypeOfSlot by zhangjianfeng
--                      modify name and comments of enum value 546 in HwLswTypeOfSlot by zhangjianfeng
--                      add enum value 575 to 576 in HwLswTypeOfSlot by wangyahui
--    V3.42  2008-03-31 add enum value 806 to 808 in HwLswTypeOfSlot by luoguixing
--                      add enum value 709 to 715 under HwLswTypeOfSlot by wangcong
--                      add enum value 191 to 196 under hwLswPortType by wangcong
--                      add enum value 409 to 431 in HwLswTypeOfSlot by zhaiyingying
--                      add enum value 432 in HwLswTypeOfSlot by shuxiongtao
--    V3.43  2008-04-29 add enum value 577 to 589 in HwLswTypeOfSlot by wangyahui
--    V3.44  2008-07-28 add enum value 590 to 592 in HwLswTypeOfSlot by wangyahui
--                      add enum value 809 to 810 in HwLswTypeOfSlot by luoguixing
--    V3.45  2008-08-26 modify name of enum value 379 and 399 in HwLswTypeOfSlot by wangwei
--                      modify description of 408 in HwLswTypeOfSlot by wangwei
--                      modify name and description of enum value 804 in HwLswTypeOfSlot by wangwei
--                      add enum value 433 to 434 in HwLswTypeOfSlot by wangwei
--                      add enum value 593 to 595 in HwLswTypeOfSlot by wangyahui
--    V3.46  2008-10-13 add enum vlaue 197 in hwLswPortType by ruanhan
--                      add enum value 811 in HwLswTypeOfSlot by luoguixing
--                      add enum value 596 and 601 in HwLswTypeOfSlot by wangyahui
--    V3.47  2008-12-01 add enum vlaue 725 in HwLswTypeOfSlot by ruanhan
--                      add enum value 602 to 619 in HwLswTypeOfSlot by wangyahui
--                      add enum value 435 to 442 in HwLswTypeOfSlot by zhaiyingying
--                      modify name of enum value 546 in HwLswTypeOfSlot by zhangjianfeng
--                      add enum value 443 in HwLswTypeOfSlot by shuxiongtao
--    V3.48  2008-12-25 add enum value 620 to 622 in HwLswTypeOfSlot by wangyahui
--                      add enum value 716 to 718 in HwLswTypeOfSlot by zhangshilin
--                      add enum value 444 to 445 in HwLswTypeOfSlot by wangchang
--    V3.49  2009-01-05 add enum value 446 to 452 in HwLswTypeOfSlot by wangchang
--                      add enum value 719 in HwLswTypeOfSlot by zhangshilin
--                      add enum value 623 to 633 in HwLswTypeOfSlot by wangyahui
--    V3.50  2009-03-19 add enum value 453 to 464 in HwLswTypeOfSlot by huyinxing
--    V3.51  2009-07-02 add enum value 634 to 637 in HwLswTypeOfSlot by wangyahui
--                      add enum value 465 to 468 in HwLswTypeOfSlot by zhaiyingying
--                      add enum value 469 to 472 in HwLswTypeOfSlot by huyinxing
--                      add enum value 198 in hwLswPortType by huyinxing
--                      add enum vlaue 199 in hwLswPortType by zhangjianfeng
--    V3.52  2009-08-28 add enum value 638 to 640 in HwLswTypeOfSlot by wangyahui
--    V3.53  2009-11-09 add enum value 726 in HwLswTypeOfSlot by ruanhan
--                      add enum value 641 in HwLswTypeOfSlot by wangyahui
--                      add enum value 473 to 477 in HwLswTypeOfSlot by yudongyang
--                      add enum value 478 to 485 in HwLswTypeOfSlot by heweibin
--    V3.54  2009-12-31 add enum value 200 to 201 in hwLswPortType by zhanghaiyang
--                      add enum value 642 to 651 in HwLswTypeOfSlot by wangyahui
--                      add enum value 486 in HwLswTypeOfSlot by yudongyang
--                      add enum value 727 to 728 in HwLswTypeOfSlot by xiaobing
--                      add enum value 652 to 659 in HwLswTypeOfSlot by wangyahui
--                      add enum value 487 to 488 in HwLswTypeOfSlot by huyinxing
--                      add enum value 660 to 662 in HwLswTypeOfSlot by wangyahui
--                      add enum value 202 to 203 in hwLswPortType by yangdonghong
--    V3.55  2010-03-03 Added hwLswSysPhyMemory, hwLswSysMemory,
--                      hwLswSysMemoryUsed, hwLswSysMemoryRatio by songhao
--                      add enum value 812 in HwLswTypeOfSlot by mashuhang
--                      add enum value 489 to 497 in HwLswTypeOfSlot by liubuxiang
--                      add enum value 498 to 499 in HwLswTypeOfSlot by shikejun
--                      add enum value 900 in HwLswTypeOfSlot by yangqiulin
--                      add enum value 901 to 902 in HwLswTypeOfSlot by huyinxing
--    V3.56  2010-08-29 add enum value 903 to 904 in HwLswTypeOfSlot by huyinxing
--                      add enum value 905 to 907 in HwLswTypeOfSlot by shikejun
--                      add enum value 663 to 685 in HwLswTypeOfSlot by wangyahui
--                      add enum value 813 in HwLswTypeOfSlot by mashuhang
--                      add enum value 729 in HwLswTypeOfSlot by zhangshilin
--                      add enum value 908 to 913 in HwLswTypeOfSlot by yangbin
--                      add enum value 914 to 918 in HwLswTypeOfSlot by huyinxing
--                      add enum value 919 to 927 in HwLswTypeOfSlot by langgaoyi
--                      add hwLswFabricTable by songhao
--    V3.57  2011-01-31 add enum value 686 to 691 in HwLswTypeOfSlot by wangyahui
--                      add enum value 928 to 929 in HwLswTypeOfSlot by langgaoyi
--                      add hwLswSysTemperature, hwLswSlotPhyMemory,
--                      hwLswSlotMemory, hwLswSlotMemoryUsed,
--                      hwLswSlotMemoryRatio and hwLswSlotTemperature by songhao
--    V3.58  2011-04-23 Add enum value 930 in HwLswTypeOfSlot by liuhui
--                      Add enum value 814 to 815 in HwLswTypeOfSlot by mashuhang
--                      Add enum value 692 to 694 in HwLswTypeOfSlot by wangyahui
--                      Add enum value 204 in hwLswPortType by yangliming
-- ==================================================================
   +"The type of slots for lan switch devices."                                                 "The latest baseline." ˜"Platform Team H3C Technologies Co., Ltd.
             Hai-Dian District Beijing P.R. China
             http://www.h3c.com
             Zip: 100085" "200104040000Z" "The first baseline."                   Œ"System IP address, which is the primary IP address of the VLAN
         interface that has smallest VLAN ID and is configured IP address."                        "Mask of the system IP address."                       Y"CPU usage of the system in accuracy of 1%, and the range of value is
        1 to 100."                       $"Information of the system version."                       "System time."                       ;"Enable or disable discarding of unknown multicast packet."                       "System management VLAN."                       D"System VLAN range, if set VLAN range, must bind mangement IP/Mask."                       "System IP address."                        "Mask of the system IP address."                       ("Supportted MAC address number on port."                       +"Supportted MAC address number on machine."                       ò"The memory of physical.
        For the distributed device, it represents the memory size on the master
        slot.

        If the amount of physical memory exceeds 4,294,967,295 bytes,
        the value remains 4,294,967,295 bytes."                      U"The memory of system.
        Note that the system memory means the memory can be used by the software
        platform.

        For the distributed device, it represents the memory size on the master
        slot.

        If the amount of system memory exceeds 4,294,967,295 bytes,
        the value remains 4,294,967,295 bytes."                      W"The system memory in use.
        Note that the system memory means the memory can be used by the software
        platform.

        For the distributed device, it represents the memory size on the master
        slot.

        If the amount of used memory exceeds 4,294,967,295 bytes,
        the value remains 4,294,967,295 bytes."                      ‘"The percentage of system memory in use.
        Note that the system memory means the memory can be used by the software
        platform.

                                hwLswSysMemoryUsed
        hwLswSysMemoryRatio = --------------------
                                 hwLswSysMemory

        For the distributed device, it represents the memory used ratio on the
        master slot."                       ~"The temperature of system.

        For the distributed device, it represents the temperature on the
        master slot."                           "Frame information table."                        "Frame description table entry."                       "The unique index of frame."                       "Frame type."                       "Frame description."                       '"Number of slots of the current frame."                       "The Status of frame."                       "Slot description table."                       "Slot description table entry."                       <"Slot index. When the slot is empty, listed as vacant slot."                       '"Slot type. BOM number is recommended."                       "Slot description."                       X"CPU usage of the slot in accuracy of 1%, and the range of value is 1 to
         100."                        "Hardware version of the board."                        "Software version of the board."                       #"Number of the cards of the board."                       "Slot status."                       "Slot operation status."                       Ÿ"The memory of physical on the board.

        If the amount of physical memory exceeds 4,294,967,295 bytes,
        the value remains 4,294,967,295 bytes."                      "The memory of system on the board.

        Note that the system memory means the memory can be used by
        the software platform.

        If the amount of system memory exceeds 4,294,967,295 bytes,
        the value remains 4,294,967,295 bytes."                      "The system memory in use on the board.

        Note that the system memory means the memory can be used by
        the software platform.

        If the amount of used memory exceeds 4,294,967,295 bytes,
        the value remains 4,294,967,295 bytes."                       "The percentage of system memory in use on the board.

        Note that the system memory means the memory can be used by
        the software platform."                       )"The temperature of system on the board."                       "Subslot description table."                       ""Subslot description table entry."                       "Subslot index."                       )"Type of the pinch board in the subslot."                       ."Number of physical ports in the pinch board."                       +"Status of the pinch board in the subslot."                       E"The value of ifIndex of the first physical port in the pinch board."                       "Port configuration table."                       !"Port configuration table entry."                       t"The port number on the device. The first port number is 1, which is
         reserved if the port does not exist."                       "Normally the port type is the same as its card type. When there are
         different types of ports in one card, use the actual port type."                       #"The value of ifIndex of the port."                       "Port is plugged or not."                       "Port loopback test table."                       !"Port loopback test table entry."                       5"The loopback type can be supported by current port."                       ;"Port loopback operate type. Read operation not supported."                       ž"Loopback test result of the port, used for checking if the test is successful.
         Only after the testing will the query value on the node make sense."                       ;"Whether this port support NEED-MANNUL-NOLOOP mode or not."                       ³"The remote loopback test result of the port, used for checking if the
         test is successful. Only after the testing will the query value on
         the node make sense."                       ²"The local loopback test result of the port, used for checking if the
         test is successful. Only after the testing will the query value on the
         node make sense."                       µ"The internal loopback test result of the port, used for checking if
         the test is successful. Only after the testing will the query value
         on the node make sense."                       µ"The external loopback test result of the port, used for checking if the
         test is successful. Only after the testing will the query value on the
         node make sense."                       0"This table contains the information of fabric."                       "An entry in hwLswFabricTable."                       "The channel number of fabric."                        "Ingress utilization of fabric."                       "Egress utilization of fabric."                       )"Ingress peak of utilization for fabric."                       ."Ingress peak time of utilization for fabric."                       ("Egress peak of utilization for fabric."                       -"Egress peak time of utilization for fabric."                                  