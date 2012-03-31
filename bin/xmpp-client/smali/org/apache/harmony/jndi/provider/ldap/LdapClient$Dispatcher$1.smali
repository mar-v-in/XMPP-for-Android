.class Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher$1;
.super Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;
.source "LdapClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher$1;->this$1:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    .line 151
    invoke-direct {p0, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;-><init>(Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;)V

    return-void
.end method


# virtual methods
.method public getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;
    .locals 4

    .prologue
    .line 162
    invoke-super {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    invoke-super {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v2

    .line 189
    :goto_0
    return-object v2

    .line 166
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher$1;->getMessageId()I

    move-result v1

    .line 169
    .local v1, messageId:I
    if-nez v1, :cond_1

    .line 170
    new-instance v2, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;

    invoke-direct {v2}, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;-><init>()V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher$1;->this$1:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->access$0(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v2

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->requests:Ljava/util/Hashtable;
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$1(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;

    move-result-object v2

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 176
    .local v0, element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    if-nez v0, :cond_2

    .line 177
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher$1;->this$1:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapClient;
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;->access$0(Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Dispatcher;)Lorg/apache/harmony/jndi/provider/ldap/LdapClient;

    move-result-object v2

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->batchedSearchRequests:Ljava/util/Hashtable;
    invoke-static {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapClient;->access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapClient;)Ljava/util/Hashtable;

    move-result-object v2

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 177
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;

    .line 181
    .restart local v0       #element:Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;
    :cond_2
    if-eqz v0, :cond_3

    .line 182
    iget-object v2, v0, Lorg/apache/harmony/jndi/provider/ldap/LdapClient$Element;->response:Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;

    invoke-virtual {v2}, Lorg/apache/harmony/jndi/provider/ldap/LdapMessage;->getResponseOp()Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;

    move-result-object v2

    goto :goto_0

    .line 189
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
