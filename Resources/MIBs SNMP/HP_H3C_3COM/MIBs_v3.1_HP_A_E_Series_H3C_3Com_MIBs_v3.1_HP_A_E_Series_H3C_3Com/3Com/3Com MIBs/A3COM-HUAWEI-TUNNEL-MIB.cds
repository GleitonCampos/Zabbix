�-- =================================================================
-- Copyright (C) 2005 by  HUAWEI 3COM TECHNOLOGIES. All rights reserved.
--
-- Description: Generic Routing Encapsulation configuration MIB
-- Reference: INET-ADDRESS-MIB, IPV6-FLOW-LABEL-MIB, IF-MIB
-- Version: V1.0
-- History:
-- V1.0 created by Sun Ludong
--   2005-06-04 Initial version
-- =================================================================
   #"Tunnel type defination.
        "                                     Q"This MIB contains objects to Manage configuration and Monitor tunnel.
        " �"Platform Team Huawei 3Com Technologies Co., Ltd.
        Hai-Dian District Beijing P.R. China
        http://www.huawei-3com.com
        Zip:100085
        " "200506040000Z" 4"The initial revision of this MIB module.
        "       -- June 4, 2005 at 00:00 GMT
               P"The (conceptual) table containing information on configured tunnels.
        "                       m"An entry (conceptual row) containing the information on a 
        particular configured tunnel.
        "                       8"The encapsulation method used by the tunnel.
        "                       �"The IPv4 TTL or IPv6 Hop Limit to use in the outer IP
        header. A value of 0 indicates that the value is
        copied from the payload's header.
        "                      W"The method used by the tunnel to secure the outer IP
        header. The value ipsec indicates that IPsec is used
        between the tunnel endpoints for authentication or
        encryption or both. More specific security-related
        information may be available in a MIB module for the
        security protocol in use.
        "                      "The method used to set the high 6 bits (the
        differentiated services codepoint) of the IPv4 TOS or
        IPv6 Traffic Class in the outer IP header.  A value of
        -1 indicates that the bits are copied from the
        payload's header. A value of -2 indicates that a
        traffic conditioner is invoked and more information
        may be available in a traffic conditioner MIB module.
        A value between 0 and 63 inclusive indicates that the
        bit field is set to the indicated value.
        "                      �"The method used to set the IPv6 Flow Label value.
        This object need not be present in rows where
        h3cTunnelIfAddressType indicates the tunnel is not over
        IPv6. A value of -1 indicates that a traffic
        conditioner is invoked and more information may be
        available in a traffic conditioner MIB. Any other
        value indicates that the Flow Label field is set to
        the indicated value.
        "                       �"The type of address in the corresponding
        h3cTunnelIfLocalInetAddress and h3cTunnelIfRemoteInetAddress
        objects.
        "                      "The address of the local endpoint of the tunnel
        (i.e., the source address used in the outer IP
        header). If the address is unknown, the value is
        0.0.0.0 for IPv4 or :: for IPv6. The type of this
        object is given by h3cTunnelIfAddressType.
        "                      �"The address of the remote endpoint of the tunnel
        (i.e., the destination address used in the outer IP
        header). If the address is unknown or the tunnel is
        not a point-to-point link (e.g., if it is a 6to4
        tunnel), the value is 0.0.0.0 for tunnels over IPv4 or
        :: for tunnels over IPv6. The type of this object is
        given by h3cTunnelIfAddressType.
        "                       �"The maximum number of additional encapsulations
        permitted for packets undergoing encapsulation at this
        node. A value of -1 indicates that no limit is
        present (except as a result of the packet size).
        " #"RFC 2473, section 4.1.1
        "                    �"The (conceptual) table containing information on
        configured tunnels. This table can be used to map a
        set of tunnel endpoints to the associated ifIndex
        value.  It can also be used for row creation. Note
        that every row in the h3cTunnelIfTable with a fixed
        destination address should have a corresponding row in
        the h3cTunnelInetConfigTable, regardless of whether it
        was created via SNMP.
        "                       l"An entry (conceptual row) containing the information
        on a particular configured tunnel.
        "                      ]"Slot number. h3cTunnelInetConfigSlot, h3cTunnelInetConfigSubSlot 
        and h3cTunnelInetConfigTunnNum descirbe a tunnel interface. 
        For Example, interface tunnel 0/0/25 would be configured as:
        h3cTunnelInetConfigSlot          0
        h3cTunnelInetConfigSubSlot       0
        h3cTunnelInetConfigTunnNum      25
        "                       S"Sub slot number. As described in h3cTunnelInetConfigSlot's description.
        "                       Q"Tunnel number. As described in h3cTunnelInetConfigSlot's description.
        "                      4"If the value of h3cTunnelInetConfigStatus for this row
        is active, then this object contains the value of
        ifIndex corresponding to the tunnel interface. A
        value of 0 is not legal in the active state, and means
        that the interface index has not yet been assigned.
        "                      �"The status of this row, by which new entries may be
        created, or old entries deleted from this table. The
        agent need not support setting this object to
        createAndWait or notInService since there are no other
        writable objects in this table, and writable objects
        in rows of corresponding tables such as the
        h3cTunnelIfTable may be modified while this row is
        active.

        To create a row in this table, the management
        station should set h3cTunnelInetConfigSlot, 
        h3cTunnelInetConfigSubSlot, h3cTunnelInetConfigTunnNum, 
        and set h3cTunnelInetConfigStatus to createAndGo. 

        Creating a row in this table will cause an interface
        index to be assigned by the agent in an
        implementation-dependent manner, and corresponding
        rows will be instantiated in the ifTable and the
        h3cTunnelIfTable. The status of this row will become
        active as soon as the agent assigns the interface
        index, regardless of whether the interface is
        operationally up.

        Deleting a row in this table will likewise delete the
        corresponding row in the ifTable and in the h3cTunnelIfTable.
        "                                  