.class public Lorg/jivesoftware/smack/packet/Message;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/Message$Body;,
        Lorg/jivesoftware/smack/packet/Message$Subject;,
        Lorg/jivesoftware/smack/packet/Message$Type;
    }
.end annotation


# instance fields
.field private final bodies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/packet/Message$Body;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private final subjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smack/packet/Message$Subject;",
            ">;"
        }
    .end annotation
.end field

.field private thread:Ljava/lang/String;

.field private type:Lorg/jivesoftware/smack/packet/Message$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 272
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    .line 279
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "to"

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 272
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    .line 279
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    .line 294
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Type;)V
    .locals 1
    .parameter "to"
    .parameter "type"

    .prologue
    .line 305
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 272
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    .line 279
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    .line 306
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 307
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 308
    return-void
.end method

.method private determineLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "language"

    .prologue
    .line 351
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 354
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 355
    iget-object p1, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    .line 359
    .end local p1
    :cond_1
    :goto_0
    return-object p1

    .line 356
    .restart local p1
    :cond_2
    if-nez p1, :cond_1

    .line 357
    invoke-static {}, Lorg/jivesoftware/smack/packet/Message;->getDefaultLanguage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getMessageBody(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body;
    .locals 3
    .parameter "language"

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->determineLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 469
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Body;

    .line 470
    .local v0, body:Lorg/jivesoftware/smack/packet/Message$Body;
    #getter for: Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Body;->access$2(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getMessageSubject(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;
    .locals 3
    .parameter "language"

    .prologue
    .line 478
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->determineLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 479
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 484
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 479
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 480
    .local v0, subject:Lorg/jivesoftware/smack/packet/Message$Subject;
    #getter for: Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Subject;->access$1(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public addBody(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body;
    .locals 2
    .parameter "language"
    .parameter "body"

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->determineLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 324
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Body;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jivesoftware/smack/packet/Message$Body;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Body;)V

    .line 325
    .local v0, messageBody:Lorg/jivesoftware/smack/packet/Message$Body;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    return-object v0
.end method

