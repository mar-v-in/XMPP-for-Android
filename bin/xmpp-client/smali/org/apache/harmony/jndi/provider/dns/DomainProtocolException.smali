.class public Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;
.super Lorg/apache/harmony/javax/naming/NamingException;
.source "DomainProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x5c075c54efd88438L


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/harmony/javax/naming/NamingException;-><init>()V

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;->setRootCause(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "mes"
    .parameter "cause"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/harmony/javax/naming/NamingException;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lorg/apache/harmony/jndi/provider/dns/DomainProtocolException;->setRootCause(Ljava/lang/Throwable;)V

    .line 46
    return-void
.end method
