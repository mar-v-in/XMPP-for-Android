.class public Lorg/apache/harmony/luni/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field static final FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

.field static final MEMORY_SYSTEM:Lorg/apache/harmony/luni/platform/IMemorySystem;

.field static final NETWORK_SYSTEM:Lorg/apache/harmony/luni/platform/INetworkSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSFileSystem;->getOSFileSystem()Lorg/apache/harmony/luni/platform/OSFileSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    .line 39
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSMemory;->getOSMemory()Lorg/apache/harmony/luni/platform/OSMemory;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->MEMORY_SYSTEM:Lorg/apache/harmony/luni/platform/IMemorySystem;

    .line 42
    invoke-static {}, Lorg/apache/harmony/luni/platform/OSNetworkSystem;->getOSNetworkSystem()Lorg/apache/harmony/luni/platform/OSNetworkSystem;

    move-result-object v0

    .line 41
    sput-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK_SYSTEM:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final accessCheck()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public static getFileSystem()Lorg/apache/harmony/luni/platform/IFileSystem;
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->accessCheck()V

    .line 62
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->FILE_SYSTEM:Lorg/apache/harmony/luni/platform/IFileSystem;

    return-object v0
.end method

.method public static getMemorySystem()Lorg/apache/harmony/luni/platform/IMemorySystem;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->accessCheck()V

    .line 72
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->MEMORY_SYSTEM:Lorg/apache/harmony/luni/platform/IMemorySystem;

    return-object v0
.end method

.method public static getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->accessCheck()V

    .line 82
    sget-object v0, Lorg/apache/harmony/luni/platform/Platform;->NETWORK_SYSTEM:Lorg/apache/harmony/luni/platform/INetworkSystem;

    return-object v0
.end method
