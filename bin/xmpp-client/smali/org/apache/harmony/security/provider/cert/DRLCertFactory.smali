.class public final Lorg/apache/harmony/security/provider/cert/DRLCertFactory;
.super Ljava/security/Provider;
.source "DRLCertFactory.java"


# static fields
.field private static final serialVersionUID:J = -0x64e2fcde27825c67L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    const-string v0, "DRLCertFactory"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "security.151"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 50
    new-instance v0, Lorg/apache/harmony/security/provider/cert/DRLCertFactory$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/security/provider/cert/DRLCertFactory$1;-><init>(Lorg/apache/harmony/security/provider/cert/DRLCertFactory;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 61
    return-void
.end method
