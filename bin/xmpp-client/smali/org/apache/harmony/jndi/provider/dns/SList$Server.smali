.class Lorg/apache/harmony/jndi/provider/dns/SList$Server;
.super Ljava/lang/Object;
.source "SList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/dns/SList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Server"
.end annotation


# instance fields
.field private serverIP:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private serverPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "serverName"
    .parameter "serverIP"
    .parameter "serverPort"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverName:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverIP:Ljava/lang/String;

    .line 130
    iput p3, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverPort:I

    .line 131
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    if-ne p0, p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 146
    :cond_1
    instance-of v3, p1, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    if-nez v3, :cond_2

    move v1, v2

    .line 147
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 150
    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;

    .line 151
    .local v0, srv:Lorg/apache/harmony/jndi/provider/dns/SList$Server;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverIP:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 152
    :cond_3
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move v1, v2

    .line 153
    goto :goto_0

    .line 155
    :cond_5
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->namesAreEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 156
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_6
    move v1, v2

    .line 155
    goto :goto_0

    .line 158
    :cond_7
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverIP:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverPort:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getIP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->getPort()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setIP(Ljava/lang/String;)V
    .locals 0
    .parameter "serverIP"

    .prologue
    .line 195
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverIP:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "serverName"

    .prologue
    .line 203
    invoke-static {p1}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverName:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .parameter "serverPort"

    .prologue
    .line 211
    iput p1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverPort:I

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverIP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/jndi/provider/dns/SList$Server;->serverPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
