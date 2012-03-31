.class public interface abstract Lorg/apache/harmony/javax/naming/directory/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract get(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;
.end method

.method public abstract getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<+",
            "Lorg/apache/harmony/javax/naming/directory/Attribute;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIDs()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCaseIgnored()Z
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/harmony/javax/naming/directory/Attribute;
.end method

.method public abstract put(Lorg/apache/harmony/javax/naming/directory/Attribute;)Lorg/apache/harmony/javax/naming/directory/Attribute;
.end method

.method public abstract remove(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/directory/Attribute;
.end method

.method public abstract size()I
.end method
