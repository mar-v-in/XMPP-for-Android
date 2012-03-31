.class public interface abstract Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;
.super Ljava/lang/Object;
.source "BytestreamRequest.java"


# virtual methods
.method public abstract accept()Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getFrom()Ljava/lang/String;
.end method

.method public abstract getSessionID()Ljava/lang/String;
.end method

.method public abstract reject()V
.end method
