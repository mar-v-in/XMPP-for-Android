.class Lorg/apache/harmony/luni/util/ThreadLocalCache$5;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/util/ThreadLocalCache;->getThreadLocal()Ljava/lang/ThreadLocal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/util/ThreadLocalCache;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/util/ThreadLocalCache;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/util/ThreadLocalCache$5;->this$0:Lorg/apache/harmony/luni/util/ThreadLocalCache;

    .line 75
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/luni/util/ThreadLocalCache$5;->this$0:Lorg/apache/harmony/luni/util/ThreadLocalCache;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/util/ThreadLocalCache;->initialValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
