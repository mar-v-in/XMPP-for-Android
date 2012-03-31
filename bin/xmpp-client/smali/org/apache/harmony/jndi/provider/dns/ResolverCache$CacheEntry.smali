.class Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;
.super Ljava/lang/Object;
.source "ResolverCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/dns/ResolverCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheEntry"
.end annotation


# instance fields
.field private final bestBefore:J

.field private final rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;J)V
    .locals 0
    .parameter "rr"
    .parameter "bestBefore"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    .line 55
    iput-wide p2, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->bestBefore:J

    .line 56
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;)Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    return-object v0
.end method


# virtual methods
.method public getBestBefore()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->bestBefore:J

    return-wide v0
.end method

.method public getRR()Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/ResolverCache$CacheEntry;->rr:Lorg/apache/harmony/jndi/provider/dns/ResourceRecord;

    return-object v0
.end method
