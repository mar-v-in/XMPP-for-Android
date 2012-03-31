.class public Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
.super Ljava/lang/Object;
.source "ResourceRecord.java"


# instance fields
.field private name:Ljava/lang/String;

.field private rData:Ljava/lang/Object;

.field private rrClass:I

.field private rrType:I

.field private ttl:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "rrType"
    .parameter "rrClass"
    .parameter "ttl"
    .parameter "rData"

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->name:Ljava/lang/String;

    .line 229
    iput p2, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    .line 230
    iput p3, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrClass:I

    .line 231
    iput-wide p4, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->ttl:J

    .line 233
    iput-object p6, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    .line 234
    return-void
.end method

.method public static parseRecord([BILorg/apache/harmony/jndi/provider/dns/ResourceRecord;)I
    .locals 34
    .parameter "mesBytes"
    .parameter "startIdx"
    .parameter "resultRR"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 54
    move/from16 v6, p1

    .line 55
    .local v6, idx:I
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 58
    .local v14, nameSB:Ljava/lang/StringBuffer;
    const/16 v18, 0x0

    .line 60
    .local v18, rDat:Ljava/lang/Object;
    if-nez p2, :cond_0

    .line 62
    new-instance v32, Ljava/lang/NullPointerException;

    const-string v33, "jndi.3F"

    invoke-static/range {v33 .. v33}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 65
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v6, v14}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 66
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->setName(Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v26

    .line 69
    .local v26, rrType:I
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->setRRType(I)V

    .line 70
    add-int/lit8 v6, v6, 0x2

    .line 72
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v32

    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->setRRClass(I)V

    .line 73
    add-int/lit8 v6, v6, 0x2

    .line 75
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse32Int([BI)J

    move-result-wide v32

    move-object/from16 v0, p2

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->setTtl(J)V

    .line 76
    add-int/lit8 v6, v6, 0x4

    .line 78
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v20

    .line 79
    .local v20, rdLen:I
    add-int/lit8 v6, v6, 0x2

    .line 81
    const/16 v32, 0x2

    move/from16 v0, v26

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 82
    const/16 v32, 0x5

    move/from16 v0, v26

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 83
    const/16 v32, 0xc

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 85
    :cond_1
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v13, name:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v6, v13}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 88
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 184
    .end local v13           #name:Ljava/lang/StringBuffer;
    .end local v18           #rDat:Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->setRData(Ljava/lang/Object;)V

    .line 185
    return v6

    .line 89
    .restart local v18       #rDat:Ljava/lang/Object;
    :cond_2
    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 91
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 93
    .local v30, tmpArr:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    const/16 v32, 0x4

    move/from16 v0, v32

    if-lt v5, v0, :cond_3

    .line 96
    invoke-static/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getIpStr([B)Ljava/lang/String;

    move-result-object v18

    .line 97
    .local v18, rDat:Ljava/lang/String;
    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 94
    .local v18, rDat:Ljava/lang/Object;
    :cond_3
    add-int v32, v6, v5

    aget-byte v32, p0, v32

    aput-byte v32, v30, v5

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 98
    .end local v5           #i:I
    .end local v30           #tmpArr:[B
    :cond_4
    const/16 v32, 0xf

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 101
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .restart local v13       #name:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v16

    .line 104
    .local v16, preference:I
    add-int/lit8 v6, v6, 0x2

    .line 105
    move-object/from16 v0, p0

    invoke-static {v0, v6, v13}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 106
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 107
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 106
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, rDat:Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v13           #name:Ljava/lang/StringBuffer;
    .end local v16           #preference:I
    .local v18, rDat:Ljava/lang/Object;
    :cond_5
    const/16 v32, 0x6

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 109
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v10, mName:Ljava/lang/StringBuffer;
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v19, rName:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v6, v10}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v6, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 119
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse32Int([BI)J

    move-result-wide v28

    .line 120
    .local v28, serial:J
    add-int/lit8 v6, v6, 0x4

    .line 121
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse32Int([BI)J

    move-result-wide v21

    .line 122
    .local v21, refresh:J
    add-int/lit8 v6, v6, 0x4

    .line 123
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse32Int([BI)J

    move-result-wide v24

    .line 124
    .local v24, retry:J
    add-int/lit8 v6, v6, 0x4

    .line 125
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse32Int([BI)J

    move-result-wide v3

    .line 126
    .local v3, expire:J
    add-int/lit8 v6, v6, 0x4

    .line 127
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse32Int([BI)J

    move-result-wide v11

    .line 128
    .local v11, minimum:J
    add-int/lit8 v6, v6, 0x4

    .line 129
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 130
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 131
    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 132
    move-object/from16 v0, v32

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 129
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, rDat:Ljava/lang/String;
    goto/16 :goto_0

    .line 133
    .end local v3           #expire:J
    .end local v10           #mName:Ljava/lang/StringBuffer;
    .end local v11           #minimum:J
    .end local v19           #rName:Ljava/lang/StringBuffer;
    .end local v21           #refresh:J
    .end local v24           #retry:J
    .end local v28           #serial:J
    .local v18, rDat:Ljava/lang/Object;
    :cond_6
    const/16 v32, 0x10

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 134
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v27, sbuf:Ljava/lang/StringBuilder;
    move v8, v6

    .line 138
    .local v8, idx0:I
    :goto_2
    add-int/lit8 v7, v6, 0x1

    .end local v6           #idx:I
    .local v7, idx:I
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse8Int([BI)I

    move-result v9

    .line 140
    .local v9, len11:I
    sub-int v32, v7, v8

    add-int v32, v32, v9

    move/from16 v0, v32

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    .line 141
    add-int/lit8 v6, v7, -0x1

    .line 150
    .end local v7           #idx:I
    .restart local v6       #idx:I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, rDat:Ljava/lang/String;
    goto/16 :goto_0

    .line 144
    .end local v6           #idx:I
    .restart local v7       #idx:I
    .local v18, rDat:Ljava/lang/Object;
    :cond_7
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    if-lez v32, :cond_8

    .line 145
    const/16 v32, 0x20

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_8
    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int v6, v7, v9

    .line 137
    .end local v7           #idx:I
    .restart local v6       #idx:I
    goto :goto_2

    .line 151
    .end local v8           #idx0:I
    .end local v9           #len11:I
    .end local v27           #sbuf:Ljava/lang/StringBuilder;
    :cond_9
    const/16 v32, 0xd

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 153
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v23, res:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseCharString([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 156
    const-string v32, " "

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v0, v6, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseCharString([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 158
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, rDat:Ljava/lang/String;
    goto/16 :goto_0

    .line 159
    .end local v23           #res:Ljava/lang/StringBuffer;
    .local v18, rDat:Ljava/lang/Object;
    :cond_a
    const/16 v32, 0x21

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 163
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .restart local v13       #name:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v17

    .line 166
    .local v17, priority:I
    add-int/lit8 v6, v6, 0x2

    .line 167
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v31

    .line 168
    .local v31, weight:I
    add-int/lit8 v6, v6, 0x2

    .line 169
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v15

    .line 170
    .local v15, port:I
    add-int/lit8 v6, v6, 0x2

    .line 171
    move-object/from16 v0, p0

    invoke-static {v0, v6, v13}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseName([BILjava/lang/StringBuffer;)I

    move-result v6

    .line 172
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 173
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 172
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, rDat:Ljava/lang/String;
    goto/16 :goto_0

    .line 179
    .end local v13           #name:Ljava/lang/StringBuffer;
    .end local v15           #port:I
    .end local v17           #priority:I
    .end local v31           #weight:I
    .local v18, rDat:Ljava/lang/Object;
    :cond_b
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 180
    .local v18, rDat:[B
    const/4 v5, 0x0

    .restart local v5       #i:I
    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    :goto_3
    move/from16 v0, v20

    if-lt v5, v0, :cond_c

    move v6, v7

    .end local v7           #idx:I
    .restart local v6       #idx:I
    goto/16 :goto_0

    .end local v6           #idx:I
    .restart local v7       #idx:I
    :cond_c
    move-object/from16 v32, v18

    .line 181
    check-cast v32, [B

    add-int/lit8 v6, v7, 0x1

    .end local v7           #idx:I
    .restart local v6       #idx:I
    aget-byte v33, p0, v7

    aput-byte v33, v32, v5

    .line 180
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6           #idx:I
    .restart local v7       #idx:I
    goto :goto_3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    return-object v0
.end method

.method public getRRClass()I
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrClass:I

    return v0
.end method

.method public getRRType()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    return v0
.end method

.method public getTtl()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->ttl:J

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 291
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->name:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setRData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 299
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    .line 300
    return-void
.end method

.method public setRRClass(I)V
    .locals 0
    .parameter "rrClass"

    .prologue
    .line 307
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrClass:I

    .line 308
    return-void
.end method

.method public setRRType(I)V
    .locals 0
    .parameter "rrType"

    .prologue
    .line 315
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    .line 316
    return-void
.end method

.method public setTtl(J)V
    .locals 0
    .parameter "ttl"

    .prologue
    .line 323
    iput-wide p1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->ttl:J

    .line 324
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    sget-object v1, Lorg/apache/harmony/jndi/provider/dns/ProviderConstants;->rrTypeNames:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget v1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TTL="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeBytes([BI)I
    .locals 13
    .parameter "buffer"
    .parameter "startIdx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 357
    move v4, p2

    .line 360
    .local v4, idx:I
    if-nez p1, :cond_0

    .line 362
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v11, "jndi.32"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 365
    :cond_0
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->name:Ljava/lang/String;

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeName(Ljava/lang/String;[BI)I

    move-result v4

    .line 367
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v4

    .line 369
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrClass:I

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v4

    .line 371
    iget-wide v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->ttl:J

    invoke-static {v10, v11, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write32Int(J[BI)I

    move-result v4

    .line 373
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    .line 374
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_1

    .line 375
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/16 v11, 0xc

    if-ne v10, v11, :cond_2

    .line 376
    :cond_1
    move v6, v4

    .line 378
    .local v6, idx0:I
    add-int/lit8 v4, v4, 0x2

    .line 380
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeName(Ljava/lang/String;[BI)I

    move-result v4

    .line 382
    add-int/lit8 v10, v4, -0x2

    sub-int/2addr v10, v6

    invoke-static {v10, p1, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    .line 540
    .end local v6           #idx0:I
    :goto_0
    return v4

    .line 383
    :cond_2
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 384
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseIpStr(Ljava/lang/String;)[B

    move-result-object v7

    .line 387
    .local v7, ipBytes:[B
    array-length v10, v7

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v4

    .line 388
    array-length v11, v7

    const/4 v10, 0x0

    move v5, v4

    .end local v4           #idx:I
    .local v5, idx:I
    :goto_1
    if-lt v10, v11, :cond_3

    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    goto :goto_0

    .end local v4           #idx:I
    .restart local v5       #idx:I
    :cond_3
    aget-byte v2, v7, v10

    .line 389
    .local v2, element:B
    add-int/lit8 v4, v5, 0x1

    .end local v5           #idx:I
    .restart local v4       #idx:I
    aput-byte v2, p1, v5

    .line 388
    add-int/lit8 v10, v10, 0x1

    move v5, v4

    .end local v4           #idx:I
    .restart local v5       #idx:I
    goto :goto_1

    .line 391
    .end local v2           #element:B
    .end local v5           #idx:I
    .end local v7           #ipBytes:[B
    .restart local v4       #idx:I
    :cond_4
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_7

    .line 392
    new-instance v8, Ljava/util/StringTokenizer;

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-direct {v8, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v8, st:Ljava/util/StringTokenizer;
    move v6, v4

    .line 396
    .restart local v6       #idx0:I
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_5

    .line 398
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v11, "jndi.35"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 400
    :cond_5
    add-int/lit8 v4, v4, 0x2

    .line 403
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 404
    .local v9, token:Ljava/lang/String;
    invoke-static {v9, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeName(Ljava/lang/String;[BI)I

    move-result v4

    .line 406
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 407
    invoke-static {v9, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeName(Ljava/lang/String;[BI)I

    move-result v4

    .line 414
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    const/4 v10, 0x5

    if-lt v3, v10, :cond_6

    .line 425
    add-int/lit8 v10, v4, -0x2

    sub-int/2addr v10, v6

    invoke-static {v10, p1, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    goto :goto_0

    .line 415
    :cond_6
    :try_start_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 416
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write32Int(J[BI)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 419
    :catch_0
    move-exception v1

    .line 421
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    .line 422
    const-string v11, "jndi.36"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 421
    invoke-direct {v10, v11, v1}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 426
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #i:I
    .end local v6           #idx0:I
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v9           #token:Ljava/lang/String;
    :cond_7
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/16 v11, 0xf

    if-ne v10, v11, :cond_9

    .line 427
    new-instance v8, Ljava/util/StringTokenizer;

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-direct {v8, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .restart local v8       #st:Ljava/util/StringTokenizer;
    move v6, v4

    .line 431
    .restart local v6       #idx0:I
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    .line 433
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v11, "jndi.37"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 435
    :cond_8
    add-int/lit8 v4, v4, 0x2

    .line 437
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 439
    .restart local v9       #token:Ljava/lang/String;
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 447
    invoke-static {v9, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeName(Ljava/lang/String;[BI)I

    move-result v4

    .line 449
    add-int/lit8 v10, v4, -0x2

    sub-int/2addr v10, v6

    invoke-static {v10, p1, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    goto/16 :goto_0

    .line 440
    :catch_1
    move-exception v1

    .line 442
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    .line 443
    const-string v11, "jndi.38"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 442
    invoke-direct {v10, v11, v1}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 450
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v6           #idx0:I
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v9           #token:Ljava/lang/String;
    :cond_9
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/16 v11, 0xd

    if-ne v10, v11, :cond_c

    .line 451
    new-instance v8, Ljava/util/StringTokenizer;

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-direct {v8, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .restart local v8       #st:Ljava/util/StringTokenizer;
    move v6, v4

    .line 455
    .restart local v6       #idx0:I
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_a

    .line 457
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v11, "jndi.39"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 459
    :cond_a
    add-int/lit8 v4, v4, 0x2

    .line 462
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    const/4 v10, 0x2

    if-lt v3, v10, :cond_b

    .line 467
    add-int/lit8 v10, v4, -0x2

    sub-int/2addr v10, v6

    invoke-static {v10, p1, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    goto/16 :goto_0

    .line 463
    :cond_b
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 464
    .restart local v9       #token:Ljava/lang/String;
    invoke-static {v9, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeCharString(Ljava/lang/String;[BI)I

    move-result v4

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 468
    .end local v3           #i:I
    .end local v6           #idx0:I
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v9           #token:Ljava/lang/String;
    :cond_c
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/16 v11, 0x10

    if-ne v10, v11, :cond_10

    .line 470
    move v6, v4

    .line 471
    .restart local v6       #idx0:I
    new-instance v8, Ljava/util/StringTokenizer;

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-direct {v8, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .restart local v8       #st:Ljava/util/StringTokenizer;
    add-int/lit8 v4, v4, 0x2

    .line 475
    :goto_4
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_d

    .line 485
    add-int/lit8 v10, v4, -0x2

    sub-int/2addr v10, v6

    const v11, 0xffff

    if-le v10, v11, :cond_f

    .line 487
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v11, "jndi.3B"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 476
    :cond_d
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 478
    .restart local v9       #token:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    const/16 v11, 0xff

    if-le v10, v11, :cond_e

    .line 480
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    .line 481
    const-string v11, "jndi.3A"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 480
    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 483
    :cond_e
    invoke-static {v9, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeCharString(Ljava/lang/String;[BI)I

    move-result v4

    goto :goto_4

    .line 490
    .end local v9           #token:Ljava/lang/String;
    :cond_f
    add-int/lit8 v10, v4, -0x2

    sub-int/2addr v10, v6

    invoke-static {v10, p1, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    goto/16 :goto_0

    .line 491
    .end local v6           #idx0:I
    .end local v8           #st:Ljava/util/StringTokenizer;
    :cond_10
    iget v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    const/16 v11, 0x21

    if-ne v10, v11, :cond_13

    .line 492
    new-instance v8, Ljava/util/StringTokenizer;

    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-string v11, " "

    invoke-direct {v8, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .restart local v8       #st:Ljava/util/StringTokenizer;
    move v6, v4

    .line 496
    .restart local v6       #idx0:I
    add-int/lit8 v4, v4, 0x2

    .line 497
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_11

    .line 499
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v11, "jndi.3C"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 507
    :cond_11
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    const/4 v10, 0x3

    if-lt v3, v10, :cond_12

    .line 518
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 519
    .restart local v9       #token:Ljava/lang/String;
    invoke-static {v9, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->writeName(Ljava/lang/String;[BI)I

    move-result v4

    .line 521
    add-int/lit8 v10, v4, -0x2

    sub-int/2addr v10, v6

    invoke-static {v10, p1, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    goto/16 :goto_0

    .line 508
    .end local v9           #token:Ljava/lang/String;
    :cond_12
    :try_start_2
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 509
    .restart local v9       #token:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 512
    .end local v9           #token:Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 514
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    .line 515
    const-string v11, "jndi.3D"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 514
    invoke-direct {v10, v11, v1}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v10

    .line 527
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #i:I
    .end local v6           #idx0:I
    .end local v8           #st:Ljava/util/StringTokenizer;
    :cond_13
    iget-object v10, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    instance-of v10, v10, [B

    if-nez v10, :cond_14

    .line 530
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    .line 531
    const-string v11, "jndi.3E"

    iget v12, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rrType:I

    .line 530
    invoke-static {v11, v12}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 533
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->rData:Ljava/lang/Object;

    check-cast v0, [B

    .line 535
    .local v0, bytes:[B
    array-length v10, v0

    invoke-static {v10, p1, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v4

    .line 536
    array-length v11, v0

    const/4 v10, 0x0

    move v5, v4

    .end local v4           #idx:I
    .restart local v5       #idx:I
    :goto_6
    if-lt v10, v11, :cond_15

    move v4, v5

    .end local v5           #idx:I
    .restart local v4       #idx:I
    goto/16 :goto_0

    .end local v4           #idx:I
    .restart local v5       #idx:I
    :cond_15
    aget-byte v2, v0, v10

    .line 537
    .restart local v2       #element:B
    add-int/lit8 v4, v5, 0x1

    .end local v5           #idx:I
    .restart local v4       #idx:I
    aput-byte v2, p1, v5

    .line 536
    add-int/lit8 v10, v10, 0x1

    move v5, v4

    .end local v4           #idx:I
    .restart local v5       #idx:I
    goto :goto_6
.end method
