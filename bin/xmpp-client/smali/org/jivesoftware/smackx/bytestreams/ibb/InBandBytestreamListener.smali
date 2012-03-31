.class public abstract Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamListener;
.super Ljava/lang/Object;
.source "InBandBytestreamListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 36
    check-cast p1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamListener;->incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;)V

    .line 37
    return-void
.end method

.method public abstract incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamRequest;)V
.end method
