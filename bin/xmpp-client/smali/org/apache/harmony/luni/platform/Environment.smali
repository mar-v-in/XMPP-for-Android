.class public Lorg/apache/harmony/luni/platform/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/platform/Environment$EnvironmentMap;
    }
.end annotation


# static fields
.field private static envMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/luni/platform/Environment;->envMap:Ljava/util/Map;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getEnvByName([B)[B
.end method

.method private static native getEnvBytes()[B
.end method

.method public static getenv(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 121
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/luni/platform/Environment;->getEnvByName([B)[B

    move-result-object v1

    .line 122
    .local v1, env:[B
    if-nez v1, :cond_0

    .line 123
    const/4 v2, 0x0

    .line 125
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v1           #env:[B
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static getenv()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 91
    sget-object v5, Lorg/apache/harmony/luni/platform/Environment;->envMap:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 92
    new-instance v3, Lorg/apache/harmony/luni/platform/Environment$EnvironmentMap;

    invoke-direct {v3}, Lorg/apache/harmony/luni/platform/Environment$EnvironmentMap;-><init>()V

    .line 93
    .local v3, newEnvMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/harmony/luni/platform/Environment;->getEnvBytes()[B

    move-result-object v0

    .line 94
    .local v0, bytes:[B
    if-nez v0, :cond_0

    .line 95
    new-instance v5, Ljava/lang/Error;

    const-string v6, "Failed to get environment variables."

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    const-string v7, "\u0000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, envStrings:[Ljava/lang/String;
    array-length v7, v2

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_2

    .line 105
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    sput-object v5, Lorg/apache/harmony/luni/platform/Environment;->envMap:Ljava/util/Map;

    .line 107
    :cond_1
    sget-object v5, Lorg/apache/harmony/luni/platform/Environment;->envMap:Ljava/util/Map;

    return-object v5

    .line 98
    :cond_2
    aget-object v1, v2, v5

    .line 101
    .local v1, envString:Ljava/lang/String;
    const-string v8, "="

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 102
    .local v4, separator:I
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 103
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 102
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
