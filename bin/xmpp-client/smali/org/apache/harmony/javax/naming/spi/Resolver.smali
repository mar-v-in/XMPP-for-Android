.class public interface abstract Lorg/apache/harmony/javax/naming/spi/Resolver;
.super Ljava/lang/Object;
.source "Resolver.java"


# virtual methods
.method public abstract resolveToClass(Ljava/lang/String;Ljava/lang/Class;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/harmony/javax/naming/Context;",
            ">;)",
            "Lorg/apache/harmony/javax/naming/spi/ResolveResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract resolveToClass(Lorg/apache/harmony/javax/naming/Name;Ljava/lang/Class;)Lorg/apache/harmony/javax/naming/spi/ResolveResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/harmony/javax/naming/Context;",
            ">;)",
            "Lorg/apache/harmony/javax/naming/spi/ResolveResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