.method public addSubject(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;
    .locals 2
    .parameter "language"
    .parameter "subject"

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->determineLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 342
    new-instance v0, Lorg/jivesoftware/smack/packet/Message$Subject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/jivesoftware/smack/packet/Message$Subject;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message$Subject;)V

    .line 343
    .local v0, messageSubject:Lorg/jivesoftware/smack/packet/Message$Subject;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    if-ne p0, p1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v1

    .line 369
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 370
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 373
    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 375
    .local v0, message:Lorg/jivesoftware/smack/packet/Message;
    invoke-super {p0, v0}, Lorg/jivesoftware/smack/packet/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 376
    goto :goto_0

    .line 378
    :cond_4
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 379
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v1, v2

    .line 380
    goto :goto_0

    .line 382
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 384
    goto :goto_0

    .line 383
    :cond_8
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 386
    :cond_9
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 387
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    move v1, v2

    .line 388
    goto :goto_0

    .line 390
    :cond_b
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 392
    goto :goto_0

    .line 391
    :cond_d
    iget-object v3, v0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 394
    :cond_e
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    iget-object v4, v0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBodies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/packet/Message$Body;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->getBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "language"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->getMessageBody(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body;

    move-result-object v0

    .line 436
    .local v0, body:Lorg/jivesoftware/smack/packet/Message$Body;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    #getter for: Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Body;->access$1(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getBodyLanguages()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/packet/Message;->getMessageBody(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body;

    move-result-object v1

    .line 448
    .local v1, defaultBody:Lorg/jivesoftware/smack/packet/Message$Body;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v2, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 454
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3

    .line 449
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Body;

    .line 450
    .local v0, body:Lorg/jivesoftware/smack/packet/Message$Body;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message$Body;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 451
    #getter for: Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Body;->access$2(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "language"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->getMessageSubject(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;

    move-result-object v0

    .line 513
    .local v0, subject:Lorg/jivesoftware/smack/packet/Message$Subject;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    #getter for: Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Subject;->access$2(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubjectLanguages()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 523
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/packet/Message;->getMessageSubject(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;

    move-result-object v0

    .line 524
    .local v0, defaultSubject:Lorg/jivesoftware/smack/packet/Message$Subject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v1, languages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 530
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    return-object v3

    .line 525
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 526
    .local v2, subject:Lorg/jivesoftware/smack/packet/Message$Subject;
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message$Subject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    #getter for: Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smack/packet/Message$Subject;->access$1(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSubjects()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smack/packet/Message$Subject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/Message$Type;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 568
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Message$Type;->hashCode()I

    move-result v0

    .line 569
    .local v0, result:I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 570
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 571
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 572
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 573
    return v0

    .end local v0           #result:I
    :cond_1
    move v0, v1

    .line 568
    goto :goto_0

    .restart local v0       #result:I
    :cond_2
    move v2, v1

    .line 570
    goto :goto_1
.end method

.method public removeBody(Ljava/lang/String;)Z
    .locals 3
    .parameter "language"

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->determineLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 599
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 604
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 599
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Body;

    .line 600
    .local v0, body:Lorg/jivesoftware/smack/packet/Message$Body;
    #getter for: Lorg/jivesoftware/smack/packet/Message$Body;->language:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Body;->access$2(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 601
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeBody(Lorg/jivesoftware/smack/packet/Message$Body;)Z
    .locals 1
    .parameter "body"

    .prologue
    .line 587
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->bodies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeSubject(Ljava/lang/String;)Z
    .locals 3
    .parameter "language"

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/packet/Message;->determineLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 616
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 621
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 616
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 617
    .local v0, subject:Lorg/jivesoftware/smack/packet/Message$Subject;
    #getter for: Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/packet/Message$Subject;->access$1(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeSubject(Lorg/jivesoftware/smack/packet/Message$Subject;)Z
    .locals 1
    .parameter "subject"

    .prologue
    .line 634
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Message;->subjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->removeBody(Ljava/lang/String;)Z

    .line 650
    :goto_0
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/packet/Message;->addBody(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body;

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 660
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    .line 661
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .parameter "subject"

    .prologue
    .line 671
    if-nez p1, :cond_0

    .line 672
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->removeSubject(Ljava/lang/String;)Z

    .line 677
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smack/packet/Message;->addSubject(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;

    goto :goto_0
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0
    .parameter "thread"

    .prologue
    .line 687
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    .line 688
    return-void
.end method

.method public setType(Lorg/jivesoftware/smack/packet/Message$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 699
    if-nez p1, :cond_0

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 703
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string v6, "<message"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getXmlns()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 710
    const-string v6, " xmlns=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getXmlns()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    :cond_0
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/Message;->language:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 713
    const-string v6, " xml:lang=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 716
    const-string v6, " id=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 719
    const-string v6, " to=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 720
    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 723
    const-string v6, " from=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 724
    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_4
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    sget-object v7, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v6, v7, :cond_5

    .line 727
    const-string v6, " type=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_5
    const-string v6, ">"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-direct {p0, v9}, Lorg/jivesoftware/smack/packet/Message;->getMessageSubject(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;

    move-result-object v3

    .line 732
    .local v3, defaultSubject:Lorg/jivesoftware/smack/packet/Message$Subject;
    if-eqz v3, :cond_6

    .line 733
    const-string v6, "<subject>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 734
    #getter for: Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;
    invoke-static {v3}, Lorg/jivesoftware/smack/packet/Message$Subject;->access$2(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 735
    const-string v7, "</subject>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getSubjects()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_c

    .line 749
    invoke-direct {p0, v9}, Lorg/jivesoftware/smack/packet/Message;->getMessageBody(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Body;

    move-result-object v2

    .line 750
    .local v2, defaultBody:Lorg/jivesoftware/smack/packet/Message$Body;
    if-eqz v2, :cond_8

    .line 751
    const-string v6, "<body>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 752
    #getter for: Lorg/jivesoftware/smack/packet/Message$Body;->message:Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smack/packet/Message$Body;->access$1(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 753
    const-string v7, "</body>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_8
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getBodies()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_d

    .line 766
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 767
    const-string v6, "<thread>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jivesoftware/smack/packet/Message;->thread:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</thread>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_a
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/Message;->type:Lorg/jivesoftware/smack/packet/Message$Type;

    sget-object v7, Lorg/jivesoftware/smack/packet/Message$Type;->error:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v6, v7, :cond_b

    .line 771
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v4

    .line 772
    .local v4, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v4, :cond_b

    .line 773
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    .end local v4           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_b
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const-string v6, "</message>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 738
    .end local v2           #defaultBody:Lorg/jivesoftware/smack/packet/Message$Body;
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 740
    .local v5, subject:Lorg/jivesoftware/smack/packet/Message$Subject;
    invoke-virtual {v5, v3}, Lorg/jivesoftware/smack/packet/Message$Subject;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 743
    const-string v7, "<subject xml:lang=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    #getter for: Lorg/jivesoftware/smack/packet/Message$Subject;->language:Ljava/lang/String;
    invoke-static {v5}, Lorg/jivesoftware/smack/packet/Message$Subject;->access$1(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 744
    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    #getter for: Lorg/jivesoftware/smack/packet/Message$Subject;->subject:Ljava/lang/String;
    invoke-static {v5}, Lorg/jivesoftware/smack/packet/Message$Subject;->access$2(Lorg/jivesoftware/smack/packet/Message$Subject;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v7, "</subject>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 756
    .end local v5           #subject:Lorg/jivesoftware/smack/packet/Message$Subject;
    .restart local v2       #defaultBody:Lorg/jivesoftware/smack/packet/Message$Body;
    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message$Body;

    .line 758
    .local v0, body:Lorg/jivesoftware/smack/packet/Message$Body;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Message$Body;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 761
    const-string v7, "<body xml:lang=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message$Body;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 762
    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message$Body;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v7, "</body>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method
