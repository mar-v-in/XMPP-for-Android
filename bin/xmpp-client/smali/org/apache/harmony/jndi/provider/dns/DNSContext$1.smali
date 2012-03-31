.class Lorg/apache/harmony/jndi/provider/dns/DNSContext$1;
.super Lorg/apache/harmony/javax/naming/RefAddr;
.source "DNSContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/dns/DNSContext;->constructCannotProceedException(Lorg/apache/harmony/jndi/provider/dns/DNSName;Lorg/apache/harmony/javax/naming/CompositeName;)Lorg/apache/harmony/javax/naming/CannotProceedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x781bd05dde368ecaL


# instance fields
.field context:Lorg/apache/harmony/jndi/provider/dns/DNSContext;

.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/dns/DNSContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/dns/DNSContext;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/dns/DNSContext;)V
    .locals 1
    .parameter
    .parameter "$anonymous0"
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext$1;->this$0:Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    .line 599
    invoke-direct {p0, p2}, Lorg/apache/harmony/javax/naming/RefAddr;-><init>(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p3}, Lorg/apache/harmony/jndi/provider/dns/DNSContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext$1;->context:Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/dns/DNSContext$1;->context:Lorg/apache/harmony/jndi/provider/dns/DNSContext;

    return-object v0
.end method
