.class public Lorg/jivesoftware/smack/sasl/SASLDigestMD5Mechanism;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLDigestMD5Mechanism.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 0
    .parameter "saslAuthentication"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "DIGEST-MD5"

    return-object v0
.end method
