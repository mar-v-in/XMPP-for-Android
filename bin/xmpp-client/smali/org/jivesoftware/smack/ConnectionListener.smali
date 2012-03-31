.class public interface abstract Lorg/jivesoftware/smack/ConnectionListener;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# virtual methods
.method public abstract connectionClosed()V
.end method

.method public abstract connectionClosedOnError(Ljava/lang/Exception;)V
.end method

.method public abstract reconnectingIn(I)V
.end method

.method public abstract reconnectionFailed(Ljava/lang/Exception;)V
.end method

.method public abstract reconnectionSuccessful()V
.end method
