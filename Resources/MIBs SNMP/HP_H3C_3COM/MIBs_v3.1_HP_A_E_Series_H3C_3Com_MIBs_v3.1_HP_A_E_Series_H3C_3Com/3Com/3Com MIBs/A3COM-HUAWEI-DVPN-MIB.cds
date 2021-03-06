�-- ============================================================================
-- Copyright (C) 2005 by  HUAWEI 3Com TECHNOLOGIES. All rights reserved.
--
-- Description: DVPN MIB
-- Reference:
-- Version: V1.0
-- History:
-- V1.0 2005-07-01
--   Initial version, created by zhanglihua, zhangzhen, lilin and liukan
-- ============================================================================
   �"
                The type of the communication between client and server.
                It indicates the direction of the communication.
            "              �"
                13 kinds of dvpn algorithms.
                                         encryption method | hash method | key width.
                dvpnDesCbcMd5PreShaModp768:          des   |  md5        |     768
                dvpnDesCbcMd5PreShaModp1024:         des   |  md5        |    1024
                dvpnDesCbcSha1PreShaModp768:         des   | sha1        |     768
                dvpnDesCbcSha1PreShaModp1024:        des   | sha1        |    1024
                dvpn3DesCbcMd5PreShaModp768:        3des   |  md5        |     768
                dvpn3DesCbcMd5PreShaModp1024:       3des   |  md5        |    1024
                dvpn3DesCbcSha1PreShaModp768:       3des   | sha1        |     768
                dvpn3DesCbcSha1PreShaModp1024:      3des   | sha1        |    1024
                dvpnAesCbcMd5PreShaModp768:          Aes   |  md5        |     768
                dvpnAesCbcMd5PreShaModp1024:         Aes   |  md5        |    1024
                dvpnAesCbcSHA1Sha1PreShaModp768:     Aes   | sha1        |     768
                dvpnAesCbcSHA1Sha1PreShaModp1024:    Aes   | sha1        |    1024
                dvpnAlgorithmNone:                  none   | none        |  no key
            "                                    S"
                This MIB is Dynamic Virtual Private Network(Dvpn) mib.
                This MIB is applicable to router.
                Some objects in this may be used only for some specific products,
                so users should refer to the related documents to acquire more
                detail information.
            " �"Platform Team Huawei 3Com Technologies Co., Ltd.
            Hai-Dian District Beijing P.R. China
            http://www.huawei-3com.com
            Zip:100085
            "       -- July 1, 2005 at 19:36 GMT
               �"
                Dvpn service enable or disable.
                If dvpn service is 'disable', dvpn service can not be used.
            "                       i"
                The number of dvpn classes.
                It is only used on client.
            "                       �"
                The number of clients which register on the server.
                When a session of server to client type is built,
                add 1 to the value of this node.
                It is only used on server.
            "                       t"
                Dvpn map age time, the unit is second.
                It is only used on server.
            "                       �"
                The length of time between the registering of client, the unit
                is second.
                It is only used on client.
            "                       �"
                The length of time when client dumbs, the unit is second.
                It is only used on client.
            "                       }"
               Regist retry times of client after register fail.
               It is only used on client.
            "                       A"
                The number of recieved packets.
            "                       I"
                The number of packets have been droped.
            "                       G"
                The number of packets have been sent.
            "                       E"
                The number of output error packets.
            "                       T"
                The number of packets have been encrypted wrongly.
            "                       �"
                The current role of the device.
                The value is decided by the configuration of the tunnel-interface.
            "                       ?"
                The number of dvpn domains.

            "                       :"
                The number of dvpn maps.
            "                       e"
                 The number of dvpn sessiones including the session of all states.
             "                       k"
                The pre-shared-key of server.
                It is only used on server.
            "                       B"
                Dvpn map trap enable or disable.
            "                       F"
                Dvpn session trap enable or disable.
            "                       /"
                Dvpn version.
            "                       "
                Clear all dvpn conects in the domain, the parameter is
                the id of the domain.
            "                       J"
                Clear the statistic information of dvpn.
            "                       m"
                The number of redirect packets.
                It is only used on server.
            "                       �"
                Dvpn global authentication type being used by server to client.
                The value is decided by the configuration by the user.
            "                       �"
                Dvpn global AAA domain of the user. The domain will decide the
                authentication server which is used by the dvpn server to
                authenticate dvpn client.
            "                       @"
                The device ID, it is a string.
            "                       v"
                The age-time of the h3cDvpnSessionHisTable table.
                The unit is hour.
            "                       V"
                The reset flag of dvpn h3cDvpnSessionHisTable table.
            "                           d"
                The dvpn policy table.
                It is used on dvpn server.
            "                       B"
                The entry of h3cDvpnPolicyTable.
            "                       :"
                The name of Dvpn policy.
            "                       �"
                The authentication type used by server to client.
                The value is decided by the policy configuration of the user.
                The default value is none.
            "                       S"
                The algorithm suite used when session is created.
            "                       L"
                The session idle time, the unit is second.
            "                       Q"
                The session keepalive time, the unit is second.
            "                       V"
                The session setup interval time, the unit is second.
            "                       a"
                The algorithm suite used by the session for createing ipsec sa.
            "                       w"
                The duration of DVPN IPSec security association.
                The unit is second.
            "                       �"
                Dvpn policy AAA domain of the user. The domain will decide the
                authentication server which used by the dvpn server to authenticate
                dvpn client.
            "                       S"
                The total times of the policy being used by dvpn.
            "                       �"
                The status of this conceptual row.
                We support the characteristic of active(1),createAndGo(4),destroy(6).
            "                       8"
                The dvpn domain table.
            "                       F"
                The entry of h3cDvpnDomainInfoTable.
            "                       1"
                Dvpn domain ID.
            "                       L"
                The number of session in this dvpn domain.
            "                       T"
               The number of redirect packets in this dvpn domain.
            "                       Q"
               The number of input packets in this dvpn domain.
            "                       Q"
                The number of drop packets in this dvpn domain.
            "                       S"
                The number of output packets in this dvpn domain.
            "                       Y"
                The number of output error packets in this dvpn domain.
            "                       Z"
                The number of encrypt error packets in this dvpn domain.
            "                       h"
                The Dvpn class table.
                It is only used on dvpn client.
            "                       E"
                The entry of the h3cDvpnClassTable.
            "                       \"
                The dvpn class name. It is the index of h3cDvpnClassTable.
            "                       J"
                Dvpn server public ip type (ipv4, ipv6).
            "                       @"
                Dvpn server public ip address.
            "                       K"
                Dvpn server private ip type (ipv4, ipv6).
            "                       A"
                Dvpn server private ip address.
            "                       �"
                The algorithm suite used by the client when sending registry
                packets to the server.
                'dvpnAlgorithmNone' is not supported here.
            "                       �"
                The authentication type being used by client to server.
                The value is decided by the class configuration of the user.
                The default value is none.
            "                      A"
                Dvpn PreShareKey.
                It is used when the method used by client when authenticating
                server is pre-share-key, only when the value of the key is the
                same as that on the server, the client can authenticate server
                successfully.
            "                       N"
                Dvpn UserName. It is configured by the user.
            "                       A"
                Dvpn password encrypted or not.
            "                       N"
                Dvpn password. It is configured by the user.
            "                       �"
                The status of this conceptual row.
                Only 'active', 'createAndGo' and 'destroy' are supported.
            "                       8"
                The dvpn tunnel table.
            "                       B"
                The Entry of h3cDvpnTunnelTable.
            "                       M"
                The type of dvpn tunnel (client or server).
            "                       �"
                The security acl used by the tunnel.
                If a packet permits the rules, it will not be encrypted.
            "                      R"
                The register type used by the client .
                Only the interface type is client, it can be used.
                undistributed: If a client send a packet to the client with
                this configuration, setver will only forward the packet whitout
                sending redirect packets.

                forward: The client with this configuration will only send packets
                forwarded by server, which means it can not initiate to build
                a session with other clients.
                undistributedandforward: The client with this configuration have
                the characteristics of both 'forward' and 'undistributed'.
                normal: The client with this configuration can build session with
                other clients without any restriction.
            "                       �"
                The dvpn ID used by the tunnel.
                The dvpn ID is 0 means that user does not configure dvpn ID.
                User can not configure a dvpn ID with 0.
            "                       �"
                The dvpn policy used by the tunnel.
                Only the interface type is server, it can be used.
            "                       �"
                The dvpn class used by the tunnel.
                Only the interface type is client, it can be used.
            "                       5"
                The dvpn map table.
            "                       C"
                The entry of the h3cDvpnMapTable.
            "                       ?"
                The index of h3cDvpnMapTable.
            "                       a"
                The identifier of peer device.
                It is a string.
            "                       �"
                The ID of the dvpn domain which the map belongs to.
                The dvpn ID is 0 means that the map has not been built.
                It has not gotten the dvpn ID at that time.
            "                       R"
                The time of the map created, the unit is second.
            "                       V"
                The private ip type (ipv4, ipv6) of map peer device.
            "                       D"
                The private ip of map peer device.
            "                       U"
                The public ip type (ipv4, ipv6) of map peer device.
            "                       C"
                The public ip of map peer device.
            "                       W"
                The private ip type (ipv4, ipv6) of map local device.
            "                       E"
                The private ip of map local device.
            "                       V"
                The public ip type (ipv4, ipv6) of map local device.
            "                       D"
                The public ip of map local device.
            "                       �"
                The user name used by the client registering to server.
                If the client is not been authenticated, this is a null string.
            "                       G"
                The udp port used by map peer device.
            "                       6"
                Dvpn map control ID.
            "                       o"
                The type of the map.
                'clientToclient' is not supported here.
            "                      �"
                mapClientInit: The client initiates the map.
                mapClientBegin: The client begins the process of registering
                                to the server.
                mapClientAlgreq: The client requests to negotiate the algorithm.
                mapClientKexReq: The client requests to negotiate the key.
                mapClientAuthenReq: The client sends authentication information
                                    to the server.
                mapClientConfigReq: The client requests to get some configuration
                                    information from the server. Do not support now.
                mapClientReq: The client requests to register to the server.
                mapClientSuccess: The client registers to the server successfully.
                mapServerBegin: The server begins the process of receive a new register.
                mapServerAlgorithm:The sever begins to negotiate Algorithm.
                mapServerKexInit: The server replys to the algorithm negotiation
                                  packet from the client successfully and begin
                                  to negotiate key.
                mapServerAuthenInit: The server replys to the key negotiation
                                     packet from the client successfully and
                                     begin to authenticate client, in the case of
                                     the authentication-client method is not none.
                mapServerConfigInit: The server send some configuration information
                                     to client. Do not support now.
                mapServerInit: The server replys to the authentication packet
                               from the client successfully and begin to receive
                               client information.
                mapServerFinished: The server receives client information successfully.
            "                       9"
                The dvpn session table.
            "                       C"
                The entry of h3cDvpnSessionTable.
            "                       Y"
                The ID of the dvpn domain which the session belongs to.
            "                       Y"
               The private ip type (ipv4, ipv6) of session peer device.
            "                       L"
                The private ip of the session peer device.
            "                       h"
                The device ID of session peer device.
                It is a string.
            "                       Z"
                The time of the Session being built, the unit is second.
            "                       Y"
                The public ip type (ipv4, ipv6) of session peer device.
            "                       G"
                The public ip of session peer device.
            "                       Y"
               The public ip type (ipv4, ipv6) of session local device.
            "                       G"
               The public ip of session local device.
            "                       Z"
               The private ip type (ipv4, ipv6) of session local device.
            "                       H"
               The private ip of session local device.
            "                       K"
               The udp port used by session peer device .
            "                       8"
                The flag of initiator.
            "                       �"
                The user's name.
                If the session type is client to client,
                the value of this object is a null string.
            "                      8"
                The state of the session.
                sessionSetupInit: The initiation of the session.
                sessionSetupReq: The initiator requests to negotiate the SA and
                                 so on of the session.
                sessionSetupSuccess: The session has been built successfully.
                sessionRekeyReq: The initiator requests to renegotiate the SA.
                sessionRekeyRep: The passive side replies with a SA renegotiation
                                 response packet successfully.
            "                       :"
                The type of the session.
            "                       ~"
                The type of the session peer device.
                It may be client software or a router.
            "                      "
                The dvpn session history table.
                This table contains session's history information,
                include input/output packet number, up/down time, etc.
                This table will exist during the 'h3cDvpnSessionHisAgeTime'.
            "                       F"
                The entry of h3cDvpnSessionHisTable.
            "                       Y"
                The ID of the dvpn domain which the session belongs to.
            "                       Z"
                The private ip type (ipv4, ipv6) of session peer device.
            "                       M"
                 The private ip of the session peer device.
            "                       L"
                The number of sent packets on the session.
            "                       P"
                The number of received packets on the session.
            "                       C"
                The number of the session online.
            "                       @"
                The session first online time.
            "                       ?"
                The session last online time.
            "                       ="
                The session last down time.
            "                       �"
                If the session is online, the value is 'yes'.
                If the session is not online, the value is 'no'.
            "                       a"
                The identifier of peer device.
                It is a string.
            "                               B"
                Dvpn session build notification.
            "                 D"
                Dvpn session deleted notification.
            "                 >"
                Dvpn map build notification.
            "                 @"
                Dvpn map deleted notification.
            "                         v"
                The compliance statement for entities which implement
                the DVPN MIB.
            "                   \"
                A collection of objects providing dvpn global information.
            "                 \"
                A collection of objects providing dvpn policy information.
            "                 \"
                A collection of objects providing dvpn domain information.
            "                 ["
                A collection of objects providing dvpn class information.
            "                 f"
                A collection of objects providing dvpn tunnel interface information.
            "                 Y"
                A collection of objects providing dvpn map information.
            "                 ]"
                A collection of objects providing dvpn session information.
            "                 e"
                A collection of objects providing dvpn session history information.
            "                 b"
                A collection of objects providing dvpn notification information.
            "                            