.class public Lorg/jivesoftware/smackx/packet/Jingle;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Jingle.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:tmp:jingle"

.field public static final NODENAME:Ljava/lang/String; = "jingle"


# instance fields
.field private action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

.field private contentInfo:Lorg/jivesoftware/smackx/packet/JingleContentInfo;

.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleContent;",
            ">;"
        }
    .end annotation
.end field

.field private initiator:Ljava/lang/String;

.field private responder:Ljava/lang/String;

.field private sid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "sid"

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0, v0, p1}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Ljava/util/List;Lorg/jivesoftware/smackx/packet/JingleContentInfo;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/jivesoftware/smackx/packet/JingleContentInfo;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "mi"
    .parameter "sid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleContent;",
            ">;",
            "Lorg/jivesoftware/smackx/packet/JingleContentInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, contents:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/JingleContent;>;"
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_0
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/packet/Jingle;->setContentInfo(Lorg/jivesoftware/smackx/packet/JingleContentInfo;)V

    .line 179
    invoke-virtual {p0, p3}, Lorg/jivesoftware/smackx/packet/Jingle;->setSid(Ljava/lang/String;)V

    .line 182
    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->initiator:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->responder:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 185
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V
    .locals 1
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0, v0, v0}, Lorg/jivesoftware/smackx/packet/Jingle;-><init>(Ljava/util/List;Lorg/jivesoftware/smackx/packet/JingleContentInfo;Ljava/lang/String;)V

    .line 121
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 124
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/JingleContent;)V
    .locals 2
    .parameter "content"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    .line 136
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/Jingle;->addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V

    .line 139
    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->initiator:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->responder:Ljava/lang/String;

    .line 143
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->UNKNOWN:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 144
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/JingleContentInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    .line 156
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/Jingle;->setContentInfo(Lorg/jivesoftware/smackx/packet/JingleContentInfo;)V

    .line 159
    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->initiator:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->responder:Ljava/lang/String;

    .line 163
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleActionEnum;->UNKNOWN:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 164
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/Jingle;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 165
    return-void
.end method

.method public static getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "jingle"

    return-object v0
.end method

.method public static getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "urn:xmpp:tmp:jingle"

    return-object v0
.end method

.method public static getSessionHash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "sid"
    .parameter "initiator"

    .prologue
    const/4 v2, 0x0

    .line 84
    const/16 v0, 0x1f

    .line 85
    .local v0, PRIME:I
    const/4 v1, 0x1

    .line 87
    .local v1, result:I
    if-nez p1, :cond_0

    move v3, v2

    .line 86
    :goto_0
    add-int/lit8 v1, v3, 0x1f

    .line 88
    mul-int/lit8 v3, v1, 0x1f

    if-nez p0, :cond_1

    :goto_1
    add-int v1, v3, v2

    .line 89
    return v1

    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public addContent(Lorg/jivesoftware/smackx/packet/JingleContent;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1

    .line 210
    :cond_0
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addContents(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, contentList:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/JingleContent;>;"
    if-eqz p1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    monitor-exit v1

    .line 224
    :cond_0
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAction()Lorg/jivesoftware/smackx/jingle/JingleActionEnum;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    return-object v0
.end method

.method public getChildElementXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jivesoftware/smackx/packet/Jingle;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jivesoftware/smackx/packet/Jingle;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getInitiator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, " initiator=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getInitiator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getResponder()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 250
    const-string v2, " responder=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getResponder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 253
    const-string v2, " action=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getAction()Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getSid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 256
    const-string v2, " sid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/Jingle;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_3
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    monitor-enter v3

    .line 261
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 260
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contentInfo:Lorg/jivesoftware/smackx/packet/JingleContentInfo;

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contentInfo:Lorg/jivesoftware/smackx/packet/JingleContentInfo;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/JingleContentInfo;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_4
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jivesoftware/smackx/packet/Jingle;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 261
    :cond_5
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/JingleContent;

    .line 262
    .local v1, content:Lorg/jivesoftware/smackx/packet/JingleContent;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/JingleContent;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 260
    .end local v1           #content:Lorg/jivesoftware/smackx/packet/JingleContent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getContentInfo()Lorg/jivesoftware/smackx/packet/JingleContentInfo;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contentInfo:Lorg/jivesoftware/smackx/packet/JingleContentInfo;

    return-object v0
.end method

.method public getContents()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    monitor-enter v1

    .line 290
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 289
    monitor-exit v1

    return-object v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getContentsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    monitor-enter v1

    .line 301
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contents:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInitiator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->initiator:Ljava/lang/String;

    return-object v0
.end method

.method public getResponder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->responder:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/Jingle;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Lorg/jivesoftware/smackx/jingle/JingleActionEnum;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 348
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->action:Lorg/jivesoftware/smackx/jingle/JingleActionEnum;

    .line 349
    return-void
.end method

.method public setContentInfo(Lorg/jivesoftware/smackx/packet/JingleContentInfo;)V
    .locals 0
    .parameter "contentInfo"

    .prologue
    .line 356
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->contentInfo:Lorg/jivesoftware/smackx/packet/JingleContentInfo;

    .line 357
    return-void
.end method

.method public setInitiator(Ljava/lang/String;)V
    .locals 0
    .parameter "initiator"

    .prologue
    .line 368
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->initiator:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setResponder(Ljava/lang/String;)V
    .locals 0
    .parameter "resp"

    .prologue
    .line 380
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->responder:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public final setSid(Ljava/lang/String;)V
    .locals 0
    .parameter "sid"

    .prologue
    .line 393
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/Jingle;->sid:Ljava/lang/String;

    .line 394
    return-void
.end method
