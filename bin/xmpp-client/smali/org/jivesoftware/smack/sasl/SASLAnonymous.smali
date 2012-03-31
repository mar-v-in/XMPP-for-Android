.class public Lorg/jivesoftware/smack/sasl/SASLAnonymous;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLAnonymous.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 0
    .parameter "saslAuthentication"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected authenticate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLAnonymous;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLAnonymous;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/jivesoftware/smack/sasl/SASLMechanism$AuthMechanism;-><init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 43
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "host"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLAnonymous;->authenticate()V

    .line 55
    return-void
.end method

.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljavax/security/auth/callback/CallbackHandler;)V
    .locals 0
    .parameter "username"
    .parameter "host"
    .parameter "cbh"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLAnonymous;->authenticate()V

    .line 49
    return-void
.end method

.method public challengeReceived(Ljava/lang/String;)V
    .locals 2
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/jivesoftware/smack/sasl/SASLAnonymous;->getSASLAuthentication()Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/sasl/SASLMechanism$Response;-><init>(Lorg/jivesoftware/smack/sasl/SASLMechanism;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SASLAuthentication;->send(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 62
    return-void
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "ANONYMOUS"

    return-object v0
.end method
