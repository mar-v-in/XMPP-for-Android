.class public interface abstract Lorg/apache/harmony/javax/naming/spi/InitialContextFactoryBuilder;
.super Ljava/lang/Object;
.source "InitialContextFactoryBuilder.java"


# virtual methods
.method public abstract createInitialContextFactory(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
