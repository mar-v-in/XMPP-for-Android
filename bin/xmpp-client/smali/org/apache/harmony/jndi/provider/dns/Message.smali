.class public Lorg/apache/harmony/jndi/provider/dns/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private aa:Z

.field private additionalRRs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private anCount:I

.field private answerRRs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private arCount:I

.field private authorityRRs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private nsCount:I

.field private opCode:I

.field private qdCount:I

.field private qr:Z

.field private questionRecords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private rCode:I

.field private ra:Z

.field private rd:Z

.field private tc:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->id:I

    .line 136
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qr:Z

    .line 139
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->opCode:I

    .line 142
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->aa:Z

    .line 145
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->tc:Z

    .line 148
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rd:Z

    .line 151
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->ra:Z

    .line 156
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rCode:I

    .line 159
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qdCount:I

    .line 162
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->anCount:I

    .line 165
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->nsCount:I

    .line 168
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->arCount:I

    .line 170
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    .line 172
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    .line 174
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    .line 176
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    .line 180
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    .line 181
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    .line 182
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    .line 183
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    .line 184
    return-void
.end method

.method public constructor <init>(IZIZZZZIIIII)V
    .locals 2
    .parameter "id"
    .parameter "qr"
    .parameter "opCode"
    .parameter "aa"
    .parameter "tc"
    .parameter "rd"
    .parameter "ra"
    .parameter "rCode"
    .parameter "qdCount"
    .parameter "anCount"
    .parameter "nsCount"
    .parameter "arCount"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->id:I

    .line 136
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qr:Z

    .line 139
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->opCode:I

    .line 142
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->aa:Z

    .line 145
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->tc:Z

    .line 148
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rd:Z

    .line 151
    iput-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->ra:Z

    .line 156
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rCode:I

    .line 159
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qdCount:I

    .line 162
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->anCount:I

    .line 165
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->nsCount:I

    .line 168
    iput v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->arCount:I

    .line 170
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    .line 172
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    .line 174
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    .line 176
    iput-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    .line 217
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->id:I

    .line 218
    iput-boolean p2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qr:Z

    .line 219
    iput p3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->opCode:I

    .line 220
    iput-boolean p4, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->aa:Z

    .line 221
    iput-boolean p5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->tc:Z

    .line 222
    iput-boolean p6, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rd:Z

    .line 223
    iput-boolean p7, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->ra:Z

    .line 224
    iput p8, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rCode:I

    .line 225
    iput p9, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qdCount:I

    .line 226
    iput p10, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->anCount:I

    .line 227
    iput p11, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->nsCount:I

    .line 228
    iput p12, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->arCount:I

    .line 229
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    .line 230
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    .line 231
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    .line 232
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    .line 233
    return-void
.end method

