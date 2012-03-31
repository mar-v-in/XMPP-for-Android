.class Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;
.super Ljava/lang/Object;
.source "LdapContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;->notifyNamingListener(Lorg/apache/harmony/javax/naming/event/NamingListener;Ljava/util/EventObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

.field private final synthetic val$event:Ljava/util/EventObject;

.field private final synthetic val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;


# direct methods
.method constructor <init>(Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;Ljava/util/EventObject;Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->this$0:Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl;

    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$event:Ljava/util/EventObject;

    iput-object p3, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;

    .line 2122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2126
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$event:Ljava/util/EventObject;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/event/NamingEvent;

    if-eqz v2, :cond_1

    .line 2127
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$event:Ljava/util/EventObject;

    check-cast v1, Lorg/apache/harmony/javax/naming/event/NamingEvent;

    .line 2128
    .local v1, namingEvent:Lorg/apache/harmony/javax/naming/event/NamingEvent;
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/javax/naming/event/NamingEvent;->dispatch(Lorg/apache/harmony/javax/naming/event/NamingListener;)V

    .line 2138
    .end local v1           #namingEvent:Lorg/apache/harmony/javax/naming/event/NamingEvent;
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$event:Ljava/util/EventObject;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;

    if-eqz v2, :cond_2

    .line 2130
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$event:Ljava/util/EventObject;

    check-cast v0, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;

    .line 2131
    .local v0, exceptionEvent:Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;

    invoke-interface {v2, v0}, Lorg/apache/harmony/javax/naming/event/NamingListener;->namingExceptionThrown(Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;)V

    goto :goto_0

    .line 2132
    .end local v0           #exceptionEvent:Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$event:Ljava/util/EventObject;

    instance-of v2, v2, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;

    if-eqz v2, :cond_0

    .line 2133
    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$event:Ljava/util/EventObject;

    check-cast v1, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;

    .line 2135
    .local v1, namingEvent:Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;
    iget-object v2, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapContextImpl$4;->val$listener:Lorg/apache/harmony/javax/naming/event/NamingListener;

    check-cast v2, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationEvent;->dispatch(Lorg/apache/harmony/javax/naming/ldap/UnsolicitedNotificationListener;)V

    goto :goto_0
.end method
