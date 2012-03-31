.class public Lde/javawi/jstun/test/demo/ice/ICENegociator;
.super Ljava/lang/Object;
.source "ICENegociator.java"


# static fields
.field private static final LOCAL_PREFERENCE:I = 0x0

.field private static final PEER_REFLEXIVE_PREFERENCE:I = 0x54

.field private static final RELAYED_PREFERENCE:I = 0x7e

.field private static final SERVER_REFLEXIVE_PREFERENCE:I = 0x2a


# instance fields
.field candidates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lde/javawi/jstun/test/demo/ice/Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private final componentId:S

.field private stunPort:I

.field private stunServer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IS)V
    .locals 1
    .parameter "stunServer"
    .parameter "stunPort"
    .parameter "componentId"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "jstun.javawi.de"

    iput-object v0, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunServer:Ljava/lang/String;

    .line 59
    const/16 v0, 0xd96

    iput v0, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunPort:I

    .line 70
    iput-object p1, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunServer:Ljava/lang/String;

    .line 71
    iput p2, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunPort:I

    .line 72
    iput-short p3, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->componentId:S

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    .line 74
    return-void
.end method

.method public constructor <init>(S)V
    .locals 1
    .parameter "componentId"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "jstun.javawi.de"

    iput-object v0, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunServer:Ljava/lang/String;

    .line 59
    const/16 v0, 0xd96

    iput v0, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunPort:I

    .line 65
    iput-short p1, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->componentId:S

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    .line 67
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 43
    new-instance v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lde/javawi/jstun/test/demo/ice/ICENegociator;-><init>(S)V

    .line 45
    .local v0, cc:Lde/javawi/jstun/test/demo/ice/ICENegociator;
    invoke-virtual {v0}, Lde/javawi/jstun/test/demo/ice/ICENegociator;->gatherCandidateAddresses()V

    .line 47
    invoke-virtual {v0}, Lde/javawi/jstun/test/demo/ice/ICENegociator;->prioritizeCandidates()V

    .line 53
    return-void
.end method


