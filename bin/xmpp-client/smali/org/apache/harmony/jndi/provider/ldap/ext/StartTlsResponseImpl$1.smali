.class Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$1;
.super Ljava/lang/Object;
.source "StartTlsResponseImpl.java"

# interfaces
.implements Ljavax/net/ssl/HandshakeCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->negotiate(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;

    const/4 v1, 0x1

    #setter for: Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->isHandshaked:Z
    invoke-static {v0, v1}, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;->access$0(Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;Z)V

    .line 95
    return-void
.end method
