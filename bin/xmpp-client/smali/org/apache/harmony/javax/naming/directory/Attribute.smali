.class public interface abstract Lorg/apache/harmony/javax/naming/directory/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x78d7ee3675a55244L


# virtual methods
.method public abstract add(ILjava/lang/Object;)V
.end method

.method public abstract add(Ljava/lang/Object;)Z
.end method

.method public abstract clear()V
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getAll()Lorg/apache/harmony/javax/naming/NamingEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/harmony/javax/naming/NamingEnumeration",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getAttributeDefinition()Lorg/apache/harmony/javax/naming/directory/DirContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getAttributeSyntaxDefinition()Lorg/apache/harmony/javax/naming/directory/DirContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract isOrdered()Z
.end method

.method public abstract remove(I)Ljava/lang/Object;
.end method

.method public abstract remove(Ljava/lang/Object;)Z
.end method

.method public abstract set(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract size()I
.end method
