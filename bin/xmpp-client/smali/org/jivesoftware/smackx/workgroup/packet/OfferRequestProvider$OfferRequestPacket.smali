.class public Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "OfferRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfferRequestPacket"
.end annotation


# instance fields
.field private final content:Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;

.field private final metaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final sessionID:Ljava/lang/String;

.field private final timeout:I

.field private final userID:Ljava/lang/String;

.field private final userJID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;)V
    .locals 0
    .parameter "userJID"
    .parameter "userID"
    .parameter "timeout"
    .parameter
    .parameter "sessionID"
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p4, metaData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->userJID:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->userID:Ljava/lang/String;

    .line 56
    iput p3, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->timeout:I

    .line 57
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->metaData:Ljava/util/Map;

    .line 58
    iput-object p5, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->sessionID:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->content:Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;

    .line 60
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3c

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<offer xmlns=\"http://jabber.org/protocol/workgroup\" jid=\""

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->userJID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "<timeout>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->timeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</timeout>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->sessionID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " session=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->metaData:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->metaData:Ljava/util/Map;

    invoke-static {v1}, Lorg/jivesoftware/smackx/workgroup/util/MetaDataUtils;->serializeMetaData(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->userID:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "http://jivesoftware.com/protocol/workgroup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_2
    const-string v1, "</offer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContent()Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->content:Lorg/jivesoftware/smackx/workgroup/agent/OfferContent;

    return-object v0
.end method

.method public getMetaData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->metaData:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->timeout:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->userID:Ljava/lang/String;

    return-object v0
.end method

.method public getUserJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/OfferRequestProvider$OfferRequestPacket;->userJID:Ljava/lang/String;

    return-object v0
.end method
