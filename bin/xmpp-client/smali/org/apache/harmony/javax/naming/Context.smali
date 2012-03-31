.class public interface abstract Lorg/apache/harmony/javax/naming/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field public static final APPLET:Ljava/lang/String; = "java.naming.applet"

.field public static final AUTHORITATIVE:Ljava/lang/String; = "java.naming.authoritative"

.field public static final BATCHSIZE:Ljava/lang/String; = "java.naming.batchsize"

.field public static final DNS_URL:Ljava/lang/String; = "java.naming.dns.url"

.field public static final INITIAL_CONTEXT_FACTORY:Ljava/lang/String; = "java.naming.factory.initial"

.field public static final LANGUAGE:Ljava/lang/String; = "java.naming.language"

.field public static final OBJECT_FACTORIES:Ljava/lang/String; = "java.naming.factory.object"

.field public static final PROVIDER_URL:Ljava/lang/String; = "java.naming.provider.url"

.field public static final REFERRAL:Ljava/lang/String; = "java.naming.referral"

.field public static final SECURITY_AUTHENTICATION:Ljava/lang/String; = "java.naming.security.authentication"

.field public static final SECURITY_CREDENTIALS:Ljava/lang/String; = "java.naming.security.credentials"

.field public static final SECURITY_PRINCIPAL:Ljava/lang/String; = "java.naming.security.principal"

.field public static final SECURITY_PROTOCOL:Ljava/lang/String; = "java.naming.security.protocol"

.field public static final STATE_FACTORIES:Ljava/lang/String; = "java.naming.factory.state"

.field public static final URL_PKG_PREFIXES:Ljava/lang/String; = "java.naming.factory.url.pkgs"


# virtual methods
.method public abstract addToEnvironment(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract bind(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract bind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract composeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract composeName(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract createSubcontext(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract createSubcontext(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract destroySubcontext(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract destroySubcontext(Lorg/apache/harmony/javax/naming/Name;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getEnvironment()Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<**>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getNameInNamespace()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getNameParser(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NameParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getNameParser(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NameParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract list(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract list(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/NameClassPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listBindings(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract listBindings(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            ")",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Lorg/apache/harmony/javax/naming/Binding;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract lookup(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract lookup(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract lookupLink(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract lookupLink(Lorg/apache/harmony/javax/naming/Name;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract rebind(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract rebind(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract removeFromEnvironment(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract rename(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract rename(Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Name;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract unbind(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract unbind(Lorg/apache/harmony/javax/naming/Name;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
