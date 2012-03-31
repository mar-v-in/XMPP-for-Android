.class public Lorg/apache/harmony/javax/naming/LimitExceededException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "LimitExceededException.java"


# static fields
.field private static final serialVersionUID:J = -0xac81949604a6cf0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
