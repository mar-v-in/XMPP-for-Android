.class public interface abstract Lorg/apache/harmony/javax/naming/event/EventContext;
.super Ljava/lang/Object;
.source "EventContext.java"

# interfaces
.implements Lorg/apache/harmony/javax/naming/Context;


# static fields
.field public static final OBJECT_SCOPE:I = 0x0

.field public static final ONELEVEL_SCOPE:I = 0x1

.field public static final SUBTREE_SCOPE:I = 0x2


# virtual methods
.method public abstract addNamingListener(Ljava/lang/String;ILorg/apache/harmony/javax/naming/event/NamingListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract addNamingListener(Lorg/apache/harmony/javax/naming/Name;ILorg/apache/harmony/javax/naming/event/NamingListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract removeNamingListener(Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method

.method public abstract targetMustExist()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/naming/NamingException;
        }
    .end annotation
.end method
