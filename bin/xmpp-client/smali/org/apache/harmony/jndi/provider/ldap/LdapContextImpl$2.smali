.class Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;
.super Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;
.source "LdapContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->doPersistentSearch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/harmony/jndi/provider/ldap/Filter;Lorg/apache/harmony/javax/naming/directory/SearchControls;Lorg/apache/harmony/javax/naming/event/NamingListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

.field private final synthetic val$baseDN:Ljava/lang/String;

.field private final synthetic val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/lang/String;Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->val$baseDN:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;

    .line 1005
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveNotificationHook(Ljava/lang/Object;)V
    .locals 6
    .parameter "obj"

    .prologue
    .line 1009
    const/4 v1, 0x0

    .line 1011
    .local v1, event:Ljava/util/EventObject;
    instance-of v4, p1, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 1012
    check-cast v0, Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;

    .line 1014
    .local v0, control:Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;
    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->val$baseDN:Ljava/lang/String;

    #calls: Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->constructNamingEvent(Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;Ljava/lang/String;)Lorg/apache/harmony/javax/naming/event/NamingEvent;
    invoke-static {v4, p0, v0, v5}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->access$3(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchResult;Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;Ljava/lang/String;)Lorg/apache/harmony/javax/naming/event/NamingEvent;
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1020
    .end local v0           #control:Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;
    :cond_0
    :goto_0
    instance-of v4, p1, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 1021
    check-cast v3, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;

    .line 1023
    .local v3, ldapResult:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapUtils;->getExceptionFromResult(Lorg/apache/harmony/jndi/provider/ldap/LdapResult;)Lorg/apache/harmony/javax/naming/NamingException;

    move-result-object v2

    .line 1025
    .local v2, ex:Lorg/apache/harmony/javax/naming/NamingException;
    if-nez v2, :cond_1

    .line 1034
    .end local v2           #ex:Lorg/apache/harmony/javax/naming/NamingException;
    .end local v3           #ldapResult:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :goto_1
    return-void

    .line 1029
    .restart local v2       #ex:Lorg/apache/harmony/javax/naming/NamingException;
    .restart local v3       #ldapResult:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    :cond_1
    new-instance v1, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;

    .end local v1           #event:Ljava/util/EventObject;
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    invoke-direct {v1, v4, v2}, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;-><init>(Lorg/apache/harmony/javax/naming/event/EventContext;Lorg/apache/harmony/javax/naming/NamingException;)V

    .line 1033
    .end local v2           #ex:Lorg/apache/harmony/javax/naming/NamingException;
    .end local v3           #ldapResult:Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
    .restart local v1       #event:Ljava/util/EventObject;
    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$2;->val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;

    #calls: Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->notifyNamingListener(Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V
    invoke-static {v4, v5, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V

    goto :goto_1

    .line 1015
    .restart local v0       #control:Lorg/apache/harmony/jndi/provider/ldap/event/ECNotificationControl;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
