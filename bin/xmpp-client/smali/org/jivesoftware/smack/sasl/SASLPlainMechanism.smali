.class public Lorg/jivesoftware/smack/sasl/SASLPlainMechanism;
.super Lorg/jivesoftware/smack/sasl/SASLMechanism;
.source "SASLPlainMechanism.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/SASLAuthentication;)V
    .locals 0
    .parameter "saslAuthentication"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/SASLMechanism;-><init>(Lorg/jivesoftware/smack/SASLAuthentication;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "PLAIN"

    return-object v0
.end method
