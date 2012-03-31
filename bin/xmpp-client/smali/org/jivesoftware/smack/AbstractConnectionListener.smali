.class public Lorg/jivesoftware/smack/AbstractConnectionListener;
.super Ljava/lang/Object;
.source "AbstractConnectionListener.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 34
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 39
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 44
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method
