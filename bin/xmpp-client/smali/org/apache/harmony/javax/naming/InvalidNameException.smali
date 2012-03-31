.class public Lorg/apache/harmony/javax/naming/InvalidNameException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "InvalidNameException.java"


# static fields
.field private static final serialVersionUID:J = -0x742a9a2e3e2d0d11L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
