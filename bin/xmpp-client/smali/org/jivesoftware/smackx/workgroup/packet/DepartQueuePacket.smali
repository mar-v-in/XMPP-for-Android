.class public Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DepartQueuePacket.java"


# instance fields
.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "workgroup"

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "workgroup"
    .parameter "user"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 61
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->user:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->setTo(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 65
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->setFrom(Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    const-string v1, "<depart-queue xmlns=\"http://jabber.org/protocol/workgroup\""

    .line 70
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->user:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 74
    const-string v1, "><jid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/workgroup/packet/DepartQueuePacket;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</jid></depart-queue>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 76
    :cond_0
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
