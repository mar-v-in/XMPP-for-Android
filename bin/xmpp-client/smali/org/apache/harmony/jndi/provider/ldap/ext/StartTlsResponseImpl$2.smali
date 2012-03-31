.class Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$2;
.super Ljava/lang/Object;
.source "StartTlsResponseImpl.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


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
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/ext/StartTlsResponseImpl;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .parameter "hostname"
    .parameter "session"

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
