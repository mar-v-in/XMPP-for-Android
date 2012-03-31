.class public Lorg/apache/harmony/javax/security/auth/RefreshFailedException;
.super Ljava/lang/Exception;
.source "RefreshFailedException.java"


# static fields
.field private static final serialVersionUID:J = 0x4633347628f715b0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
