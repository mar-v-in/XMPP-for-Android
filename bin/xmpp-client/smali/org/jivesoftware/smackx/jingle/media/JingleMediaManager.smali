.class public abstract Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;
.super Ljava/lang/Object;
.source "JingleMediaManager.java"


# static fields
.field public static final MEDIA_NAME:Ljava/lang/String; = "JingleMediaManager"


# instance fields
.field private final transportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;)V
    .locals 0
    .parameter "transportManager"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->transportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;

    .line 48
    return-void
.end method


# virtual methods
.method public abstract createMediaSession(Lorg/jivesoftware/smackx/jingle/media/PayloadType;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/media/JingleMediaSession;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "JingleMediaManager"

    return-object v0
.end method

.method public abstract getPayloads()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/jingle/media/PayloadType;",
            ">;"
        }
    .end annotation
.end method

.method public getPreferredPayloadType()Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getPayloads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->getPayloads()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransportManager()Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/JingleMediaManager;->transportManager:Lorg/jivesoftware/smackx/jingle/nat/JingleTransportManager;

    return-object v0
.end method
