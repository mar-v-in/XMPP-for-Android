.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1$1;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "InBandBytestreamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;->connectionCreated(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;

.field private final synthetic val$manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1;

    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1$1;->val$manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 115
    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$1$1;->val$manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    #calls: Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->disableService()V
    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->access$2(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V

    .line 120
    return-void
.end method
