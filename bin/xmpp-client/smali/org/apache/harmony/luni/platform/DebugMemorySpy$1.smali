.class Lorg/apache/harmony/luni/platform/DebugMemorySpy$1;
.super Ljava/lang/Object;
.source "DebugMemorySpy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/platform/DebugMemorySpy;->startSpy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/platform/DebugMemorySpy;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/platform/DebugMemorySpy;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/luni/platform/DebugMemorySpy$1;->this$0:Lorg/apache/harmony/luni/platform/DebugMemorySpy;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/platform/DebugMemorySpy$1;->this$0:Lorg/apache/harmony/luni/platform/DebugMemorySpy;

    iget-object v1, p0, Lorg/apache/harmony/luni/platform/DebugMemorySpy$1;->this$0:Lorg/apache/harmony/luni/platform/DebugMemorySpy;

    iget-object v1, v1, Lorg/apache/harmony/luni/platform/DebugMemorySpy;->notifyQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/platform/DebugMemorySpy;->orphanedMemory(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method
