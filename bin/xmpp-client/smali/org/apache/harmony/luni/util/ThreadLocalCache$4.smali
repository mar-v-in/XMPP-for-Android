.class Lorg/apache/harmony/luni/util/ThreadLocalCache$4;
.super Lorg/apache/harmony/luni/util/ThreadLocalCache;
.source "ThreadLocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/ThreadLocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/harmony/luni/util/ThreadLocalCache",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/ThreadLocalCache;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/ThreadLocalCache$4;->initialValue()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/nio/CharBuffer;
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x48

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method
