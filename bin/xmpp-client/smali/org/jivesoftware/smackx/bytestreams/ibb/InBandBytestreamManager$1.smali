.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;
.super Ljava/lang/Object;
.source "InBandBytestreamManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 111
    invoke-static {p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getByteStreamManager(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    move-result-object v0

    .line 115
    .local v0, manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1$1;

    invoke-direct {v1, p0, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1$1;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 124
    return-void
.end method
