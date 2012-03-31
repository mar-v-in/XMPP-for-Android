.class public Lorg/apache/harmony/jndi/provider/dns/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;,
        Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;,
        Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;
    }
.end annotation


# static fields
.field private static final MSG_MAX_BYTES:I = 0x200

.field private static final rndGen:Ljava/util/Random;


# instance fields
.field private authoritativeAnswerDesired:Z

.field private final hostnamesToResolve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private initialTimeout:I

.field private recursionDesired:Z

.field private final resolverThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final threadListSemaphore:Ljava/lang/Object;

.field private threadNumberLimit:I

.field private timeoutRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->rndGen:Ljava/util/Random;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 175
    const/16 v1, 0x3e8

    .line 176
    const/4 v2, 0x4

    .line 177
    const/4 v3, 0x7

    .line 178
    const/4 v4, 0x0

    .line 179
    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/jndi/provider/dns/Resolver;-><init>(IIIZZ)V

    .line 180
    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 2
    .parameter "initialTimeout"
    .parameter "timeoutRetries"
    .parameter "maxThreads"
    .parameter "authoritativeAnswerDesired"
    .parameter "recursionDesired"

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->hostnamesToResolve:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;-><init>(Lorg/apache/harmony/jndi/provider/dns/Resolver;Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;)V

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadListSemaphore:Ljava/lang/Object;

    .line 202
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->initialTimeout:I

    .line 203
    iput p2, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->timeoutRetries:I

    .line 204
    iput p3, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadNumberLimit:I

    .line 205
    iput-boolean p4, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->authoritativeAnswerDesired:Z

    .line 206
    iput-boolean p5, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->recursionDesired:Z

    .line 207
    return-void
.end method

.method static createMessageForSending(Ljava/lang/String;II)Lorg/apache/harmony/jndi/provider/dns/Message;
    .locals 6
    .parameter "desiredName"
    .parameter "recType"
    .parameter "recClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    new-instance v0, Lorg/apache/harmony/jndi/provider/dns/Message;

    invoke-direct {v0}, Lorg/apache/harmony/jndi/provider/dns/Message;-><init>()V

    .line 133
    .local v0, mes:Lorg/apache/harmony/jndi/provider/dns/Message;
    new-instance v1, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;-><init>()V

    .line 135
    .local v1, qr:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    sget-object v2, Lorg/apache/harmony/jndi/provider/dns/Resolver;->rndGen:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/harmony/jndi/provider/dns/Message;->setId(I)V

    .line 136
    invoke-virtual {v0, v4}, Lorg/apache/harmony/jndi/provider/dns/Message;->setQR(Z)V

    .line 137
    invoke-virtual {v0, v4}, Lorg/apache/harmony/jndi/provider/dns/Message;->setOpCode(I)V

    .line 138
    invoke-virtual {v0, v5}, Lorg/apache/harmony/jndi/provider/dns/Message;->setRD(Z)V

    .line 139
    invoke-virtual {v0, v5}, Lorg/apache/harmony/jndi/provider/dns/Message;->setQDCount(I)V

    .line 140
    invoke-virtual {v1, p0}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->setQName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, p1}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->setQType(I)V

    .line 142
    invoke-virtual {v1, p2}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->setQClass(I)V

    .line 143
    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/Message;->addQuestionRecord(Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;)V

    .line 144
    return-object v0
.end method


