.class public interface abstract Lorg/jivesoftware/smackx/bytestreams/BytestreamManager;
.super Ljava/lang/Object;
.source "BytestreamManager.java"


# virtual methods
.method public abstract addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
.end method

.method public abstract addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;Ljava/lang/String;)V
.end method

.method public abstract establishSession(Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract establishSession(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract removeIncomingBytestreamListener(Ljava/lang/String;)V
.end method

.method public abstract removeIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
.end method
