.class Lorg/apache/harmony/luni/util/ThreadLocalCache$2;
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
        "Ljava/nio/charset/CharsetEncoder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/ThreadLocalCache;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/ThreadLocalCache$2;->initialValue()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .prologue
    .line 46
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    return-object v0
.end method
