.class public Lorg/apache/harmony/javax/naming/SizeLimitExceededException;
.super Lorg/apache/harmony/javax/naming/LimitExceededException;
.source "SizeLimitExceededException.java"


# static fields
.field private static final serialVersionUID:J = 0x62f053162f85a443L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/LimitExceededException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/LimitExceededException;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method
