.class Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;
.super Ljava/lang/Object;
.source "LdapContextImpl.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$UnsolicitedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->addUnsolicitedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveNotification(Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;[Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .locals 5
    .parameter "un"
    .parameter "cs"

    .prologue
    .line 431
    const/4 v1, 0x0

    .line 433
    .local v1, event:Ljava/util/EventObject;
    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    #calls: Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->narrowingControls([Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;
    invoke-static {v3, p2}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->access$0(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;[Lorg/apache/harmony/javax/naming/ldap/Control;)[Lorg/apache/harmony/javax/naming/ldap/Control;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/jndi/provider/ldap/UnsolicitedNotificationImpl;->setControls([Lorg/apache/harmony/javax/naming/ldap/Control;)V

    .line 434
    new-instance v1, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;

    .line 435
    .end local v1           #event:Ljava/util/EventObject;
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    .line 434
    invoke-direct {v1, v3, p1}, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;-><init>(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotification;)V
    :try_end_0
    .catch Lorg/apache/harmony/javax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    .restart local v1       #event:Ljava/util/EventObject;
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    #getter for: Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->unls:Ljava/util/List;
    invoke-static {v3}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->access$1(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 444
    return-void

    .line 436
    .end local v1           #event:Ljava/util/EventObject;
    :catch_0
    move-exception v0

    .line 437
    .local v0, e:Lorg/apache/harmony/javax/naming/NamingException;
    new-instance v1, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;

    iget-object v3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    invoke-direct {v1, v3, v0}, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;-><init>(Lorg/apache/harmony/javax/naming/event/EventContext;Lorg/apache/harmony/javax/naming/NamingException;)V

    .restart local v1       #event:Ljava/util/EventObject;
    goto :goto_0

    .line 440
    .end local v0           #e:Lorg/apache/harmony/javax/naming/NamingException;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;

    .line 441
    .local v2, listener:Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;
    iget-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$1;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    #calls: Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->notifyNamingListener(Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V
    invoke-static {v4, v2, v1}, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->access$2(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V

    goto :goto_1
.end method
