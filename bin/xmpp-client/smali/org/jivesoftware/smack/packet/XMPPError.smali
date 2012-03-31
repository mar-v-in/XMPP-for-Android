.class public Lorg/jivesoftware/smack/packet/XMPPError;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/XMPPError$Condition;,
        Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;,
        Lorg/jivesoftware/smack/packet/XMPPError$Type;
    }
.end annotation


# instance fields
.field private applicationExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private condition:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private type:Lorg/jivesoftware/smack/packet/XMPPError$Type;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "code"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 411
    iput p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 412
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "code"
    .parameter "message"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 427
    iput p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 428
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public constructor <init>(ILorg/jivesoftware/smack/packet/XMPPError$Type;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "code"
    .parameter "type"
    .parameter "condition"
    .parameter "message"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/jivesoftware/smack/packet/XMPPError$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p5, extension:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 450
    iput p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 451
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 452
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->condition:Ljava/lang/String;

    .line 453
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 454
    iput-object p5, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 455
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V
    .locals 1
    .parameter "condition"

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 379
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/XMPPError;->init(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 380
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/XMPPError$Condition;Ljava/lang/String;)V
    .locals 1
    .parameter "condition"
    .parameter "messageText"

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 397
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/XMPPError;->init(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V

    .line 398
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    .line 399
    return-void
.end method

.method private init(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)V
    .locals 2
    .parameter "condition"

    .prologue
    .line 555
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->specFor(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;

    move-result-object v0

    .line 556
    .local v0, defaultErrorSpecification:Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;
    #getter for: Lorg/jivesoftware/smack/packet/XMPPError$Condition;->value:Ljava/lang/String;
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/XMPPError$Condition;->access$0(Lorg/jivesoftware/smack/packet/XMPPError$Condition;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->condition:Ljava/lang/String;

    .line 557
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->getType()Lorg/jivesoftware/smack/packet/XMPPError$Type;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    .line 562
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError$ErrorSpecification;->getCode()I

    move-result v1

    iput v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    .line 564
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 464
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 464
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 4
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    const/4 v1, 0x0

    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 501
    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 510
    :goto_0
    monitor-exit p0

    return-object v0

    .line 504
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    move-object v0, v1

    .line 510
    goto :goto_0

    .line 504
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 505
    .local v0, ext:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 506
    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 500
    .end local v0           #ext:Lorg/jivesoftware/smack/packet/PacketExtension;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 522
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 524
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/XMPPError$Type;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    return-object v0
.end method

.method public declared-synchronized setExtension(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/PacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, extension:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/PacketExtension;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v0, txt:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 584
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<error code=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    if-eqz v2, :cond_0

    .line 598
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->type:Lorg/jivesoftware/smack/packet/XMPPError$Type;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/XMPPError$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_0
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->condition:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 604
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v2, " xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 608
    const-string v2, "<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v2, "</text>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/XMPPError;->getExtensions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 615
    const-string v2, "</error>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 612
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 613
    .local v1, element:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
