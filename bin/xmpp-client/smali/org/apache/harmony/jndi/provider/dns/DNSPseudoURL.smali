.class public Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;
.super Ljava/lang/Object;
.source "DNSPseudoURL.java"


# instance fields
.field private domain:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private hostIpWasGiven:Z

.field private port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "strForm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v4, "localhost"

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->host:Ljava/lang/String;

    .line 36
    const/16 v4, 0x35

    iput v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->port:I

    .line 38
    const-string v4, "."

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->domain:Ljava/lang/String;

    .line 40
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->hostIpWasGiven:Z

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, st:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 63
    .local v2, st2:Ljava/util/StringTokenizer;
    if-nez p1, :cond_0

    .line 65
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "jndi.67"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    .end local v1           #st:Ljava/util/StringTokenizer;
    const-string v4, "/"

    invoke-direct {v1, p1, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    .restart local v1       #st:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "jndi.68"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, token:Ljava/lang/String;
    const-string v4, "dns:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "jndi.69"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 80
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 81
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_4

    .line 83
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 84
    const-string v5, "jndi.6A"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    :cond_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 89
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_5

    .line 91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 92
    const-string v5, "jndi.6A"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 95
    new-instance v2, Ljava/util/StringTokenizer;

    .end local v2           #st2:Ljava/util/StringTokenizer;
    const-string v4, ":"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .restart local v2       #st2:Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->host:Ljava/lang/String;

    .line 98
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->host:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->parseIpStr(Ljava/lang/String;)[B

    .line 99
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->hostIpWasGiven:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 105
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->port:I

    .line 108
    :cond_6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 109
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 110
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_8

    .line 112
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 113
    const-string v5, "jndi.6A"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-boolean v5, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->hostIpWasGiven:Z

    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_8
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->domain:Ljava/lang/String;

    .line 122
    :cond_9
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 124
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 125
    const-string v5, "jndi.66"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 119
    :cond_a
    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/dns/ProviderMgr;->normalizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->domain:Ljava/lang/String;

    goto :goto_1

    .line 128
    :cond_b
    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->port:I

    return v0
.end method

.method public isHostIpGiven()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSPseudoURL;->hostIpWasGiven:Z

    return v0
.end method
