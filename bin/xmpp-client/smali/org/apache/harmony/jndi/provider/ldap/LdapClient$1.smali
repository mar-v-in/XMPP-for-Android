.class Lorg/apache/harmony/jndi/provider/ldap/LdapClient$1;
.super Ljava/lang/Object;
.source "LdapClient.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->abandon(I[Lorg/apache/harmony/javax/naming/ldap/Control;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

.field private final synthetic val$messageId:I


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    iput p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$1;->val$messageId:I

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 427
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$1;->val$messageId:I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 428
    return-void
.end method
