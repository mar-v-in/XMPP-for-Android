.class Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
.super Ljava/lang/Object;
.source "LdapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Element"
.end annotation


# instance fields
.field ex:Ljava/lang/Exception;

.field lock:Ljava/lang/Object;

.field response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;)V
    .locals 0
    .parameter "lock"
    .parameter "response"

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->lock:Ljava/lang/Object;

    .line 236
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    .line 237
    return-void
.end method