# virtual methods
.method public gatherCandidateAddresses()V
    .locals 20

    .prologue
    .line 85
    :try_start_0
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    .line 87
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 88
    .local v8, ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-nez v17, :cond_1

    .line 133
    .end local v8           #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    return-void

    .line 89
    .restart local v8       #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/NetworkInterface;

    .line 91
    .local v7, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v7}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    .line 92
    .local v6, iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 93
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 94
    .local v5, iaddress:Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v17

    if-nez v17, :cond_2

    .line 95
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    if-nez v17, :cond_2

    .line 98
    :try_start_1
    new-instance v10, Lde/javawi/jstun/test/demo/ice/Candidate;

    new-instance v17, Lde/javawi/jstun/util/Address;

    .line 99
    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lde/javawi/jstun/util/Address;-><init>([B)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->componentId:S

    move/from16 v18, v0

    .line 98
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Lde/javawi/jstun/test/demo/ice/Candidate;-><init>(Lde/javawi/jstun/util/Address;S)V

    .line 100
    .local v10, local:Lde/javawi/jstun/test/demo/ice/Candidate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v14, Lde/javawi/jstun/test/DiscoveryTest;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunServer:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->stunPort:I

    move/from16 v18, v0

    .line 102
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v5, v0, v1}, Lde/javawi/jstun/test/DiscoveryTest;-><init>(Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 104
    .local v14, test:Lde/javawi/jstun/test/DiscoveryTest;
    invoke-virtual {v14}, Lde/javawi/jstun/test/DiscoveryTest;->test()Lde/javawi/jstun/test/DiscoveryInfo;

    move-result-object v4

    .line 105
    .local v4, di:Lde/javawi/jstun/test/DiscoveryInfo;
    invoke-virtual {v4}, Lde/javawi/jstun/test/DiscoveryInfo;->getPublicIP()Ljava/net/InetAddress;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 106
    new-instance v3, Lde/javawi/jstun/test/demo/ice/Candidate;

    .line 107
    new-instance v17, Lde/javawi/jstun/util/Address;

    invoke-virtual {v4}, Lde/javawi/jstun/test/DiscoveryInfo;->getPublicIP()Ljava/net/InetAddress;

    move-result-object v18

    .line 108
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v18

    .line 107
    invoke-direct/range {v17 .. v18}, Lde/javawi/jstun/util/Address;-><init>([B)V

    .line 109
    sget-object v18, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ServerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    .line 110
    move-object/from16 v0, p0

    iget-short v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->componentId:S

    move/from16 v19, v0

    .line 106
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v3, v0, v1, v2, v10}, Lde/javawi/jstun/test/demo/ice/Candidate;-><init>(Lde/javawi/jstun/util/Address;Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;SLde/javawi/jstun/test/demo/ice/Candidate;)V

    .line 111
    .local v3, cand:Lde/javawi/jstun/test/demo/ice/Candidate;
    move-object/from16 v0, p0

    iget-short v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->componentId:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lde/javawi/jstun/test/demo/ice/Candidate;->setComponentId(S)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lde/javawi/jstun/header/MessageHeaderParsingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lde/javawi/jstun/attribute/MessageAttributeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lde/javawi/jstun/util/UtilityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto/16 :goto_1

    .line 114
    .end local v3           #cand:Lde/javawi/jstun/test/demo/ice/Candidate;
    .end local v4           #di:Lde/javawi/jstun/test/DiscoveryInfo;
    .end local v10           #local:Lde/javawi/jstun/test/demo/ice/Candidate;
    .end local v14           #test:Lde/javawi/jstun/test/DiscoveryTest;
    :catch_0
    move-exception v12

    .line 115
    .local v12, mhpe:Lde/javawi/jstun/header/MessageHeaderParsingException;
    :try_start_2
    invoke-virtual {v12}, Lde/javawi/jstun/header/MessageHeaderParsingException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 130
    .end local v5           #iaddress:Ljava/net/InetAddress;
    .end local v6           #iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v7           #iface:Ljava/net/NetworkInterface;
    .end local v8           #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v12           #mhpe:Lde/javawi/jstun/header/MessageHeaderParsingException;
    :catch_1
    move-exception v13

    .line 131
    .local v13, se:Ljava/net/SocketException;
    invoke-virtual {v13}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_0

    .line 116
    .end local v13           #se:Ljava/net/SocketException;
    .restart local v5       #iaddress:Ljava/net/InetAddress;
    .restart local v6       #iaddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v7       #iface:Ljava/net/NetworkInterface;
    .restart local v8       #ifaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_2
    move-exception v11

    .line 117
    .local v11, mae:Lde/javawi/jstun/attribute/MessageAttributeException;
    :try_start_3
    invoke-virtual {v11}, Lde/javawi/jstun/attribute/MessageAttributeException;->printStackTrace()V

    goto/16 :goto_1

    .line 118
    .end local v11           #mae:Lde/javawi/jstun/attribute/MessageAttributeException;
    :catch_3
    move-exception v15

    .line 119
    .local v15, ue:Lde/javawi/jstun/util/UtilityException;
    invoke-virtual {v15}, Lde/javawi/jstun/util/UtilityException;->printStackTrace()V

    goto/16 :goto_1

    .line 120
    .end local v15           #ue:Lde/javawi/jstun/util/UtilityException;
    :catch_4
    move-exception v16

    .line 121
    .local v16, uhe:Ljava/net/UnknownHostException;
    invoke-virtual/range {v16 .. v16}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_1

    .line 122
    .end local v16           #uhe:Ljava/net/UnknownHostException;
    :catch_5
    move-exception v13

    .line 123
    .restart local v13       #se:Ljava/net/SocketException;
    invoke-virtual {v13}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_1

    .line 124
    .end local v13           #se:Ljava/net/SocketException;
    :catch_6
    move-exception v9

    .line 125
    .local v9, ioe:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public getSortedCandidates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/javawi/jstun/test/demo/ice/Candidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/util/Vector;

    .line 137
    iget-object v1, p0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    .line 136
    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v0, sortedCandidates:Ljava/util/Vector;,"Ljava/util/Vector<Lde/javawi/jstun/test/demo/ice/Candidate;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 139
    return-object v0
.end method

.method public prioritizeCandidates()V
    .locals 18

    .prologue
    .line 144
    const/4 v5, 0x0

    .line 145
    .local v5, numberLocal:I
    const/4 v11, 0x0

    .line 146
    .local v11, numberServerReflexive:I
    const/4 v7, 0x0

    .line 147
    .local v7, numberPeerReflexive:I
    const/4 v9, 0x0

    .line 149
    .local v9, numberRelayed:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 150
    .local v3, iterCandidates:Ljava/util/Iterator;,"Ljava/util/Iterator<Lde/javawi/jstun/test/demo/ice/Candidate;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_1

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/javawi/jstun/test/demo/ice/ICENegociator;->candidates:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_5

    .line 189
    return-void

    .line 151
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/javawi/jstun/test/demo/ice/Candidate;

    .line 152
    .local v1, cand:Lde/javawi/jstun/test/demo/ice/Candidate;
    invoke-virtual {v1}, Lde/javawi/jstun/test/demo/ice/Candidate;->getCandidateType()Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-result-object v14

    .line 153
    .local v14, type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Local:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_2

    .line 154
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_2
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ServerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 156
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 157
    :cond_3
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->PeerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_4

    .line 158
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 159
    :cond_4
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Relayed:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_0

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 166
    .end local v1           #cand:Lde/javawi/jstun/test/demo/ice/Candidate;
    .end local v14           #type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    :cond_5
    const/4 v15, 0x0

    .line 167
    .local v15, typeValue:I
    const/4 v4, 0x0

    .line 168
    .local v4, localValue:I
    const/4 v2, 0x0

    .line 169
    .local v2, componentValue:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/javawi/jstun/test/demo/ice/Candidate;

    .line 170
    .restart local v1       #cand:Lde/javawi/jstun/test/demo/ice/Candidate;
    invoke-virtual {v1}, Lde/javawi/jstun/test/demo/ice/Candidate;->getCandidateType()Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-result-object v14

    .line 171
    .restart local v14       #type:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Local:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 172
    const/4 v15, 0x0

    .line 173
    add-int/lit8 v6, v5, -0x1

    .end local v5           #numberLocal:I
    .local v6, numberLocal:I
    move v4, v5

    move v5, v6

    .line 184
    .end local v6           #numberLocal:I
    .restart local v5       #numberLocal:I
    :cond_6
    :goto_2
    invoke-virtual {v1}, Lde/javawi/jstun/test/demo/ice/Candidate;->getComponentId()S

    move-result v2

    .line 185
    mul-int/lit8 v16, v15, 0x1a

    .line 186
    mul-int/lit8 v17, v4, 0xa

    .line 185
    add-int v16, v16, v17

    add-int v13, v16, v2

    .line 187
    .local v13, priority:I
    invoke-virtual {v1, v13}, Lde/javawi/jstun/test/demo/ice/Candidate;->setPriority(I)V

    goto :goto_1

    .line 174
    .end local v13           #priority:I
    :cond_7
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->ServerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_8

    .line 175
    const/16 v15, 0x2a

    .line 176
    add-int/lit8 v12, v11, -0x1

    .end local v11           #numberServerReflexive:I
    .local v12, numberServerReflexive:I
    move v4, v11

    move v11, v12

    .end local v12           #numberServerReflexive:I
    .restart local v11       #numberServerReflexive:I
    goto :goto_2

    .line 177
    :cond_8
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->PeerReflexive:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_9

    .line 178
    const/16 v15, 0x54

    .line 179
    add-int/lit8 v8, v7, -0x1

    .end local v7           #numberPeerReflexive:I
    .local v8, numberPeerReflexive:I
    move v4, v7

    move v7, v8

    .end local v8           #numberPeerReflexive:I
    .restart local v7       #numberPeerReflexive:I
    goto :goto_2

    .line 180
    :cond_9
    sget-object v16, Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;->Relayed:Lde/javawi/jstun/test/demo/ice/Candidate$CandidateType;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 181
    const/16 v15, 0x7e

    .line 182
    add-int/lit8 v10, v9, -0x1

    .end local v9           #numberRelayed:I
    .local v10, numberRelayed:I
    move v4, v9

    move v9, v10

    .end local v10           #numberRelayed:I
    .restart local v9       #numberRelayed:I
    goto :goto_2
.end method