# virtual methods
.method public addInitialServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "ip"
    .parameter "port"
    .parameter "zoneName"

    .prologue
    .line 222
    new-instance v1, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    .local v1, server:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    invoke-static {}, Lorg/apache/harmony/jndi/provider/dns/SList;->getInstance()Lorg/apache/harmony/jndi/provider/dns/SList;

    move-result-object v2

    .line 225
    .local v2, slist:Lorg/apache/harmony/jndi/provider/dns/SList;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 227
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "jndi.6F"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_0
    if-nez p4, :cond_1

    .line 231
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "jndi.70"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {v2, p1}, Lorg/apache/harmony/jndi/provider/dns/SList;->hasServer(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 236
    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/TransportMgr;->getIPByName_OS(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 238
    .local v0, addrObj:Ljava/net/InetAddress;
    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getIpStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->setIP(Ljava/lang/String;)V

    .line 243
    .end local v0           #addrObj:Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {v2, p4, v1}, Lorg/apache/harmony/jndi/provider/dns/SList;->hasServer(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 244
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->UNKNOWN:I

    invoke-virtual {v2, p4, v1, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 246
    :cond_3
    return-void
.end method

.method analyzeAnswer(Lorg/apache/harmony/jndi/provider/dns/Message;Lorg/apache/harmony/jndi/provider/dns/Message;)Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;
    .locals 35
    .parameter "request"
    .parameter "answer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 261
    .line 262
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/jndi/provider/dns/Message;->getQuestionRecords()Ljava/util/Enumeration;

    move-result-object v19

    .line 263
    .local v19, questions:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAnswerRRs()Ljava/util/Enumeration;

    move-result-object v7

    .line 265
    .local v7, answerRRs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAuthorityRRs()Ljava/util/Enumeration;

    move-result-object v9

    .line 268
    .local v9, authorityRRs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    new-instance v21, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;

    invoke-direct/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;-><init>()V

    .line 271
    .local v21, report:Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/jndi/provider/dns/Message;->getId()I

    move-result v33

    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getId()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_0

    .line 273
    new-instance v33, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;

    const-string v34, "jndi.72"

    invoke-static/range {v34 .. v34}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 277
    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 278
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    .line 284
    .local v18, question:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getRCode()I

    move-result v33

    const/16 v34, 0x3

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_3

    .line 285
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->nameError:Z

    .line 570
    :cond_1
    return-object v21

    .line 281
    .end local v18           #question:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    :cond_2
    new-instance v33, Ljava/lang/IllegalArgumentException;

    const-string v34, "jndi.73"

    invoke-static/range {v34 .. v34}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 289
    .restart local v18       #question:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->isTc()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 290
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->messageWasTruncated:Z

    .line 293
    :cond_4
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v33

    if-nez v33, :cond_6

    .line 450
    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v33

    if-nez v33, :cond_10

    .line 499
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAdditionalRRs()Ljava/util/Enumeration;

    move-result-object v5

    .line 500
    .local v5, additionalRRs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v33

    if-nez v33, :cond_14

    .line 516
    const/4 v13, 0x0

    .local v13, k:I
    :goto_3
    const/16 v33, 0x2

    move/from16 v0, v33

    if-ge v13, v0, :cond_1

    .line 517
    const/16 v20, 0x0

    .line 518
    .local v20, records:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 520
    .local v17, processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    packed-switch v13, :pswitch_data_0

    .line 528
    :goto_4
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v0, v33

    if-lt v11, v0, :cond_15

    .line 516
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 294
    .end local v5           #additionalRRs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v11           #i:I
    .end local v13           #k:I
    .end local v17           #processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v20           #records:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_6
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 296
    .local v10, curRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v33

    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_7

    .line 297
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v33

    const/16 v34, 0xff

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 298
    :cond_7
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v33

    const/16 v34, 0xff

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 299
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v33

    .line 300
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQName()Ljava/lang/String;

    move-result-object v34

    .line 299
    invoke-static/range {v33 .. v34}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_9

    .line 308
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v33

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 315
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->aliasInfoWasReceived:Z

    .line 316
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->newName:Ljava/lang/String;

    goto/16 :goto_0

    .line 323
    :cond_8
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->completeAnswerWasReceived:Z

    goto/16 :goto_0

    .line 325
    :cond_9
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v33

    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 326
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQName()Ljava/lang/String;

    move-result-object v33

    .line 327
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v34

    .line 326
    invoke-static/range {v33 .. v34}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 332
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 338
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->completeAnswerWasReceived:Z

    goto/16 :goto_0

    .line 339
    :cond_a
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v33

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 340
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v33

    .line 341
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQName()Ljava/lang/String;

    move-result-object v34

    .line 340
    invoke-static/range {v33 .. v34}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_e

    .line 353
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAnswerRRs()Ljava/util/Enumeration;

    move-result-object v8

    .line 355
    .local v8, answerRRs2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAdditionalRRs()Ljava/util/Enumeration;

    move-result-object v6

    .line 357
    .local v6, additionalRRs2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->aliasInfoWasReceived:Z

    .line 358
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->newName:Ljava/lang/String;

    .line 359
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 366
    :cond_b
    :goto_6
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v33

    if-nez v33, :cond_d

    .line 390
    :cond_c
    :goto_7
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v33

    if-eqz v33, :cond_4

    .line 395
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 401
    .local v28, tmpRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v33

    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_c

    .line 402
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v33

    .line 403
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->newName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 402
    invoke-static/range {v33 .. v34}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_c

    .line 405
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 411
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->completeAnswerWasReceived:Z

    goto :goto_7

    .line 371
    .end local v28           #tmpRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_d
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 377
    .restart local v28       #tmpRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v33

    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 378
    invoke-virtual/range {v28 .. v28}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v33

    .line 379
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->newName:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 378
    invoke-static/range {v33 .. v34}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 381
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 387
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->completeAnswerWasReceived:Z

    goto :goto_6

    .line 425
    .end local v6           #additionalRRs2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v8           #answerRRs2:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v28           #tmpRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->isAA()Z

    move-result v33

    if-eqz v33, :cond_f

    .line 426
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->completeAnswerWasReceived:Z

    .line 428
    :cond_f
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 451
    .end local v10           #curRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_10
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 452
    .restart local v10       #curRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-static {}, Lorg/apache/harmony/jndi/provider/dns/SList;->getInstance()Lorg/apache/harmony/jndi/provider/dns/SList;

    move-result-object v27

    .line 455
    .local v27, slist:Lorg/apache/harmony/jndi/provider/dns/SList;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_5

    .line 458
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 459
    .local v26, serverName:Ljava/lang/String;
    new-instance v25, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    const/16 v33, 0x0

    .line 460
    const/16 v34, 0x35

    .line 459
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 461
    .local v25, server2:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/SList;->getServerByServer(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v24

    .line 464
    .local v24, server:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationArrived:Z

    .line 465
    if-nez v24, :cond_11

    .line 467
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v33

    sget v34, Lorg/apache/harmony/jndi/provider/dns/SList;->UNKNOWN:I

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 468
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationZones:Ljava/util/Vector;

    move-object/from16 v33, v0

    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 469
    move-object/from16 v24, v25

    .line 471
    :cond_11
    if-eqz v24, :cond_5

    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_5

    .line 473
    invoke-virtual/range {p2 .. p2}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAdditionalRRs()Ljava/util/Enumeration;

    move-result-object v5

    .line 474
    .restart local v5       #additionalRRs:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_12
    :goto_8
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v33

    if-nez v33, :cond_13

    .line 484
    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_5

    .line 487
    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v33

    .line 488
    invoke-virtual {v10}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v34

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->startResolvingThread(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 476
    :cond_13
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 478
    .local v4, addRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 480
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    .line 481
    invoke-virtual {v4}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->setIP(Ljava/lang/String;)V

    goto :goto_8

    .line 501
    .end local v4           #addRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v10           #curRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v24           #server:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    .end local v25           #server2:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    .end local v26           #serverName:Ljava/lang/String;
    .end local v27           #slist:Lorg/apache/harmony/jndi/provider/dns/SList;
    :cond_14
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 503
    .restart local v4       #addRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 522
    .end local v4           #addRec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .restart local v13       #k:I
    .restart local v17       #processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v20       #records:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :pswitch_0
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v20, v0

    .line 523
    goto/16 :goto_4

    .line 525
    :pswitch_1
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    move-object/from16 v20, v0

    goto/16 :goto_4

    .line 529
    .restart local v11       #i:I
    :cond_15
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 530
    .local v22, rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 531
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 530
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 532
    .local v14, key:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getTtl()J

    move-result-wide v29

    .line 533
    .local v29, ttl:J
    new-instance v16, Ljava/util/Vector;

    invoke-direct/range {v16 .. v16}, Ljava/util/Vector;-><init>()V

    .line 535
    .local v16, objToUpdateTTL:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_16

    .line 528
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 538
    :cond_16
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 540
    move v12, v11

    .local v12, j:I
    :goto_a
    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v0, v33

    if-lt v12, v0, :cond_17

    .line 558
    const/4 v12, 0x0

    :goto_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v33

    move/from16 v0, v33

    if-lt v12, v0, :cond_1b

    .line 566
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 541
    :cond_17
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 542
    .local v23, rr2:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 544
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 542
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 545
    .local v15, key2:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getTtl()J

    move-result-wide v31

    .line 547
    .local v31, ttl2:J
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_19

    .line 540
    :cond_18
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 550
    :cond_19
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_18

    .line 551
    cmp-long v33, v29, v31

    if-lez v33, :cond_1a

    .line 552
    move-wide/from16 v29, v31

    .line 554
    :cond_1a
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_c

    .line 559
    .end local v15           #key2:Ljava/lang/String;
    .end local v23           #rr2:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v31           #ttl2:J
    :cond_1b
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 561
    .restart local v23       #rr2:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getTtl()J

    move-result-wide v33

    cmp-long v33, v33, v29

    if-eqz v33, :cond_1c

    .line 562
    move-object/from16 v0, v23

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->setTtl(J)V

    .line 558
    :cond_1c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getInitialTimeout()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->initialTimeout:I

    return v0
.end method

.method public getThreadNumberLimit()I
    .locals 1

    .prologue
    .line 584
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadNumberLimit:I

    return v0
.end method

.method public getTimeoutRetries()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->timeoutRetries:I

    return v0
.end method

.method public isAuthoritativeAnswerDesired()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->authoritativeAnswerDesired:Z

    return v0
.end method

.method public isRecursionDesired()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->recursionDesired:Z

    return v0
.end method

.method public list(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 35
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 624
    const/16 v10, 0x200

    .line 625
    .local v10, OUT_BUF_SIZE:I
    const/high16 v9, 0x1

    .line 627
    .local v9, IN_BUF_SIZE:I
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 628
    .local v12, answerVect:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    const/16 v23, 0x0

    .line 629
    .local v23, mesToSend:Lorg/apache/harmony/jndi/provider/dns/Message;
    const/16 v29, 0x0

    .line 633
    .local v29, receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 635
    .local v16, authoritativeServers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 636
    .local v26, qClassArr:[I
    const/16 v3, 0x200

    new-array v4, v3, [B

    .line 638
    .local v4, outBuf:[B
    const/high16 v3, 0x1

    new-array v6, v3, [B

    .line 639
    .local v6, inBuf:[B
    const/16 v28, 0x0

    .line 640
    .local v28, received:Z
    const/16 v18, 0x0

    .line 641
    .local v18, completeAnswer:Z
    const/16 v25, 0x0

    .line 643
    .local v25, proto:Ljava/lang/String;
    invoke-static {}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->getInstance()Lorg/apache/harmony/jndi/provider/dns/ResolverCache;

    move-result-object v17

    .line 646
    .local v17, cache:Lorg/apache/harmony/jndi/provider/dns/ResolverCache;
    if-nez p1, :cond_0

    .line 648
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v7, "jndi.2E"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 652
    :cond_0
    const-string v3, "_"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 653
    const/16 v3, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v24

    .line 655
    .local v24, n:I
    const/4 v3, -0x1

    move/from16 v0, v24

    if-eq v0, v3, :cond_5

    .line 656
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 657
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v24

    if-le v3, v0, :cond_4

    .line 658
    add-int/lit8 v3, v24, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 668
    .end local v24           #n:I
    :cond_1
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput v8, v3, v7

    .line 669
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/16 v34, 0xff

    aput v34, v7, v8

    .line 668
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v7}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->lookup(Ljava/lang/String;[I[I)Ljava/util/Enumeration;

    move-result-object v20

    .line 670
    .local v20, enum1:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    const/16 v3, 0xfc

    .line 671
    const/16 v7, 0xff

    .line 670
    move-object/from16 v0, p1

    invoke-static {v0, v3, v7}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->createMessageForSending(Ljava/lang/String;II)Lorg/apache/harmony/jndi/provider/dns/Message;

    move-result-object v23

    .line 672
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3}, Lorg/apache/harmony/jndi/provider/dns/Message;->writeBytes([BI)I

    move-result v5

    .line 674
    .local v5, outLen:I
    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_6

    .line 694
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 695
    .local v15, authServersIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 785
    :goto_3
    if-nez v18, :cond_e

    .line 788
    new-instance v3, Lorg/apache/harmony/javax/naming/ServiceUnavailableException;

    const-string v7, "jndi.6E"

    invoke-static {v7}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/harmony/javax/naming/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 661
    .end local v5           #outLen:I
    .end local v15           #authServersIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v20           #enum1:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .restart local v24       #n:I
    :cond_4
    const-string p1, "."

    goto :goto_0

    .line 665
    :cond_5
    const-string p1, "."

    goto :goto_0

    .line 675
    .end local v24           #n:I
    .restart local v5       #outLen:I
    .restart local v20       #enum1:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 677
    .local v30, rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v3

    const/4 v7, 0x2

    if-ne v3, v7, :cond_7

    .line 678
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 681
    const/4 v3, 0x0

    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v7

    aput v7, v26, v3

    goto :goto_1

    .line 682
    :cond_7
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v3

    const/4 v7, 0x6

    if-ne v3, v7, :cond_2

    .line 683
    new-instance v31, Ljava/util/StringTokenizer;

    .line 684
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, " "

    .line 683
    move-object/from16 v0, v31

    invoke-direct {v0, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v31, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 687
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 688
    const/4 v3, 0x0

    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRClass()I

    move-result v7

    aput v7, v26, v3

    goto :goto_2

    .line 696
    .end local v30           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v31           #st:Ljava/util/StringTokenizer;
    .restart local v15       #authServersIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_8
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 698
    .local v14, authServerName:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput v8, v3, v7

    .line 697
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v14, v3, v1}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->lookup(Ljava/lang/String;[I[I)Ljava/util/Enumeration;

    move-result-object v11

    .line 700
    .local v11, addrEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_9
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 701
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 702
    .local v19, curRR:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 711
    .local v2, ip:Ljava/lang/String;
    const/16 v3, 0x35

    .line 712
    const/high16 v7, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iget v8, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->initialTimeout:I

    .line 713
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->timeoutRetries:I

    move/from16 v34, v0

    mul-int v8, v8, v34

    .line 710
    invoke-static/range {v2 .. v8}, Lorg/apache/harmony/jndi/provider/dns/TransportMgr;->sendReceiveTCP(Ljava/lang/String;I[BI[BII)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 714
    const/16 v28, 0x1

    .line 725
    :goto_4
    if-eqz v28, :cond_a

    .line 726
    new-instance v29, Lorg/apache/harmony/jndi/provider/dns/Message;

    .end local v29           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    invoke-direct/range {v29 .. v29}, Lorg/apache/harmony/jndi/provider/dns/Message;-><init>()V

    .line 730
    .restart local v29       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v29

    invoke-static {v6, v3, v0}, Lorg/apache/harmony/jndi/provider/dns/Message;->parseMessage([BILorg/apache/harmony/jndi/provider/dns/Message;)I

    .line 731
    invoke-virtual/range {v29 .. v29}, Lorg/apache/harmony/jndi/provider/dns/Message;->getRCode()I

    move-result v27

    .line 732
    .local v27, rCode:I
    packed-switch v27, :pswitch_data_0

    .line 775
    .end local v27           #rCode:I
    :cond_a
    :goto_5
    :pswitch_0
    if-eqz v18, :cond_9

    goto/16 :goto_3

    .line 736
    .restart local v27       #rCode:I
    :pswitch_1
    const/16 v22, 0x0

    .local v22, k:I
    :goto_6
    const/4 v3, 0x3

    move/from16 v0, v22

    if-lt v0, v3, :cond_b

    .line 758
    const/16 v18, 0x1

    .line 759
    goto :goto_5

    .line 737
    :cond_b
    packed-switch v22, :pswitch_data_1

    .line 748
    :cond_c
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_d

    .line 736
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 739
    :pswitch_2
    invoke-virtual/range {v29 .. v29}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAnswerRRs()Ljava/util/Enumeration;

    move-result-object v20

    .line 740
    goto :goto_7

    .line 742
    :pswitch_3
    invoke-virtual/range {v29 .. v29}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAuthorityRRs()Ljava/util/Enumeration;

    move-result-object v20

    .line 743
    goto :goto_7

    .line 745
    :pswitch_4
    invoke-virtual/range {v29 .. v29}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAdditionalRRs()Ljava/util/Enumeration;

    move-result-object v20

    goto :goto_7

    .line 750
    :cond_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 752
    .restart local v30       #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->put(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V

    .line 753
    if-nez v22, :cond_c

    .line 754
    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    .line 770
    .end local v22           #k:I
    .end local v27           #rCode:I
    .end local v30           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :catch_0
    move-exception v3

    goto :goto_5

    .line 762
    .restart local v27       #rCode:I
    :pswitch_5
    new-instance v3, Lorg/apache/harmony/javax/naming/NameNotFoundException;

    .line 763
    const-string v7, "jndi.6D"

    .line 762
    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/harmony/javax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    .line 792
    .end local v2           #ip:Ljava/lang/String;
    .end local v11           #addrEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v14           #authServerName:Ljava/lang/String;
    .end local v19           #curRR:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v27           #rCode:I
    :cond_e
    if-eqz v25, :cond_f

    .line 793
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 795
    .local v13, answerVect2:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    const/16 v21, 0x0

    .local v21, i:I
    :goto_8
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_10

    .line 816
    move-object v12, v13

    .line 818
    .end local v13           #answerVect2:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v21           #i:I
    :cond_f
    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3

    .line 796
    .restart local v13       #answerVect2:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .restart local v21       #i:I
    :cond_10
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 797
    .restart local v30       #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    new-instance v31, Ljava/util/StringTokenizer;

    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getName()Ljava/lang/String;

    move-result-object v3

    .line 798
    const-string v7, "."

    .line 797
    move-object/from16 v0, v31

    invoke-direct {v0, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    .restart local v31       #st:Ljava/util/StringTokenizer;
    const/16 v32, 0x0

    .line 800
    .local v32, token:Ljava/lang/String;
    const/16 v33, 0x0

    .line 802
    .local v33, valid:Z
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 803
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    .line 804
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x5f

    if-ne v3, v7, :cond_11

    .line 805
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 806
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    .line 807
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 808
    const/16 v33, 0x1

    .line 812
    :cond_11
    if-eqz v33, :cond_12

    .line 813
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 795
    :cond_12
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 720
    .end local v13           #answerVect2:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v21           #i:I
    .end local v30           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .end local v31           #st:Ljava/util/StringTokenizer;
    .end local v32           #token:Ljava/lang/String;
    .end local v33           #valid:Z
    .restart local v2       #ip:Ljava/lang/String;
    .restart local v11       #addrEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .restart local v14       #authServerName:Ljava/lang/String;
    .restart local v19       #curRR:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :catch_1
    move-exception v3

    goto/16 :goto_4

    .line 715
    :catch_2
    move-exception v3

    goto/16 :goto_4

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 737
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public lookup(Ljava/lang/String;[I[I)Ljava/util/Enumeration;
    .locals 32
    .parameter "name"
    .parameter "types"
    .parameter "classes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I[I)",
            "Ljava/util/Enumeration",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lorg/apache/harmony/javax/naming/NameNotFoundException;,
            Lorg/apache/harmony/javax/naming/ServiceUnavailableException;,
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-static {}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->getInstance()Lorg/apache/harmony/jndi/provider/dns/ResolverCache;

    move-result-object v5

    .line 876
    .local v5, cache:Lorg/apache/harmony/jndi/provider/dns/ResolverCache;
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 877
    .local v19, questions:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;>;"
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 879
    .local v4, answers:Ljava/util/Vector;,"Ljava/util/Vector<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    if-nez p1, :cond_0

    .line 881
    new-instance v28, Ljava/lang/NullPointerException;

    const-string v29, "jndi.2E"

    invoke-static/range {v29 .. v29}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 883
    :cond_0
    if-nez p2, :cond_1

    .line 885
    new-instance v28, Ljava/lang/NullPointerException;

    const-string v29, "jndi.6B"

    invoke-static/range {v29 .. v29}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 887
    :cond_1
    if-nez p3, :cond_2

    .line 889
    new-instance v28, Ljava/lang/NullPointerException;

    const-string v29, "jndi.6C"

    invoke-static/range {v29 .. v29}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 891
    :cond_2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v30, v0

    const/16 v28, 0x0

    move/from16 v29, v28

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    .line 899
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v11, v0, :cond_5

    .line 1137
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v28

    return-object v28

    .line 891
    .end local v11           #i:I
    :cond_3
    aget v9, p3, v29

    .line 892
    .local v9, element:I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v31, v0

    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    .line 891
    add-int/lit8 v28, v29, 0x1

    move/from16 v29, v28

    goto :goto_0

    .line 892
    :cond_4
    aget v10, p2, v28

    .line 893
    .local v10, element0:I
    new-instance v18, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v9}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;-><init>(Ljava/lang/String;II)V

    .line 895
    .local v18, quest:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 892
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 900
    .end local v9           #element:I
    .end local v10           #element0:I
    .end local v18           #quest:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    .restart local v11       #i:I
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    .line 901
    .local v6, curQuestion:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQName()Ljava/lang/String;

    move-result-object v17

    .line 902
    .local v17, qName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 903
    .local v15, mesToSend:Lorg/apache/harmony/jndi/provider/dns/Message;
    const/16 v22, 0x0

    .line 904
    .local v22, receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    const/16 v23, 0x0

    .line 906
    .local v23, report:Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;
    new-instance v25, Ljava/util/Hashtable;

    invoke-direct/range {v25 .. v25}, Ljava/util/Hashtable;-><init>()V

    .line 913
    .local v25, visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v28

    const/16 v29, 0xff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 914
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v28

    const/16 v29, 0xff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 916
    invoke-virtual {v5, v6}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->get(Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;)Ljava/util/Enumeration;

    move-result-object v21

    .line 918
    .local v21, recEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 919
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-nez v28, :cond_7

    .line 899
    .end local v21           #recEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 920
    .restart local v21       #recEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 935
    .end local v21           #recEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_8
    if-eqz v17, :cond_c

    const-string v28, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_c

    .line 936
    move-object/from16 v27, v17

    .line 938
    .local v27, workZone:Ljava/lang/String;
    :goto_4
    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_b

    .line 951
    :goto_5
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v28

    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v29

    .line 950
    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->createMessageForSending(Ljava/lang/String;II)Lorg/apache/harmony/jndi/provider/dns/Message;
    :try_end_0
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 961
    :cond_9
    :goto_6
    const/16 v16, 0x0

    .line 965
    .local v16, noIdea:Z
    const/16 v28, 0x0

    .line 964
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move/from16 v3, v28

    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->queryServers(Lorg/apache/harmony/jndi/provider/dns/Message;Ljava/lang/String;Ljava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/dns/Message;

    move-result-object v22

    .line 966
    if-eqz v22, :cond_18

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->analyzeAnswer(Lorg/apache/harmony/jndi/provider/dns/Message;Lorg/apache/harmony/jndi/provider/dns/Message;)Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;

    move-result-object v23

    .line 968
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->messageWasTruncated:Z

    move/from16 v28, v0

    if-nez v28, :cond_a

    .line 971
    const/4 v12, 0x0

    .local v12, k:I
    :goto_7
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v12, v0, :cond_d

    .line 983
    .end local v12           #k:I
    :cond_a
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->completeAnswerWasReceived:Z

    move/from16 v28, v0

    if-eqz v28, :cond_e

    .line 989
    const/4 v12, 0x0

    .restart local v12       #k:I
    :goto_8
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_6

    .line 990
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v28, v0

    .line 991
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 992
    .local v20, rec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 996
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->put(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    .line 989
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 939
    .end local v12           #k:I
    .end local v16           #noIdea:Z
    .end local v20           #rec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_b
    invoke-static/range {v27 .. v27}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getParentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_4

    .line 942
    .end local v27           #workZone:Ljava/lang/String;
    :cond_c
    const-string v27, "."

    .restart local v27       #workZone:Ljava/lang/String;
    goto :goto_5

    .line 957
    :catch_0
    move-exception v8

    .line 958
    .local v8, e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    throw v8

    .line 972
    .end local v8           #e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    .restart local v12       #k:I
    .restart local v16       #noIdea:Z
    :cond_d
    :try_start_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->extraRecords:Ljava/util/Vector;

    move-object/from16 v28, v0

    .line 973
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 975
    .restart local v20       #rec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->put(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;)V

    .line 971
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1000
    .end local v12           #k:I
    .end local v20           #rec:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :cond_e
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->nameError:Z

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 1006
    new-instance v28, Lorg/apache/harmony/javax/naming/NameNotFoundException;

    .line 1007
    const-string v29, "jndi.6D"

    .line 1006
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lorg/apache/harmony/javax/naming/NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_2
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1129
    :catch_1
    move-exception v8

    .line 1130
    .local v8, e:Lorg/apache/harmony/javax/naming/NameNotFoundException;
    :goto_9
    throw v8

    .line 1008
    .end local v8           #e:Lorg/apache/harmony/javax/naming/NameNotFoundException;
    :cond_f
    :try_start_3
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->aliasInfoWasReceived:Z

    move/from16 v28, v0

    if-eqz v28, :cond_14

    .line 1017
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->newName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1018
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->setQName(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v28

    const/16 v29, 0xff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1021
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v28

    const/16 v29, 0xff

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1023
    invoke-virtual {v5, v6}, Lorg/apache/harmony/jndi/provider/dns/ResolverCache;->get(Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;)Ljava/util/Enumeration;

    move-result-object v21

    .line 1025
    .restart local v21       #recEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1026
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1028
    invoke-interface/range {v21 .. v21}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 1027
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    .line 1131
    .end local v21           #recEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :catch_2
    move-exception v8

    .line 1132
    .local v8, e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    :goto_b
    throw v8

    .line 1037
    .end local v8           #e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    :cond_10
    if-eqz v17, :cond_12

    :try_start_4
    const-string v28, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_12

    .line 1039
    move-object/from16 v27, v17

    .line 1043
    :goto_c
    new-instance v26, Ljava/util/Hashtable;

    invoke-direct/range {v26 .. v26}, Ljava/util/Hashtable;-><init>()V
    :try_end_4
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1044
    .end local v25           #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    .local v26, visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .restart local v12       #k:I
    :goto_d
    :try_start_5
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I
    :try_end_5
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v28

    move/from16 v0, v28

    if-lt v12, v0, :cond_13

    .line 1050
    :try_start_6
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQType()I

    move-result v28

    .line 1051
    invoke-virtual {v6}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v29

    .line 1049
    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->createMessageForSending(Ljava/lang/String;II)Lorg/apache/harmony/jndi/provider/dns/Message;
    :try_end_6
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v15

    move-object/from16 v25, v26

    .line 1104
    .end local v12           #k:I
    .end local v26           #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    .restart local v25       #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    :cond_11
    :goto_e
    if-eqz v16, :cond_9

    .line 1112
    :try_start_7
    const-string v28, "."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 1113
    invoke-static/range {v27 .. v27}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getParentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_6

    .line 1041
    :cond_12
    const-string v27, "."
    :try_end_7
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_c

    .line 1045
    .end local v25           #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    .restart local v12       #k:I
    .restart local v26       #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    :cond_13
    :try_start_8
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->records:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1044
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 1052
    :catch_3
    move-exception v8

    .line 1053
    .restart local v8       #e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    throw v8
    :try_end_8
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1129
    .end local v8           #e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    :catch_4
    move-exception v8

    move-object/from16 v25, v26

    .end local v26           #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    .restart local v25       #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .line 1062
    .end local v12           #k:I
    :cond_14
    :try_start_9
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationArrived:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    .line 1064
    const/4 v13, -0x1

    .line 1065
    .local v13, k17:I
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getMatchingCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 1072
    .local v14, matchingCount:I
    const/4 v12, 0x0

    .restart local v12       #k:I
    :goto_f
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationZones:Ljava/util/Vector;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v12, v0, :cond_15

    .line 1084
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v13, v0, :cond_11

    .line 1086
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationZones:Ljava/util/Vector;

    move-object/from16 v28, v0

    .line 1087
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v28

    check-cast v0, Ljava/lang/String;

    move-object/from16 v27, v0

    .line 1086
    goto :goto_e

    .line 1073
    :cond_15
    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver$AnalysisReport;->delegationZones:Ljava/util/Vector;

    move-object/from16 v28, v0

    .line 1074
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1076
    .local v7, curZone:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->getMatchingCount(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/apache/harmony/javax/naming/NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_9 .. :try_end_9} :catch_2

    move-result v24

    .line 1078
    .local v24, tmpMatchingCount:I
    move/from16 v0, v24

    if-le v0, v14, :cond_16

    .line 1079
    move v13, v12

    .line 1080
    move/from16 v14, v24

    .line 1072
    :cond_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 1098
    .end local v7           #curZone:Ljava/lang/String;
    .end local v12           #k:I
    .end local v13           #k17:I
    .end local v14           #matchingCount:I
    .end local v24           #tmpMatchingCount:I
    :cond_17
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 1102
    :cond_18
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 1131
    .end local v25           #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    .restart local v12       #k:I
    .restart local v26       #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    :catch_5
    move-exception v8

    move-object/from16 v25, v26

    .end local v26           #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    .restart local v25       #visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    goto/16 :goto_b
.end method

.method queryServers(Lorg/apache/harmony/jndi/provider/dns/Message;Ljava/lang/String;Ljava/util/Hashtable;Z)Lorg/apache/harmony/jndi/provider/dns/Message;
    .locals 27
    .parameter "request"
    .parameter "workZone"
    .parameter
    .parameter "tcpOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/jndi/provider/dns/Message;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Lorg/apache/harmony/jndi/provider/dns/SList$Server;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lorg/apache/harmony/jndi/provider/dns/Message;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1168
    .local p3, visitedServers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Lorg/apache/harmony/jndi/provider/dns/SList$Server;Ljava/lang/Object;>;"
    invoke-static {}, Lorg/apache/harmony/jndi/provider/dns/SList;->getInstance()Lorg/apache/harmony/jndi/provider/dns/SList;

    move-result-object v26

    .line 1170
    .local v26, slist:Lorg/apache/harmony/jndi/provider/dns/SList;
    const/16 v3, 0x200

    new-array v5, v3, [B

    .line 1172
    .local v5, outBuf:[B
    const/16 v3, 0x200

    new-array v7, v3, [B

    .line 1173
    .local v7, inBuf:[B
    const/16 v21, 0x0

    .line 1174
    .local v21, receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    const/4 v14, 0x0

    .line 1175
    .local v14, idx:I
    move-object/from16 v0, p0

    iget v9, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->initialTimeout:I

    .line 1176
    .local v9, curTimeout:I
    const/16 v20, 0x0

    .line 1177
    .local v20, received:Z
    const/16 v16, 0x0

    .line 1178
    .local v16, parsed:Z
    const/4 v11, 0x0

    .line 1179
    .local v11, correctAnswer:Z
    const/16 v19, -0x1

    .line 1182
    .local v19, rCode:I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/jndi/provider/dns/Message;->getQuestionRecords()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1184
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "jndi.71"

    invoke-static {v4}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1186
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/jndi/provider/dns/Message;->getQuestionRecords()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;

    .line 1188
    .local v17, qRecord:Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3}, Lorg/apache/harmony/jndi/provider/dns/Message;->writeBytes([BI)I

    move-result v6

    .line 1191
    .local v6, outBufLen:I
    const/16 v25, 0x0

    .local v25, round:I
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->timeoutRetries:I

    move/from16 v0, v25

    if-lt v0, v3, :cond_1

    .line 1398
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 1192
    :cond_1
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 1196
    .local v18, queriedServers:Ljava/util/Set;,"Ljava/util/Set<Lorg/apache/harmony/jndi/provider/dns/SList$Server;>;"
    :goto_2
    const/16 v24, 0x0

    .line 1198
    .local v24, responseTime:I
    const/16 v20, 0x0

    .line 1199
    const/16 v16, 0x0

    .line 1200
    const/16 v19, -0x1

    .line 1202
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/jndi/provider/dns/SList;->getBestGuess(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    move-result-object v12

    .line 1203
    .local v12, curServer:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    if-eqz v12, :cond_2

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1391
    :cond_2
    :goto_3
    and-int v3, v20, v16

    and-int/2addr v3, v11

    if-eqz v3, :cond_e

    move-object/from16 v3, v21

    .line 1393
    goto :goto_1

    .line 1207
    :cond_3
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 1210
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1211
    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/jndi/provider/dns/QuestionRecord;->getQClass()I

    move-result v4

    .line 1210
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->startResolvingThread(Ljava/lang/String;I)V

    .line 1213
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->NETWORK_FAILURE:I

    .line 1212
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1214
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1226
    :cond_4
    if-eqz p4, :cond_6

    .line 1227
    :try_start_0
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    .line 1228
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v4

    .line 1229
    array-length v8, v7

    .line 1227
    invoke-static/range {v3 .. v9}, Lorg/apache/harmony/jndi/provider/dns/TransportMgr;->sendReceiveTCP(Ljava/lang/String;I[BI[BII)I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1239
    :goto_4
    const/16 v20, 0x1

    .line 1254
    :goto_5
    if-eqz v20, :cond_8

    .line 1256
    const/4 v10, 0x0

    .line 1258
    .local v10, answerSectionIsTruncated:Z
    :try_start_1
    new-instance v22, Lorg/apache/harmony/jndi/provider/dns/Message;

    invoke-direct/range {v22 .. v22}, Lorg/apache/harmony/jndi/provider/dns/Message;-><init>()V
    :try_end_1
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1259
    .end local v21           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .local v22, receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    const/4 v14, 0x0

    .line 1260
    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v7, v14, v0}, Lorg/apache/harmony/jndi/provider/dns/Message;->parseMessage([BILorg/apache/harmony/jndi/provider/dns/Message;)I

    move-result v14

    .line 1266
    const/16 v16, 0x1

    .line 1268
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/jndi/provider/dns/Message;->isTc()Z
    :try_end_2
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v3

    if-eqz v3, :cond_f

    if-nez p4, :cond_f

    .line 1281
    :try_start_3
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    .line 1282
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v4

    .line 1283
    array-length v8, v7

    .line 1281
    invoke-static/range {v3 .. v9}, Lorg/apache/harmony/jndi/provider/dns/TransportMgr;->sendReceiveTCP(Ljava/lang/String;I[BI[BII)I

    .line 1284
    new-instance v23, Lorg/apache/harmony/jndi/provider/dns/Message;

    invoke-direct/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/Message;-><init>()V

    .line 1285
    .local v23, receivedMesTcp:Lorg/apache/harmony/jndi/provider/dns/Message;
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-static {v7, v3, v0}, Lorg/apache/harmony/jndi/provider/dns/Message;->parseMessage([BILorg/apache/harmony/jndi/provider/dns/Message;)I

    move-result v15

    .line 1288
    .local v15, idx2:I
    invoke-virtual/range {v23 .. v23}, Lorg/apache/harmony/jndi/provider/dns/Message;->isTc()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    move-result v3

    if-nez v3, :cond_f

    .line 1289
    move-object/from16 v21, v23

    .line 1290
    .end local v22           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v21       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    move v14, v15

    .line 1305
    .end local v15           #idx2:I
    .end local v23           #receivedMesTcp:Lorg/apache/harmony/jndi/provider/dns/Message;
    :goto_6
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/dns/Message;->isTc()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1308
    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAuthorityRRs()Ljava/util/Enumeration;

    move-result-object v3

    .line 1309
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1310
    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/dns/Message;->getAdditionalRRs()Ljava/util/Enumeration;

    move-result-object v3

    .line 1311
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1312
    const/4 v10, 0x1

    .line 1315
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/dns/Message;->getRCode()I

    move-result v19

    .line 1316
    if-nez v19, :cond_7

    .line 1318
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1319
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1320
    if-nez v10, :cond_8

    .line 1321
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1231
    .end local v10           #answerSectionIsTruncated:Z
    :cond_6
    :try_start_5
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    .line 1232
    invoke-virtual {v12}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v4

    .line 1233
    array-length v8, v7

    .line 1231
    invoke-static/range {v3 .. v9}, Lorg/apache/harmony/jndi/provider/dns/TransportMgr;->sendReceiveUDP(Ljava/lang/String;I[BI[BII)I
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    .line 1240
    :catch_0
    move-exception v13

    .line 1241
    .local v13, e:Ljava/net/SocketTimeoutException;
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->TIMEOUT:I

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    goto/16 :goto_5

    .line 1245
    .end local v13           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v13

    .line 1249
    .local v13, e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->NETWORK_FAILURE:I

    .line 1248
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    goto/16 :goto_5

    .line 1292
    .end local v13           #e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    .end local v21           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v10       #answerSectionIsTruncated:Z
    .restart local v22       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    :catch_2
    move-exception v3

    move-object/from16 v21, v22

    .end local v22           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v21       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    goto :goto_6

    .line 1324
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_9

    .line 1329
    :try_start_6
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->SERVER_FAILURE:I

    .line 1328
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1330
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1387
    .end local v10           #answerSectionIsTruncated:Z
    :cond_8
    :goto_7
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1331
    .restart local v10       #answerSectionIsTruncated:Z
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_a

    .line 1336
    :try_start_7
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->SERVER_FAILURE:I

    .line 1335
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1337
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    .line 1376
    :catch_3
    move-exception v13

    .line 1378
    .restart local v13       #e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    :goto_8
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lorg/apache/harmony/jndi/provider/dns/SList;->dropServer(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;)V

    goto :goto_7

    .line 1338
    .end local v13           #e:Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
    :cond_a
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 1341
    :try_start_8
    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/jndi/provider/dns/Message;->isAA()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1343
    const/4 v3, 0x0

    .line 1342
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1344
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 1356
    :cond_b
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->SERVER_FAILURE:I

    .line 1355
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1357
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 1380
    :catch_4
    move-exception v13

    .line 1382
    .local v13, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_9
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Lorg/apache/harmony/jndi/provider/dns/SList;->dropServer(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;)V

    goto :goto_7

    .line 1363
    .end local v13           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_c
    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_d

    .line 1367
    :try_start_9
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->SERVER_FAILURE:I

    .line 1366
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1368
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1369
    :cond_d
    const/4 v3, 0x5

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 1373
    sget v3, Lorg/apache/harmony/jndi/provider/dns/SList;->SERVER_FAILURE:I

    .line 1372
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12, v3}, Lorg/apache/harmony/jndi/provider/dns/SList;->updateEntry(Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/SList$Server;I)V

    .line 1374
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_7

    .line 1395
    .end local v10           #answerSectionIsTruncated:Z
    :cond_e
    mul-int/lit8 v9, v9, 0x2

    .line 1191
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 1380
    .end local v21           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v10       #answerSectionIsTruncated:Z
    .restart local v22       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    :catch_5
    move-exception v13

    move-object/from16 v21, v22

    .end local v22           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v21       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    goto :goto_9

    .line 1376
    .end local v21           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v22       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    :catch_6
    move-exception v13

    move-object/from16 v21, v22

    .end local v22           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v21       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    goto/16 :goto_8

    .end local v21           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v22       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    :cond_f
    move-object/from16 v21, v22

    .end local v22           #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    .restart local v21       #receivedMes:Lorg/apache/harmony/jndi/provider/dns/Message;
    goto/16 :goto_6
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1406
    invoke-static {}, Lorg/apache/harmony/jndi/provider/dns/SList;->getInstance()Lorg/apache/harmony/jndi/provider/dns/SList;

    move-result-object v6

    .line 1409
    .local v6, slist:Lorg/apache/harmony/jndi/provider/dns/SList;
    new-array v0, v11, [I

    .line 1412
    .local v0, classes:[I
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadListSemaphore:Ljava/lang/Object;

    monitor-enter v8

    .line 1413
    :try_start_0
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->hostnamesToResolve:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1414
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->hostnamesToResolve:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;

    .line 1415
    .local v2, entryToProcess:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->hostnamesToResolve:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1416
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    iput-object v7, v2, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->thread:Ljava/lang/Thread;

    .line 1417
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    const/4 v7, 0x0

    :try_start_1
    iget v8, v2, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->dnsClass:I

    aput v8, v0, v7

    .line 1427
    iget-object v7, v2, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->serverNameToResolve:Ljava/lang/String;

    .line 1428
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    .line 1427
    invoke-virtual {p0, v7, v8, v0}, Lorg/apache/harmony/jndi/provider/dns/Resolver;->lookup(Ljava/lang/String;[I[I)Ljava/util/Enumeration;

    move-result-object v3

    .line 1429
    .local v3, foundRecords:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-nez v7, :cond_3

    .line 1442
    .end local v3           #foundRecords:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_1
    :goto_1
    iget-object v8, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadListSemaphore:Ljava/lang/Object;

    monitor-enter v8

    .line 1443
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    :try_start_2
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v4, v7, :cond_4

    .line 1442
    :goto_3
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1456
    .end local v2           #entryToProcess:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    .end local v4           #i:I
    :goto_4
    return-void

    .line 1421
    :cond_2
    :try_start_3
    monitor-exit v8

    goto :goto_4

    .line 1412
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 1431
    .restart local v2       #entryToProcess:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    .restart local v3       #foundRecords:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    :cond_3
    :try_start_4
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 1433
    .local v5, rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRRType()I

    move-result v7

    if-ne v7, v11, :cond_0

    .line 1434
    iget-object v8, v2, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->serverNameToResolve:Ljava/lang/String;

    .line 1435
    invoke-virtual {v5}, Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;->getRData()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1434
    invoke-virtual {v6, v8, v7}, Lorg/apache/harmony/jndi/provider/dns/SList;->setServerIP(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1438
    .end local v3           #foundRecords:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;>;"
    .end local v5           #rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 1444
    .restart local v4       #i:I
    :cond_4
    :try_start_5
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;

    .line 1447
    .local v1, entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    iget-object v7, v2, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->serverNameToResolve:Ljava/lang/String;

    .line 1448
    iget-object v9, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->serverNameToResolve:Ljava/lang/String;

    .line 1446
    invoke-static {v7, v9}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1449
    iget v7, v2, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->dnsClass:I

    iget v9, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->dnsClass:I

    if-ne v7, v9, :cond_5

    .line 1450
    iget-object v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1442
    .end local v1           #entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 1443
    .restart local v1       #entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public setAuthoritativeAnswerDesired(Z)V
    .locals 0
    .parameter "authoritativeAnswerDesired"

    .prologue
    .line 1463
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->authoritativeAnswerDesired:Z

    .line 1464
    return-void
.end method

.method public setInitialTimeout(I)V
    .locals 0
    .parameter "initialTimeout"

    .prologue
    .line 1471
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->initialTimeout:I

    .line 1472
    return-void
.end method

.method public setRecursionDesired(Z)V
    .locals 0
    .parameter "recursionDesired"

    .prologue
    .line 1479
    iput-boolean p1, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->recursionDesired:Z

    .line 1480
    return-void
.end method

.method public setThreadNumberLimit(I)V
    .locals 0
    .parameter "threadNumberLimit"

    .prologue
    .line 1487
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadNumberLimit:I

    .line 1488
    return-void
.end method

.method public setTimeoutRetries(I)V
    .locals 0
    .parameter "timeoutRetries"

    .prologue
    .line 1495
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->timeoutRetries:I

    .line 1496
    return-void
.end method

.method startResolvingThread(Ljava/lang/String;I)V
    .locals 8
    .parameter "hostname"
    .parameter "dnsClass"

    .prologue
    .line 1510
    const/4 v5, 0x1

    new-array v0, v5, [I

    .line 1512
    .local v0, classes:[I
    iget-object v6, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadListSemaphore:Ljava/lang/Object;

    monitor-enter v6

    .line 1514
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 1525
    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->hostnamesToResolve:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 1537
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v7, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->threadNumberLimit:I

    if-lt v5, v7, :cond_4

    .line 1539
    monitor-exit v6

    .line 1554
    :goto_2
    return-void

    .line 1515
    :cond_0
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->resolverThreads:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;

    .line 1517
    .local v1, entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    iget-object v5, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->serverNameToResolve:Ljava/lang/String;

    .line 1516
    invoke-static {p1, v5}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1518
    iget v5, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->dnsClass:I

    if-ne v5, p2, :cond_1

    .line 1521
    monitor-exit v6

    goto :goto_2

    .line 1512
    .end local v1           #entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1514
    .restart local v1       #entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1526
    .end local v1           #entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->hostnamesToResolve:Ljava/util/ArrayList;

    .line 1527
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;

    .line 1529
    .restart local v1       #entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    iget-object v5, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->serverNameToResolve:Ljava/lang/String;

    .line 1528
    invoke-static {p1, v5}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1530
    iget v5, v1, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->dnsClass:I

    if-ne v5, p2, :cond_3

    .line 1533
    monitor-exit v6

    goto :goto_2

    .line 1525
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1541
    .end local v1           #entry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    :cond_4
    const/4 v5, 0x0

    aput p2, v0, v5

    .line 1542
    new-instance v3, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;-><init>(Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;)V

    .line 1543
    .local v3, newEntry:Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
    iput-object p1, v3, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->serverNameToResolve:Ljava/lang/String;

    .line 1544
    iput p2, v3, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;->dnsClass:I

    .line 1545
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver;->hostnamesToResolve:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1552
    .local v4, newThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1512
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
