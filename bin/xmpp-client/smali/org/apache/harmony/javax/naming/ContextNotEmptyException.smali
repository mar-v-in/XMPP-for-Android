.class public Lorg/apache/harmony/javax/naming/ContextNotEmptyException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "ContextNotEmptyException.java"


# static fields
.field private static final serialVersionUID:J = 0xf23e1b098d287e5L


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
    .parameter "s"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
