.class public Lorg/apache/qpid/management/common/sasl/SaslProvider;
.super Ljava/security/Provider;
.source "SaslProvider.java"


# static fields
.field private static final serialVersionUID:J = -0x60d72d5b17df9932L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 29
    const-string v0, "SaslClientFactory"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "SASL PLAIN CLIENT MECHANISM"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 30
    const-string v0, "SaslClientFactory.PLAIN"

    const-class v1, Lorg/apache/qpid/management/common/sasl/ClientSaslFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/qpid/management/common/sasl/SaslProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
