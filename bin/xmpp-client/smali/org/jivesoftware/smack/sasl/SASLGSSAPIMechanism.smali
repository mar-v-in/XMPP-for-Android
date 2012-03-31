.class public Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLGSSAPIMechanism.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 2
    .parameter "saslAuthentication"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 42
    const-string v0, "javax.security.auth.useSubjectCredsOnly"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    const-string v0, "java.security.auth.login.config"

    const-string v1, "gss.conf"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "username"
    .parameter "host"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 92
    .local v0, mechanisms:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v4, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "org.apache.harmony.javax.security.sasl.server.authentication"

    const-string v2, "TRUE"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v2, "xmpp"

    move-object v1, p1

    move-object v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/javax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 96
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;->authenticate()V

    .line 97
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 6
    .parameter "username"
    .parameter "host"
    .parameter "cbh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    .local v0, mechanisms:[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v4, props:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "org.apache.harmony.javax.security.sasl.server.authentication"

    const-string v2, "TRUE"

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "xmpp"

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/javax/security/sasl/Sasl;->createSaslClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)Lorg/apache/harmony/javax/security/sasl/SaslClient;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;->sc:Lorg/apache/harmony/javax/security/sasl/SaslClient;

    .line 70
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLGSSAPIMechanism;->authenticate()V

    .line 71
    return-void
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "GSSAPI"

    return-object v0
.end method
