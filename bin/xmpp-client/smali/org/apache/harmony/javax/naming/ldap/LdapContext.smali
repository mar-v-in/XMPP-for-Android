.class public interface abstract Lorg/apache/harmony/javax/naming/ldap/LdapContext;
.super Ljava/lang/Object;
.source "LdapContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/directory/DirContext;


# static fields
.field public static final CONTROL_FACTORIES:Ljava/lang/String; = "java.naming.factory.control"


# virtual methods
.method public abstract extendedOperation(Lorg/apache/harmony/javax/naming/ldap/ExtendedRequest;)Lorg/apache/harmony/javax/naming/ldap/ExtendedResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getConnectControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getRequestControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getResponseControls()[Lorg/apache/harmony/javax/naming/ldap/Control;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract newInstance([Lorg/apache/harmony/javax/naming/ldap/Control;)Lorg/apache/harmony/javax/naming/ldap/LdapContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract reconnect([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract setRequestControls([Lorg/apache/harmony/javax/naming/ldap/Control;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
