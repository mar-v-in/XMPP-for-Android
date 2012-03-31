.class public Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;
.super Ljava/util/EventObject;
.source "NamingExceptionEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x43b0fe6054c4a5d0L


# instance fields
.field private final exception:Lorg/apache/harmony/javax/naming/NamingException;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/javax/naming/event/EventContext;Lorg/apache/harmony/javax/naming/NamingException;)V
    .locals 0
    .parameter "eventContext"
    .parameter "namingException"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 51
    iput-object p2, p0, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    .line 52
    return-void
.end method


# virtual methods
.method public dispatch(Lorg/apache/harmony/javax/naming/event/NamingListener;)V
    .locals 0
    .parameter "naminglistener"

    .prologue
    .line 62
    invoke-interface {p1, p0}, Lorg/apache/harmony/javax/naming/event/NamingListener;->namingExceptionThrown(Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;)V

    .line 63
    return-void
.end method

.method public getEventContext()Lorg/apache/harmony/javax/naming/event/EventContext;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/naming/event/EventContext;

    return-object v0
.end method

.method public getException()Lorg/apache/harmony/javax/naming/NamingException;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/javax/naming/event/NamingExceptionEvent;->exception:Lorg/apache/harmony/javax/naming/NamingException;

    return-object v0
.end method
