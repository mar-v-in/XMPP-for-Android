.class public abstract Lorg/jivesoftware/smackx/provider/JingleTransportProvider;
.super Ljava/lang/Object;
.source "JingleTransportProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/provider/JingleTransportProvider$Ice;,
        Lorg/jivesoftware/smackx/provider/JingleTransportProvider$RawUdp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method


# virtual methods
.method protected getInstance()Lorg/jivesoftware/smackx/packet/JingleTransport;
    .locals 1

    .prologue
    .line 231
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleTransport;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleTransport;-><init>()V

    return-object v0
.end method

.method protected abstract parseCandidate(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 8
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, done:Z
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider;->getInstance()Lorg/jivesoftware/smackx/packet/JingleTransport;

    move-result-object v4

    .line 251
    .local v4, trans:Lorg/jivesoftware/smackx/packet/JingleTransport;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 272
    return-object v4

    .line 252
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 253
    .local v1, eventType:I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 256
    const-string v5, "candidate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/provider/JingleTransportProvider;->parseCandidate(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;

    move-result-object v2

    .line 258
    .local v2, jtc:Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v4, v2}, Lorg/jivesoftware/smackx/packet/JingleTransport;->addCandidate(Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;)V

    goto :goto_0

    .line 262
    .end local v2           #jtc:Lorg/jivesoftware/smackx/packet/JingleTransport$JingleTransportCandidate;
    :cond_2
    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown tag \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 263
    const-string v7, "\" in transport element."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 262
    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    :cond_3
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 266
    const-string v5, "transport"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    const/4 v0, 0x1

    goto :goto_0
.end method
