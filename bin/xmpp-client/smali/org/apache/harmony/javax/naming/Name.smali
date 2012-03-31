.class public interface abstract Lorg/apache/harmony/javax/naming/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = -0x3233e160e95ced33L


# virtual methods
.method public abstract add(ILjava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/String;)Lorg/apache/harmony/javax/naming/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation
.end method

.method public abstract addAll(ILorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation
.end method

.method public abstract addAll(Lorg/apache/harmony/javax/naming/Name;)Lorg/apache/harmony/javax/naming/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract compareTo(Ljava/lang/Object;)I
.end method

.method public abstract endsWith(Lorg/apache/harmony/javax/naming/Name;)Z
.end method

.method public abstract get(I)Ljava/lang/String;
.end method

.method public abstract getAll()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrefix(I)Lorg/apache/harmony/javax/naming/Name;
.end method

.method public abstract getSuffix(I)Lorg/apache/harmony/javax/naming/Name;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/InvalidNameException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract startsWith(Lorg/apache/harmony/javax/naming/Name;)Z
.end method
