.class final Lorg/apache/harmony/luni/platform/DebugMemorySpy;
.super Lorg/apache/harmony/luni/platform/AbstractMemorySpy;
.source "DebugMemorySpy.java"


# instance fields
.field private final stackDump:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/platform/DebugMemorySpy;->stackDump:Z

    .line 31
    invoke-direct {p0}, Lorg/apache/harmony/luni/platform/DebugMemorySpy;->startSpy()V

    .line 32
    return-void
.end method

.method private startSpy()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/harmony/luni/platform/DebugMemorySpy$1;

    invoke-direct {v1, p0}, Lorg/apache/harmony/luni/platform/DebugMemorySpy$1;-><init>(Lorg/apache/harmony/luni/platform/DebugMemorySpy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, spy:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 93
    const-string v1, "Platform Interface Memory Spy"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 94
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    return-void
.end method


# virtual methods
.method public free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lorg/apache/harmony/luni/platform/AbstractMemorySpy;->free(Lorg/apache/harmony/luni/platform/PlatformAddress;)Z

    move-result v0

    .line 37
    .local v0, vetoed:Z
    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 40
    :cond_0
    return v0
.end method

.method public rangeCheck(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V
    .locals 11
    .parameter "address"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 53
    iget-object v9, p0, Lorg/apache/harmony/luni/platform/DebugMemorySpy;->memoryInUse:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;

    .line 54
    .local v6, wrapper:Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;
    if-eqz v6, :cond_1

    .line 55
    invoke-virtual {p1, p2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v1

    .line 56
    .local v1, accessStart:Lorg/apache/harmony/luni/platform/PlatformAddress;
    invoke-virtual {v1, p3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->offsetBytes(I)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    .line 57
    .local v0, accessEnd:Lorg/apache/harmony/luni/platform/PlatformAddress;
    iget-object v3, v6, Lorg/apache/harmony/luni/platform/AbstractMemorySpy$AddressWrapper;->shadow:Lorg/apache/harmony/luni/platform/PlatformAddress;

    .line 59
    .local v3, allocStart:Lorg/apache/harmony/luni/platform/PlatformAddress;
    iget-wide v9, p1, Lorg/apache/harmony/luni/platform/PlatformAddress;->size:J

    invoke-virtual {v3, v9, v10}, Lorg/apache/harmony/luni/platform/PlatformAddress;->offsetBytes(J)Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v2

    .line 60
    .local v2, allocEnd:Lorg/apache/harmony/luni/platform/PlatformAddress;
    invoke-virtual {v1, v3}, Lorg/apache/harmony/luni/platform/PlatformAddress;->compareTo(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    move v5, v7

    .line 61
    .local v5, under:Z
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/harmony/luni/platform/PlatformAddress;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, v7, :cond_3

    move v4, v7

    .line 62
    .local v4, over:Z
    :goto_1
    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    .line 63
    :cond_0
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Memory Spy! Access out of allocated range"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\tAlloc range  : ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\tAccess range : ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 74
    .end local v0           #accessEnd:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .end local v1           #accessStart:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .end local v2           #allocEnd:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .end local v3           #allocStart:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .end local v4           #over:Z
    .end local v5           #under:Z
    :cond_1
    return-void

    .restart local v0       #accessEnd:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .restart local v1       #accessStart:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .restart local v2       #allocEnd:Lorg/apache/harmony/luni/platform/PlatformAddress;
    .restart local v3       #allocStart:Lorg/apache/harmony/luni/platform/PlatformAddress;
    :cond_2
    move v5, v8

    .line 60
    goto :goto_0

    .restart local v5       #under:Z
    :cond_3
    move v4, v8

    .line 61
    goto :goto_1
.end method
