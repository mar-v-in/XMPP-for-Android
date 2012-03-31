.class public Lorg/jivesoftware/smack/packet/Bind;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Bind.java"


# instance fields
.field private jid:Ljava/lang/String;

.field private resource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 38
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Bind;->resource:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Bind;->jid:Ljava/lang/String;

    .line 42
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Bind;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<bind xmlns=\"urn:ietf:params:xml:ns:xmpp-bind\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Bind;->resource:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "<resource>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Bind;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</resource>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Bind;->jid:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 53
    const-string v1, "<jid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Bind;->jid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</jid>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_1
    const-string v1, "</bind>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Bind;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Bind;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Bind;->jid:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 72
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Bind;->resource:Ljava/lang/String;

    .line 73
    return-void
.end method
