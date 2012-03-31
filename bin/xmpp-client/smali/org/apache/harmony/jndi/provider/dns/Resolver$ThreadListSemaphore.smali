.class Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;
.super Ljava/lang/Object;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/dns/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadListSemaphore"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/dns/Resolver;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/jndi/provider/dns/Resolver;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;->this$0:Lorg/apache/harmony/jndi/provider/dns/Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/jndi/provider/dns/Resolver;Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListSemaphore;-><init>(Lorg/apache/harmony/jndi/provider/dns/Resolver;)V

    return-void
.end method
