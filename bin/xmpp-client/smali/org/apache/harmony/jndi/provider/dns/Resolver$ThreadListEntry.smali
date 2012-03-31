.class Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;
.super Ljava/lang/Object;
.source "Resolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/dns/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadListEntry"
.end annotation


# instance fields
.field dnsClass:I

.field serverNameToResolve:Ljava/lang/String;

.field thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/dns/Resolver$ThreadListEntry;-><init>()V

    return-void
.end method