.method public static parseMessage([BILorg/apache/harmony/jndi/provider/dns/Message;)I
    .locals 12
    .parameter "mesBytes"
    .parameter "startIdx"
    .parameter "mesObj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 55
    move v3, p1

    .line 62
    .local v3, idx:I
    if-nez p2, :cond_0

    .line 64
    new-instance v10, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v11, "jndi.58"

    invoke-static {v11}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 68
    :cond_0
    invoke-static {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v10

    invoke-virtual {p2, v10}, Lorg/apache/harmony/jndi/provider/dns/Message;->setId(I)V

    .line 69
    add-int/lit8 v3, v3, 0x2

    .line 71
    invoke-static {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v8

    .line 72
    .local v8, tmp:I
    add-int/lit8 v3, v3, 0x2

    .line 74
    const v10, 0x8000

    invoke-static {v8, v10}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->checkBit(II)Z

    move-result v10

    invoke-virtual {p2, v10}, Lorg/apache/harmony/jndi/provider/dns/Message;->setQR(Z)V

    .line 76
    and-int/lit16 v10, v8, 0x7800

    shr-int/lit8 v9, v10, 0xb

    .line 77
    .local v9, tmp2:I
    invoke-virtual {p2, v9}, Lorg/apache/harmony/jndi/provider/dns/Message;->setOpCode(I)V

    .line 79
    const/16 v10, 0x400

    invoke-static {v8, v10}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->checkBit(II)Z

    move-result v10

    invoke-virtual {p2, v10}, Lorg/apache/harmony/jndi/provider/dns/Message;->setAA(Z)V

    .line 81
    const/16 v10, 0x200

    invoke-static {v8, v10}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->checkBit(II)Z

    move-result v10

    invoke-virtual {p2, v10}, Lorg/apache/harmony/jndi/provider/dns/Message;->setTc(Z)V

    .line 83
    const/16 v10, 0x100

    invoke-static {v8, v10}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->checkBit(II)Z

    move-result v10

    invoke-virtual {p2, v10}, Lorg/apache/harmony/jndi/provider/dns/Message;->setRD(Z)V

    .line 85
    const/16 v10, 0x80

    invoke-static {v8, v10}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->checkBit(II)Z

    move-result v10

    invoke-virtual {p2, v10}, Lorg/apache/harmony/jndi/provider/dns/Message;->setRA(Z)V

    .line 87
    and-int/lit8 v10, v8, 0xf

    shr-int/lit8 v9, v10, 0x0

    .line 88
    invoke-virtual {p2, v9}, Lorg/apache/harmony/jndi/provider/dns/Message;->setRCode(I)V

    .line 90
    invoke-static {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v5

    .line 91
    .local v5, qdCnt:I
    invoke-virtual {p2, v5}, Lorg/apache/harmony/jndi/provider/dns/Message;->setQDCount(I)V

    .line 92
    add-int/lit8 v3, v3, 0x2

    .line 94
    invoke-static {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v0

    .line 95
    .local v0, anCnt:I
    invoke-virtual {p2, v0}, Lorg/apache/harmony/jndi/provider/dns/Message;->setANCount(I)V

    .line 96
    add-int/lit8 v3, v3, 0x2

    .line 98
    invoke-static {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v4

    .line 99
    .local v4, nsCnt:I
    invoke-virtual {p2, v4}, Lorg/apache/harmony/jndi/provider/dns/Message;->setNSCount(I)V

    .line 100
    add-int/lit8 v3, v3, 0x2

    .line 102
    invoke-static {p0, v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parse16Int([BI)I

    move-result v1

    .line 103
    .local v1, arCnt:I
    invoke-virtual {p2, v1}, Lorg/apache/harmony/jndi/provider/dns/Message;->setARCount(I)V

    .line 104
    add-int/lit8 v3, v3, 0x2

    .line 106
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v5, :cond_1

    .line 112
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_2

    .line 118
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v4, :cond_3

    .line 124
    const/4 v2, 0x0

    :goto_3
    if-lt v2, v1, :cond_4

    .line 129
    return v3

    .line 107
    :cond_1
    new-instance v6, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    invoke-direct {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;-><init>()V

    .line 108
    .local v6, qr:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    invoke-static {p0, v3, v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->parseRecord([BILorg/apache/harmony/jndi/provider/dns/QuestionRecord;)I

    move-result v3

    .line 109
    invoke-virtual {p2, v6}, Lorg/apache/harmony/jndi/provider/dns/Message;->addQuestionRecord(Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;)V

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v6           #qr:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    :cond_2
    new-instance v7, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    invoke-direct {v7}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;-><init>()V

    .line 114
    .local v7, rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-static {p0, v3, v7}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->parseRecord([BILorg/apache/harmony/jndi/provider/dns/ResourceRecord;)I

    move-result v3

    .line 115
    invoke-virtual {p2, v7}, Lorg/apache/harmony/jndi/provider/dns/Message;->addAnswerRR(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v7           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_3
    new-instance v7, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    invoke-direct {v7}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;-><init>()V

    .line 120
    .restart local v7       #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-static {p0, v3, v7}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->parseRecord([BILorg/apache/harmony/jndi/provider/dns/ResourceRecord;)I

    move-result v3

    .line 121
    invoke-virtual {p2, v7}, Lorg/apache/harmony/jndi/provider/dns/Message;->addAuthorityRR(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 125
    .end local v7           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_4
    new-instance v7, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    invoke-direct {v7}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;-><init>()V

    .line 126
    .restart local v7       #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-static {p0, v3, v7}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->parseRecord([BILorg/apache/harmony/jndi/provider/dns/ResourceRecord;)I

    move-result v3

    .line 127
    invoke-virtual {p2, v7}, Lorg/apache/harmony/jndi/provider/dns/Message;->addAdditionalRR(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method public addAdditionalRR(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V
    .locals 1
    .parameter "rr"

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public addAnswerRR(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V
    .locals 1
    .parameter "rr"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public addAuthorityRR(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V
    .locals 1
    .parameter "rr"

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public addQuestionRecord(Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;)V
    .locals 1
    .parameter "qr"

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method public getANCount()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->anCount:I

    return v0
.end method

.method public getARCount()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->arCount:I

    return v0
.end method

.method public getAdditionalRRs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAnswerRRs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorityRRs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->id:I

    return v0
.end method

.method public getNSCount()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->nsCount:I

    return v0
.end method

.method public getOpCode()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->opCode:I

    return v0
.end method

.method public getQDCount()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qdCount:I

    return v0
.end method

.method public getQR()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qr:Z

    return v0
.end method

.method public getQuestionRecords()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRCode()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rCode:I

    return v0
.end method

.method public isAA()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->aa:Z

    return v0
.end method

.method public isRA()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->ra:Z

    return v0
.end method

.method public isRD()Z
    .locals 1

    .prologue
    .line 377
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rd:Z

    return v0
.end method

.method public isTc()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->tc:Z

    return v0
.end method

.method public setAA(Z)V
    .locals 0
    .parameter "aa"

    .prologue
    .line 392
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->aa:Z

    .line 393
    return-void
.end method

.method public setANCount(I)V
    .locals 0
    .parameter "anCount"

    .prologue
    .line 400
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->anCount:I

    .line 401
    return-void
.end method

.method public setARCount(I)V
    .locals 0
    .parameter "arCount"

    .prologue
    .line 408
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->arCount:I

    .line 409
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 416
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->id:I

    .line 417
    return-void
.end method

.method public setNSCount(I)V
    .locals 0
    .parameter "nsCount"

    .prologue
    .line 424
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->nsCount:I

    .line 425
    return-void
.end method

.method public setOpCode(I)V
    .locals 0
    .parameter "opCode"

    .prologue
    .line 432
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->opCode:I

    .line 433
    return-void
.end method

.method public setQDCount(I)V
    .locals 0
    .parameter "qdCount"

    .prologue
    .line 440
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qdCount:I

    .line 441
    return-void
.end method

.method public setQR(Z)V
    .locals 0
    .parameter "qr"

    .prologue
    .line 448
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qr:Z

    .line 449
    return-void
.end method

.method public setRA(Z)V
    .locals 0
    .parameter "ra"

    .prologue
    .line 456
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->ra:Z

    .line 457
    return-void
.end method

.method public setRCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 464
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rCode:I

    .line 465
    return-void
.end method

.method public setRD(Z)V
    .locals 0
    .parameter "rd"

    .prologue
    .line 472
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rd:Z

    .line 473
    return-void
.end method

.method public setTc(Z)V
    .locals 0
    .parameter "tc"

    .prologue
    .line 480
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->tc:Z

    .line 481
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v1, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qr:Z

    if-eqz v2, :cond_0

    .line 493
    const-string v2, " QR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " OPCODE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->opCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->aa:Z

    if-eqz v2, :cond_1

    .line 497
    const-string v2, " AA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_1
    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->tc:Z

    if-eqz v2, :cond_2

    .line 500
    const-string v2, " TC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    :cond_2
    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rd:Z

    if-eqz v2, :cond_3

    .line 503
    const-string v2, " RD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_3
    iget-boolean v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->ra:Z

    if-eqz v2, :cond_4

    .line 506
    const-string v2, " RA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " RCODE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QDCOUNT="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    .line 515
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ANCOUNT="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->anCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_6

    .line 521
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " NSCOUNT="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->nsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    .line 527
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ARCOUNT="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->arCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_8

    .line 533
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 512
    :cond_5
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 518
    :cond_6
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 524
    :cond_7
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 530
    :cond_8
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public writeBytes([BI)I
    .locals 7
    .parameter "buffer"
    .parameter "startIdx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 549
    move v1, p2

    .line 550
    .local v1, idx:I
    const/4 v4, 0x0

    .line 553
    .local v4, tmp:I
    if-nez p1, :cond_0

    .line 555
    new-instance v5, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v6, "jndi.32"

    invoke-static {v6}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 558
    :cond_0
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->id:I

    invoke-static {v5, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v1

    .line 560
    const v5, 0x8000

    iget-boolean v6, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qr:Z

    invoke-static {v4, v5, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->setBit(IIZ)I

    move-result v4

    .line 562
    and-int/lit16 v4, v4, -0x7801

    .line 563
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->opCode:I

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    .line 565
    const/16 v5, 0x400

    iget-boolean v6, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->aa:Z

    invoke-static {v4, v5, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->setBit(IIZ)I

    move-result v4

    .line 567
    const/16 v5, 0x200

    iget-boolean v6, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->tc:Z

    invoke-static {v4, v5, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->setBit(IIZ)I

    move-result v4

    .line 569
    const/16 v5, 0x100

    iget-boolean v6, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rd:Z

    invoke-static {v4, v5, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->setBit(IIZ)I

    move-result v4

    .line 571
    const/16 v5, 0x80

    iget-boolean v6, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->ra:Z

    invoke-static {v4, v5, v6}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->setBit(IIZ)I

    move-result v4

    .line 573
    and-int/lit8 v4, v4, -0x71

    .line 575
    and-int/lit8 v4, v4, -0x10

    .line 576
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->rCode:I

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x0

    or-int/2addr v4, v5

    .line 578
    invoke-static {v4, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v1

    .line 580
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->qdCount:I

    invoke-static {v5, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v1

    .line 582
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->anCount:I

    invoke-static {v5, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v1

    .line 584
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->nsCount:I

    invoke-static {v5, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v1

    .line 586
    iget v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->arCount:I

    invoke-static {v5, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->write16Int(I[BI)I

    move-result v1

    .line 588
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 594
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 600
    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->authorityRRs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_3

    .line 606
    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->additionalRRs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v0, v5, :cond_4

    .line 611
    return v1

    .line 589
    :cond_1
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->questionRecords:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    .line 591
    .local v2, qr:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    invoke-virtual {v2, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->writeBytes([BI)I

    move-result v1

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v2           #qr:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 597
    .local v3, rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual {v3, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->writeBytes([BI)I

    move-result v1

    .line 594
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    .end local v3           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_3
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 603
    .restart local v3       #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual {v3, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->writeBytes([BI)I

    move-result v1

    .line 600
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 607
    .end local v3           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_4
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Message;->answerRRs:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 609
    .restart local v3       #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual {v3, p1, v1}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->writeBytes([BI)I

    move-result v1

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
