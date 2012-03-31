.class public abstract Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
.super Ljava/lang/Object;
.source "JingleTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JingleTransportCandidate"
.end annotation


# static fields
.field public static final NODENAME:Ljava/lang/String; = "candidate"


# instance fields
.field protected transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter "candidate"

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->setMediaTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V

    .line 175
    return-void
.end method

.method public static getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "candidate"

    return-object v0
.end method


# virtual methods
.method protected getChildElements()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaTransport()Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    return-object v0
.end method

.method public setMediaTransport(Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;)V
    .locals 0
    .parameter "cand"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    .line 205
    :cond_0
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->getChildElements()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, childElements:Ljava/lang/String;
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->transportCandidate:Lorg/jivesoftware/smackx/jingle/nat/TransportCandidate;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 217
    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v2, "/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
