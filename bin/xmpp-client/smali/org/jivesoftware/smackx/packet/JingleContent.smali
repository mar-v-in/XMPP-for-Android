.class public Lorg/jivesoftware/smackx/packet/JingleContent;
.super Ljava/lang/Object;
.source "JingleContent.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# static fields
.field public static final CREATOR:Ljava/lang/String; = "creator"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NODENAME:Ljava/lang/String; = "content"


# instance fields
.field private final creator:Ljava/lang/String;

.field private description:Lorg/jivesoftware/smackx/packet/JingleDescription;

.field private final name:Ljava/lang/String;

.field private final transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "creator"
    .parameter "name"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    .line 51
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->creator:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V
    .locals 2
    .parameter "transport"

    .prologue
    .line 62
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    monitor-enter v1

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v1

    .line 65
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addTransports(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleTransport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, transports:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/packet/JingleTransport;>;"
    monitor-enter p1

    .line 75
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    monitor-exit p1

    .line 79
    return-void

    .line 75
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/JingleTransport;

    .line 76
    .local v0, transport:Lorg/jivesoftware/smackx/packet/JingleTransport;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/JingleContent;->addJingleTransport(Lorg/jivesoftware/smackx/packet/JingleTransport;)V

    goto :goto_0

    .line 74
    .end local v0           #transport:Lorg/jivesoftware/smackx/packet/JingleTransport;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Lorg/jivesoftware/smackx/packet/JingleDescription;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->description:Lorg/jivesoftware/smackx/packet/JingleDescription;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "content"

    return-object v0
.end method

.method public getJingleTransports()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleTransport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContent;->getJingleTransportsList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method public getJingleTransportsCount()I
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getJingleTransportsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/JingleTransport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    monitor-enter v1

    .line 132
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, ""

    return-object v0
.end method

.method public setDescription(Lorg/jivesoftware/smackx/packet/JingleDescription;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 158
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->description:Lorg/jivesoftware/smackx/packet/JingleDescription;

    .line 159
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    monitor-enter v3

    .line 172
    :try_start_0
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContent;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " creator=\'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->creator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' name=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->description:Lorg/jivesoftware/smackx/packet/JingleDescription;

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->description:Lorg/jivesoftware/smackx/packet/JingleDescription;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/JingleDescription;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleContent;->transports:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleContent;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 182
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/packet/JingleTransport;

    .line 183
    .local v1, transport:Lorg/jivesoftware/smackx/packet/JingleTransport;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/JingleTransport;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    .end local v1           #transport:Lorg/jivesoftware/smackx/packet/JingleTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
