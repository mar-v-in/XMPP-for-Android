.class public Lorg/apache/harmony/javax/naming/NoPermissionException;
.super Lorg/apache/harmony/javax/naming/NamingSecurityException;
.source "NoPermissionException.java"


# static fields
.field private static final serialVersionUID:J = 0x7482369e4144455fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingSecurityException;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingSecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method
