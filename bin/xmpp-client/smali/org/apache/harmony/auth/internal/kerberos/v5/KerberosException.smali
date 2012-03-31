.class public Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;
.super Ljava/lang/RuntimeException;
.source "KerberosException.java"


# static fields
.field private static final serialVersionUID:J = -0x41b247f5a1e63a23L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 32
    return-void
.end method
