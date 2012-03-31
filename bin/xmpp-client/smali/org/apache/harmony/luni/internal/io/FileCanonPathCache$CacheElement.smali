.class Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;
.super Ljava/lang/Object;
.source "FileCanonPathCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/io/FileCanonPathCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheElement"
.end annotation


# instance fields
.field canonicalPath:Ljava/lang/String;

.field timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;->canonicalPath:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/luni/internal/io/FileCanonPathCache$CacheElement;->timestamp:J

    .line 39
    return-void
.end method
