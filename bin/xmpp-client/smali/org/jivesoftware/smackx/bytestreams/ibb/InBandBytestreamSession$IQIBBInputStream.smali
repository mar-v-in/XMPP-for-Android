.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;
.super Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;
.source "InBandBytestreamSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IQIBBInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    .locals 1
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    return-object v0
.end method


# virtual methods
.method protected getDataPacketFilter()Lorg/jivesoftware/smack/filter/PacketFilter;
    .locals 6

    .prologue
    .line 519
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/PacketFilter;

    const/4 v2, 0x0

    new-instance v3, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v4, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 520
    new-instance v3, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;

    iget-object v4, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;)V

    .line 519
    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-object v0
.end method

.method protected getDataPacketListener()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)V

    return-object v0
.end method
