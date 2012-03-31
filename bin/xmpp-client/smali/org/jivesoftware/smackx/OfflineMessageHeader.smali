.class public Lorg/jivesoftware/smackx/OfflineMessageHeader;
.super Ljava/lang/Object;
.source "OfflineMessageHeader.java"


# instance fields
.field private final jid:Ljava/lang/String;

.field private final stamp:Ljava/lang/String;

.field private final user:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageHeader;->user:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageHeader;->jid:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getNode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageHeader;->stamp:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageHeader;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageHeader;->stamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/OfflineMessageHeader;->user:Ljava/lang/String;

    return-object v0
.end method
