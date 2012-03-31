.class public abstract Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;
.super Ljava/lang/Object;
.source "JingleMediaSession.java"


# instance fields
.field private final jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

.field private final local:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

.field private mediaLocator:Ljava/lang/String;

.field private final mediaReceivedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

.field private final remote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 1
    .parameter "payloadType"
    .parameter "remote"
    .parameter "local"
    .parameter "mediaLocator"
    .parameter "jingleSession"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaReceivedListeners:Ljava/util/List;

    .line 73
    iput-object p3, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->local:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 74
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->remote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 75
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 76
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaLocator:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 78
    return-void
.end method


# virtual methods
.method public addMediaReceivedListener(Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;)V
    .locals 1
    .parameter "mediaReceivedListener"

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaReceivedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public getJingleSession()Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    return-object v0
.end method

.method public getLocal()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->local:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    return-object v0
.end method

.method public getMediaLocator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaLocator:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadType()Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->payloadType:Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    return-object v0
.end method

.method public getRemote()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->remote:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    return-object v0
.end method

.method public abstract initialize()V
.end method

.method public mediaReceived(Ljava/lang/String;)V
    .locals 3
    .parameter "participant"

    .prologue
    .line 144
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaReceivedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    return-void

    .line 144
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;

    .line 145
    .local v0, mediaReceivedListener:Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;->mediaReceived(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeAllMediaReceivedListener()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaReceivedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    return-void
.end method

.method public removeMediaReceivedListener(Lorg/jivesoftware/smackx/jingle/media/MediaReceivedListener;)V
    .locals 1
    .parameter "mediaReceivedListener"

    .prologue
    .line 163
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaReceivedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public setMediaLocator(Ljava/lang/String;)V
    .locals 0
    .parameter "mediaLocator"

    .prologue
    .line 173
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;->mediaLocator:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public abstract setTrasmit(Z)V
.end method

.method public abstract startReceive()V
.end method

.method public abstract startTrasmit()V
.end method

.method public abstract stopReceive()V
.end method

.method public abstract stopTrasmit()V
.end method
