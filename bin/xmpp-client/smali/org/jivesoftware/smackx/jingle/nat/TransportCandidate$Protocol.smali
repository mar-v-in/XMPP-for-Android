.class public Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;
.super Ljava/lang/Object;
.source "TransportCandidate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final SSLTCP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

.field public static final TCP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

.field public static final TCPACT:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

.field public static final TCPPASS:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

.field public static final UDP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 478
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    const-string v1, "udp"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->UDP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 480
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    const-string v1, "tcp"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->TCP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 482
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    const-string v1, "tcp-act"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->TCPACT:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 484
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    const-string v1, "tcp-pass"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->TCPPASS:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 486
    new-instance v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    const-string v1, "ssltcp"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->SSLTCP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 476
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;
    .locals 1
    .parameter "value"

    .prologue
    .line 492
    if-nez p0, :cond_0

    .line 493
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->UDP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 507
    :goto_0
    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 496
    const-string v0, "udp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->UDP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    goto :goto_0

    .line 498
    :cond_1
    const-string v0, "tcp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 499
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->TCP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    goto :goto_0

    .line 500
    :cond_2
    const-string v0, "tcp-act"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->TCPACT:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    goto :goto_0

    .line 502
    :cond_3
    const-string v0, "tcp-pass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->TCPPASS:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    goto :goto_0

    .line 504
    :cond_4
    const-string v0, "ssltcp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 505
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->SSLTCP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    goto :goto_0

    .line 507
    :cond_5
    sget-object v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->UDP:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 524
    if-ne p0, p1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return v1

    .line 527
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 528
    goto :goto_0

    .line 530
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 531
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 533
    check-cast v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;

    .line 534
    .local v0, other:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 535
    iget-object v3, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 536
    goto :goto_0

    .line 538
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 539
    goto :goto_0
.end method

.method public isNull()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 550
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate$Protocol;->value:Ljava/lang/String;

    return-object v0
.end method
