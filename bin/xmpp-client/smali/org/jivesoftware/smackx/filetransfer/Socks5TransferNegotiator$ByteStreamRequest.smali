.class Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$ByteStreamRequest;
.super Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;
.source "Socks5TransferNegotiator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteStreamRequest"
.end annotation


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V
    .locals 0
    .parameter "manager"
    .parameter "byteStreamRequest"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$ByteStreamRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/filetransfer/Socks5TransferNegotiator$ByteStreamRequest;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V

    return-void
.end method
