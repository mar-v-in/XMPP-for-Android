.class public Lorg/apache/harmony/luni/util/ThreadLocalCache;
.super Ljava/lang/Object;
.source "ThreadLocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static byteBuffer:Lorg/apache/harmony/luni/util/ThreadLocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/ThreadLocalCache",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static charBuffer:Lorg/apache/harmony/luni/util/ThreadLocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/ThreadLocalCache",
            "<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static utf8Decoder:Lorg/apache/harmony/luni/util/ThreadLocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/ThreadLocalCache",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public static utf8Encoder:Lorg/apache/harmony/luni/util/ThreadLocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/ThreadLocalCache",
            "<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private storage:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/harmony/luni/util/ThreadLocalCache$1;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/ThreadLocalCache$1;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->utf8Decoder:Lorg/apache/harmony/luni/util/ThreadLocalCache;

    .line 43
    new-instance v0, Lorg/apache/harmony/luni/util/ThreadLocalCache$2;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/ThreadLocalCache$2;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->utf8Encoder:Lorg/apache/harmony/luni/util/ThreadLocalCache;

    .line 50
    new-instance v0, Lorg/apache/harmony/luni/util/ThreadLocalCache$3;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/ThreadLocalCache$3;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->byteBuffer:Lorg/apache/harmony/luni/util/ThreadLocalCache;

    .line 58
    new-instance v0, Lorg/apache/harmony/luni/util/ThreadLocalCache$4;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/ThreadLocalCache$4;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->charBuffer:Lorg/apache/harmony/luni/util/ThreadLocalCache;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    .local p0, this:Lorg/apache/harmony/luni/util/ThreadLocalCache;,"Lorg/apache/harmony/luni/util/ThreadLocalCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 34
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->storage:Ljava/lang/ref/SoftReference;

    .line 31
    return-void
.end method

.method private getThreadLocal()Ljava/lang/ThreadLocal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lorg/apache/harmony/luni/util/ThreadLocalCache;,"Lorg/apache/harmony/luni/util/ThreadLocalCache<TT;>;"
    iget-object v1, p0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->storage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ThreadLocal;

    .line 74
    .local v0, tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lorg/apache/harmony/luni/util/ThreadLocalCache$5;

    .end local v0           #tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/util/ThreadLocalCache$5;-><init>(Lorg/apache/harmony/luni/util/ThreadLocalCache;)V

    .line 81
    .restart local v0       #tls:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->storage:Ljava/lang/ref/SoftReference;

    .line 83
    :cond_0
    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lorg/apache/harmony/luni/util/ThreadLocalCache;,"Lorg/apache/harmony/luni/util/ThreadLocalCache<TT;>;"
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/ThreadLocalCache;->getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lorg/apache/harmony/luni/util/ThreadLocalCache;,"Lorg/apache/harmony/luni/util/ThreadLocalCache<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 97
    .local p0, this:Lorg/apache/harmony/luni/util/ThreadLocalCache;,"Lorg/apache/harmony/luni/util/ThreadLocalCache<TT;>;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/ThreadLocalCache;->storage:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 98
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lorg/apache/harmony/luni/util/ThreadLocalCache;,"Lorg/apache/harmony/luni/util/ThreadLocalCache<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Lorg/apache/harmony/luni/util/ThreadLocalCache;->getThreadLocal()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
