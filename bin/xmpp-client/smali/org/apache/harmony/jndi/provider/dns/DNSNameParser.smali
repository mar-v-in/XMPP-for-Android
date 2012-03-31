.class public Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;
.super Ljava/lang/Object;
.source "DNSNameParser.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/NameParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 52
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/apache/harmony/jndi/provider/dns/DNSNameParser;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, lastTokenWasDilim:Z
    new-instance v1, Lorg/apache/harmony/jndi/provider/dns/DNSName;

    invoke-direct {v1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;-><init>()V

    .line 90
    .local v1, dnsName:Lorg/apache/harmony/jndi/provider/dns/DNSName;
    if-nez p1, :cond_0

    .line 92
    new-instance v4, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v5, "jndi.2E"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xff

    if-le v4, v5, :cond_1

    .line 96
    new-instance v4, Lorg/apache/harmony/javax/naming/InvalidNameException;

    const-string v5, "jndi.54"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_1
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "."

    const/4 v5, 0x1

    invoke-direct {v3, p1, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    .local v3, st:Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_4

    .line 126
    if-eqz v2, :cond_3

    .line 127
    const-string v4, ""

    invoke-virtual {v1, v6, v4}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 129
    :cond_3
    return-object v1

    .line 100
    :cond_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, comp:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 103
    if-eqz v2, :cond_5

    .line 106
    new-instance v4, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 107
    const-string v5, "jndi.55"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_5
    const/4 v2, 0x1

    .line 110
    invoke-virtual {v1}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->size()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 112
    new-instance v4, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 113
    const-string v5, "jndi.56"

    invoke-static {v5}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-le v4, v5, :cond_7

    .line 119
    new-instance v4, Lorg/apache/harmony/javax/naming/InvalidNameException;

    .line 120
    const-string v5, "jndi.57"

    .line 119
    invoke-static {v5, v0}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/harmony/javax/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_7
    invoke-virtual {v1, v6, v0}, Lorg/apache/harmony/jndi/provider/dns/DNSName;->add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;

    .line 123
    const/4 v2, 0x0

    goto :goto_0
.end method
