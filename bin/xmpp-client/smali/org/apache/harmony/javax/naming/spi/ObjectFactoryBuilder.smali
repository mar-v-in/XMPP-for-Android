.class public interface abstract Lorg/apache/harmony/javax/naming/spi/ObjectFactoryBuilder;
.super Ljava/lang/Object;
.source "ObjectFactoryBuilder.java"


# virtual methods
.method public abstract createObjectFactory(Ljava/lang/Object;Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/spi/ObjectFactory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
