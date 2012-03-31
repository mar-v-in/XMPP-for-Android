.class public interface abstract Lorg/apache/harmony/javax/security/auth/Refreshable;
.super Ljava/lang/Object;
.source "Refreshable.java"


# virtual methods
.method public abstract isCurrent()Z
.end method

.method public abstract refresh()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/RefreshFailedException;
        }
    .end annotation
.end method
