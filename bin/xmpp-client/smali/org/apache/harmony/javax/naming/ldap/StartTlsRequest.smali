.class public Lorg/apache/harmony/javax/naming/ldap/StartTlsRequest;
.super Ljava/lang/Object;
.source "StartTlsRequest.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.1466.20037"

.field private static final serialVersionUID:J = 0x3da4040aab1718f5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtendedResponse(Ljava/lang/String;[BII)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    .locals 10
    .parameter "id"
    .parameter "berValue"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation

    .prologue
    .line 42
    if-eqz p1, :cond_0

    const-string v7, "1.3.6.1.4.1.1466.20037"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 43
    new-instance v7, Lorg/apache/harmony/javax/naming/NamingException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ldap.07"

    invoke-static {v9}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 46
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 50
    .local v0, cl:Ljava/lang/ClassLoader;
    :try_start_0
    const-string v7, "META-INF/services/javax.naming.ldap.StartTlsResponse"

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    .line 51
    .local v3, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_3

    .line 95
    .end local v3           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_1
    :try_start_1
    const-string v7, "org.apache.harmony.jndi.provider.ldap.ext.StartTlsResponseImpl"

    .line 96
    const/4 v8, 0x1

    .line 94
    invoke-static {v7, v8, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 96
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/javax/naming/ldap/StartTlsResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 93
    :cond_2
    :goto_2
    return-object v7

    .line 52
    .restart local v3       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 53
    .local v2, confFile:Ljava/net/URL;
    const/4 v5, 0x0

    .line 55
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    .line 56
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 55
    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :cond_4
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_5

    .line 83
    if-eqz v6, :cond_1

    .line 84
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 88
    .end local v2           #confFile:Ljava/net/URL;
    .end local v3           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    goto :goto_1

    .line 61
    .restart local v2       #confFile:Ljava/net/URL;
    .restart local v3       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, className:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v7

    if-nez v7, :cond_4

    .line 74
    const/4 v7, 0x1

    .line 73
    :try_start_7
    invoke-static {v1, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 74
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/javax/naming/ldap/StartTlsResponse;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 83
    if-eqz v6, :cond_2

    .line 84
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    .line 80
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    .line 83
    :goto_4
    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v7

    .line 83
    :goto_5
    if-eqz v5, :cond_6

    .line 84
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 86
    :cond_6
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 97
    .end local v2           #confFile:Ljava/net/URL;
    .end local v3           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    .line 101
    new-instance v7, Lorg/apache/harmony/javax/naming/NamingException;

    const-string v8, "ldap.09"

    invoke-static {v8}, Lorg/apache/harmony/jndi/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 82
    .restart local v2       #confFile:Ljava/net/URL;
    .restart local v3       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 80
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 75
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v1       #className:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    goto :goto_3
.end method

.method public getEncodedValue()[B
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "1.3.6.1.4.1.1466.20037"

    return-object v0
.end method
