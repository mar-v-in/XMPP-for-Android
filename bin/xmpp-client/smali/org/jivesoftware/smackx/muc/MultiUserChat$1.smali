.class Lorg/jivesoftware/smackx/muc/MultiUserChat$1;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionCreationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public connectionCreated(Lorg/jivesoftware/smack/Connection;)V
    .locals 3
    .parameter "connection"

    .prologue
    .line 493
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 494
    const-string v1, "http://jabber.org/protocol/muc"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 498
    invoke-static {p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 499
    const-string v1, "http://jabber.org/protocol/muc#rooms"

    .line 500
    new-instance v2, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$1;Lorg/jivesoftware/smack/Connection;)V

    .line 499
    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/NodeInformationProvider;)V

    .line 523
    return-void
.end method
