.class public Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
.super Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
.source "ICECandidate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;


# instance fields
.field private channel:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

.field private id:Ljava/lang/String;

.field private network:I

.field private preference:I

.field private proto:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

.field private type:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 75
    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;ILorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;)V
    .locals 1
    .parameter "ip"
    .parameter "generation"
    .parameter "network"
    .parameter "password"
    .parameter "port"
    .parameter "username"
    .parameter "preference"
    .parameter "type"

    .prologue
    .line 119
    invoke-direct {p0, p1, p5, p2}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;-><init>(Ljava/lang/String;II)V

    .line 121
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->UDP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->proto:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 122
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;->MYRTPVOICE:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->channel:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    .line 124
    iput p3, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->network:I

    .line 125
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->password:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->username:Ljava/lang/String;

    .line 127
    iput p7, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->preference:I

    .line 128
    iput-object p8, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->type:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    .line 129
    return-void
.end method

.method static synthetic access$1()Lorg/jivesoftware/smackx/jingle/SmackLogger;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    return-object v0
.end method


# virtual methods
.method public check(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, localCandidates:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;>;"
    move-object v1, p0

    .line 145
    .local v1, checkingCandidate:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;

    invoke-direct {v2, p0, p1, v1}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$1;-><init>(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;Ljava/util/List;Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;)V

    .line 215
    const-string v3, "Transport candidate check"

    .line 145
    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 217
    .local v0, checkThread:Ljava/lang/Thread;
    const-string v2, "Transport candidate test"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->compareTo(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;)I
    .locals 3
    .parameter "arg"

    .prologue
    .line 231
    move-object v0, p1

    .line 232
    .local v0, tc:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 233
    const/4 v1, -0x1

    .line 237
    :goto_0
    return v1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 235
    const/4 v1, 0x1

    goto :goto_0

    .line 237
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 247
    if-ne p0, p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 251
    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 254
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 257
    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;

    .line 258
    .local v0, other:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getChannel()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    move-result-object v3

    if-nez v3, :cond_4

    .line 259
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getChannel()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    move-result-object v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 260
    goto :goto_0

    .line 262
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getChannel()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getChannel()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 263
    goto :goto_0

    .line 265
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 266
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 267
    goto :goto_0

    .line 269
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 270
    goto :goto_0

    .line 272
    :cond_7
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getNetwork()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getNetwork()I

    move-result v4

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 273
    goto :goto_0

    .line 275
    :cond_8
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 276
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move v1, v2

    .line 277
    goto :goto_0

    .line 279
    :cond_9
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPassword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 280
    goto :goto_0

    .line 282
    :cond_a
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPreference()I

    move-result v4

    if-eq v3, v4, :cond_b

    move v1, v2

    .line 283
    goto/16 :goto_0

    .line 285
    :cond_b
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getProto()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    move-result-object v3

    if-nez v3, :cond_c

    .line 286
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getProto()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    move-result-object v3

    if-eqz v3, :cond_d

    move v1, v2

    .line 287
    goto/16 :goto_0

    .line 289
    :cond_c
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getProto()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getProto()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 290
    goto/16 :goto_0

    .line 292
    :cond_d
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    .line 293
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    move v1, v2

    .line 294
    goto/16 :goto_0

    .line 296
    :cond_e
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 297
    goto/16 :goto_0

    .line 300
    :cond_f
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    .line 301
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    move v1, v2

    .line 302
    goto/16 :goto_0

    .line 304
    :cond_10
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getIp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move v1, v2

    .line 305
    goto/16 :goto_0

    .line 308
    :cond_11
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPort()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_12

    move v1, v2

    .line 309
    goto/16 :goto_0

    .line 312
    :cond_12
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v3

    if-nez v3, :cond_13

    .line 313
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 314
    goto/16 :goto_0

    .line 316
    :cond_13
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 317
    goto/16 :goto_0
.end method

.method public getChannel()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->channel:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->network:I

    return v0
.end method

.method public getPreference()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->preference:I

    return v0
.end method

.method public getProto()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->proto:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->type:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 388
    invoke-super {p0}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v0

    .line 390
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getProto()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->getChannel()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannel(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 405
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->channel:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Channel;

    .line 406
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 415
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->id:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setNetwork(I)V
    .locals 0
    .parameter "network"

    .prologue
    .line 425
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->network:I

    .line 426
    return-void
.end method

.method public setPreference(I)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 435
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->preference:I

    .line 436
    return-void
.end method

.method public setProto(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;)V
    .locals 0
    .parameter "proto"

    .prologue
    .line 445
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->proto:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 446
    return-void
.end method

.method public setType(Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 455
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->type:Lorg/jivesoftware/smackx/jingle/nat/ICECandidate$Type;

    .line 456
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 465
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/ICECandidate;->username:Ljava/lang/String;

    .line 466
    return-void
.end method
