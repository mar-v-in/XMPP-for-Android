.class public Lorg/jivesoftware/smack/sasl/SASLExternalMechanism;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLExternalMechanism.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 0
    .parameter "saslAuthentication"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "EXTERNAL"

    return-object v0
.end method
