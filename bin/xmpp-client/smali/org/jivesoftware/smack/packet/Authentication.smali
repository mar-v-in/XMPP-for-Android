.class public Lorg/jivesoftware/smack/packet/Authentication;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "Authentication.java"


# instance fields
.field private digest:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private resource:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 31
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    .line 46
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Authentication;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<query xmlns=\"jabber:iq:auth\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    const-string v1, "<username/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    const-string v1, "<digest/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 69
    const-string v1, "<password/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_2
    :goto_2
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 77
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 78
    const-string v1, "<resource/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_3
    :goto_3
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 57
    :cond_4
    const-string v1, "<username>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</username>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_5
    const-string v1, "<digest>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</digest>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    :cond_6
    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, "</password>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 80
    :cond_7
    const-string v1, "<resource>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</resource>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setDigest(Ljava/lang/String;)V
    .locals 0
    .parameter "digest"

    .prologue
    .line 142
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDigest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "connectionID"
    .parameter "password"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Authentication;->digest:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 170
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->password:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 180
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->resource:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 190
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Authentication;->username:Ljava/lang/String;

    .line 191
    return-void
.end method
