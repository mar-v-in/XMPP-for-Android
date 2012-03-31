.class public Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
.super Ljava/lang/Object;
.source "DataPacketExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# static fields
.field public static final ELEMENT_NAME:Ljava/lang/String; = "data"


# instance fields
.field private final data:Ljava/lang/String;

.field private decodedData:[B

.field private final seq:J

.field private final sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "sessionID"
    .parameter "seq"
    .parameter "data"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 57
    const-string v1, "Session ID must not be null or empty"

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    const-wide/32 v0, 0xffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string v1, "Sequence must not be between 0 and 65535"

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_3
    if-nez p4, :cond_4

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->sessionID:Ljava/lang/String;

    .line 67
    iput-wide p2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->seq:J

    .line 68
    iput-object p4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->data:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDecodedData()[B
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->decodedData:[B

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->decodedData:[B

    .line 104
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->data:Ljava/lang/String;

    const-string v1, ".*={1,2}+.+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->data:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->decodedData:[B

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->decodedData:[B

    goto :goto_0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string v0, "data"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "http://jabber.org/protocol/ibb"

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->seq:J

    return-wide v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, "http://jabber.org/protocol/ibb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "seq=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-wide v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->seq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "sid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->sessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
