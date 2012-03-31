.class public Lorg/apache/harmony/javax/naming/AuthenticationNotSupportedException;
.super Lorg/apache/harmony/javax/naming/NamingSecurityException;
.source "AuthenticationNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = -0x6336787c2f254bccL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingSecurityException;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingSecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
