.class public Lorg/jivesoftware/smackx/muc/HostedRoom;
.super Ljava/lang/Object;
.source "HostedRoom.java"


# instance fields
.field private final jid:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getEntityID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->jid:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverItems$Item;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->name:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->jid:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/HostedRoom;->name:Ljava/lang/String;

    return-object v0
.end method
