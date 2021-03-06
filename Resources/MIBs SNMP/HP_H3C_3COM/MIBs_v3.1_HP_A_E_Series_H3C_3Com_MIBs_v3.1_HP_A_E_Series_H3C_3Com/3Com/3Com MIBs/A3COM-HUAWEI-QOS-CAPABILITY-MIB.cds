`-- ============================================================================
-- Copyright (C) 2004 by HUAWEI 3Com TECHNOLOGIES. All rights reserved.
--
-- Description: HUAWEI 3COM capability of Quality of Service with system and interface
--              Management Information Base.
-- Reference: RFC 3291
-- Version: 1.1
-- History:
-- V1.0 created by tangshun.
-- V1.1 modified by ChenWei
--   Modify the syntax and description of h3cQoSModuleIndex.
--   Modify the description of h3cQoSCharacteristicsValue.
-- ============================================================================
 8"rfc2737
                 ENTITY-MIB
                "�"An enumerated value which provides an indication of the
                 general hardware type of a particular capability entity.

                 The enumeration 'stack' is applicable if the physical entity
                 class is some sort of super-container (possibly virtual),
                 intended to group together multiple chassis entities.  A
                 stack may be realized by a 'virtual' cable, a real
                 interconnect cable, attached to multiple chassis, or may in
                 fact be comprised of multiple interconnect cables. A stack
                 should not be modeled within any other physical entities,
                 but a stack may be contained within another stack.  Only
                 chassis entities should be contained within a stack.

                 The enumeration 'chassis' is applicable if the physical
                 entity class is an overall container for networking
                 equipment.  Any class of physical entity except a stack may
                 be contained within a chassis, and a chassis may only be
                 contained within a stack.

                 The enumeration 'module' is applicable if the physical
                 entity class is some sort of self-contained sub-system.
                 If it is removable, then it should be modeled within a
                 container entity, otherwise it should be modeled directly
                 within another physical entity (e.g., a chassis or another
                 module).

                 The enumeration 'port' is applicable if the physical entity
                 class is some sort of networking port, capable of receiving
                 and/or transmitting networking traffic.
                "                             ."Huawei-3com QoS management information base." �"Platform Team Huawei 3Com Technologies Co.,Ltd.
                Hai-Dian District Beijing P.R. China
                http://www.huawei-3com.com
                Zip:100085
                "       -- Aug. 30, 2005 at 00:00 GMT
               5"A table of capability of QoS of system information."                       &"Capability of QoS information entry."                      1"The concentric device supports 'chassis' and 'port'.

                 The distributed device supports 'chassis',
                 'module' and 'port'.

                 The Intelligent Resilient Framework System supports
                 'stack', 'chassis', 'module' and 'port'.
                "                      %"Index of each physical entity.
                 If h3cQoSCapabilityPhysicalType is 'stack',
                 the value of this object is 0.

                 If h3cQoSCapabilityPhysicalType is 'chassis' and 'module',
                 the value of this object is equal to 'entPhysicalIndex',
                 which is defined by 'ENTITY-MIB'.

                 If h3cQoSCapabilityPhysicalType is 'port',
                 the value of this object is equal to 'ifIndex',
                 which is defined by 'RFC1213-MIB'.
                " U"RFC2737.
                 RFC1213.
                 ENTITY-MIB.
                "                    "The module index of QoS.
                 QoS module:
                     Index    Characteristic
                     1        car module
                     2        gts module
                     3        lr module
                     4        hardware queue management module
                     5        wred module
                     6        priority mapping table module
                     7        colored priority mapping table module
                     8        port priority module
                     9        qos policy module
                     10       qos interface generic module
                     11       flow template module
                     12       vqos and vacl module
                     13       statistic module
                     21       carl module
                     22       fifo module
                     23       pq module
                     24       cq module
                     25       wfq module
                     26       rtpq module
                "                       ."The characteristics index of modules of QoS."                      