.class public interface abstract Lorg/apache/harmony/javax/naming/spi/InitialContextFactory;
.super Ljava/lang/Object;
.source "InitialContextFactory.java"


# virtual methods
.method public abstract getInitialContext(Ljava/util/Hashtable;)Lorg/apache/harmony/javax/naming/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<**>;)",
            "Lorg/apache/harmony/javax/naming/Context;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
