.class public abstract Lorg/jivesoftware/smackx/packet/JingleDescription;
.super Ljava/lang/Object;
.source "JingleDescription.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger; = null

.field public static final NODENAME:Ljava/lang/String; = "description"


# instance fields
.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/jivesoftware/smackx/packet/JingleDescription;

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->getLogger(Ljava/lang/Class;)Lorg/jivesoftware/smackx/jingle/SmackLogger;

    move-result-object v0

    .line 65
    sput-object v0, Lorg/jivesoftware/smackx/packet/JingleDescription;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    .line 79
    return-void
.end method


# virtual methods
.method public addAudioPayloadTypes(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, pts:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    monitor-enter v3

    .line 89
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .local v1, ptIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    monitor-exit v3

    .line 95
    return-void

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 92
    .local v0, pt:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    new-instance v2, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;-><init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;)V

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/packet/JingleDescription;->addPayloadType(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    goto :goto_0

    .line 88
    .end local v0           #pt:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    .end local v1           #ptIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addPayloadType(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 3
    .parameter "pt"

    .prologue
    .line 104
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    monitor-enter v1

    .line 105
    if-nez p1, :cond_0

    .line 106
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smackx/packet/JingleDescription;->LOGGER:Lorg/jivesoftware/smackx/jingle/SmackLogger;

    const-string v2, "Null payload type"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/jingle/SmackLogger;->error(Ljava/lang/String;)V

    .line 104
    :goto_0
    monitor-exit v1

    .line 111
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioPayloadTypesList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getPayloadTypes()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    .local v0, jinglePtsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/jingle/media/PayloadType;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    return-object v3

    .line 123
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 124
    .local v1, jpt:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    instance-of v4, v1, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 125
    check-cast v2, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 126
    .local v2, jpta:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "description"

    return-object v0
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public getPayloadTypes()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getPayloadTypesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadTypesCount()I
    .locals 2

    .prologue
    .line 166
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPayloadTypesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    monitor-enter v1

    .line 178
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    monitor-enter v3

    .line 192
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 193
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" >"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleDescription;->payloads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 201
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleDescription;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 196
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 197
    .local v1, payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 191
    .end local v1           #payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
