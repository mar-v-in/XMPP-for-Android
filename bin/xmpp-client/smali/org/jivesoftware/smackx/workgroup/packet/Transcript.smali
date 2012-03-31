.class public Lorg/jivesoftware/smackx/workgroup/packet/Transcript;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Transcript.java"


# instance fields
.field private final packets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionID"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->sessionID:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->packets:Ljava/util/List;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter "sessionID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/Packet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, packets:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smack/packet/Packet;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->sessionID:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->packets:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<transcript xmlns=\"http://jivesoftware.com/protocol/workgroup\" sessionID=\""

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->sessionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->packets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    const-string v2, "</transcript>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 75
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Packet;

    .line 76
    .local v1, packet:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getPackets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/Packet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->packets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/Transcript;->sessionID:Ljava/lang/String;

    return-object v0
.end method
