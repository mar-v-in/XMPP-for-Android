.class public final Lorg/apache/harmony/luni/platform/Endianness;
.super Ljava/lang/Object;
.source "Endianness.java"


# static fields
.field public static final BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

.field public static final LITTLE_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/apache/harmony/luni/platform/Endianness;

    const-string v1, "BIG_ENDIAN"

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/platform/Endianness;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/luni/platform/Endianness;->BIG_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    .line 32
    new-instance v0, Lorg/apache/harmony/luni/platform/Endianness;

    .line 33
    const-string v1, "LITTLE_ENDIAN"

    .line 32
    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/platform/Endianness;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/harmony/luni/platform/Endianness;->LITTLE_ENDIAN:Lorg/apache/harmony/luni/platform/Endianness;

    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "displayName"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/luni/platform/Endianness;->displayName:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/luni/platform/Endianness;->displayName:Ljava/lang/String;

    return-object v0
.end method
