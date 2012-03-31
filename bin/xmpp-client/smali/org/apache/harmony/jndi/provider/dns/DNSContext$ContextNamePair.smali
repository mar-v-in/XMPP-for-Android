.class Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;
.super Ljava/lang/Object;
.source "DNSContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/dns/DNSContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContextNamePair"
.end annotation


# instance fields
.field context:Ljava/lang/Object;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "name"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->context:Ljava/lang/Object;

    .line 77
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext$ContextNamePair;->name:Ljava/lang/String;

    .line 78
    return-void
.end method
