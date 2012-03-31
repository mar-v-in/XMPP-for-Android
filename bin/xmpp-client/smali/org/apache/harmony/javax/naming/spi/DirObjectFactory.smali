.class public interface abstract Lorg/apache/harmony/javax/naming/spi/DirObjectFactory;
.super Ljava/lang/Object;
.source "DirObjectFactory.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/spi/ObjectFactory;


# virtual methods
.method public abstract getObjectInstance(Ljava/lang/Object;Lorg/apache/harmony/javax/naming/Name;Lorg/apache/harmony/javax/naming/Context;Ljava/util/Hashtable;Lorg/apache/harmony/javax/naming/directory/Attributes;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/apache/harmony/javax/naming/Name;",
            "Lorg/apache/harmony/javax/naming/Context;",
            "Ljava/util/Hashtable",
            "<**>;",
            "Lorg/apache/harmony/javax/naming/directory/Attributes;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
