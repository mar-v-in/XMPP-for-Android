.class public Lorg/apache/harmony/javax/security/auth/login/AccountExpiredException;
.super Lorg/apache/harmony/javax/security/auth/login/AccountException;
.source "AccountExpiredException.java"


# static fields
.field private static final serialVersionUID:J = -0x5427e2e3891048b8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/AccountException;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/security/auth/login/AccountException;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
