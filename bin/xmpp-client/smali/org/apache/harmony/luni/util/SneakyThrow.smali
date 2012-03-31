.class public final Lorg/apache/harmony/luni/util/SneakyThrow;
.super Ljava/lang/Object;
.source "SneakyThrow.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 63
    invoke-static {p0}, Lorg/apache/harmony/luni/util/SneakyThrow;->sneakyThrow2(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    throw p0
.end method
