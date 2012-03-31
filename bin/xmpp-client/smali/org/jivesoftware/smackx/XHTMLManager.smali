.class public Lorg/jivesoftware/smackx/XHTMLManager;
.super Ljava/lang/Object;
.source "XHTMLManager.java"


# static fields
.field private static final namespace:Ljava/lang/String; = "http://jabber.org/protocol/xhtml-im"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/jivesoftware/smackx/XHTMLManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/XHTMLManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/Connection;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBody(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)V
    .locals 3
    .parameter "message"
    .parameter "body"

    .prologue
    .line 64
    .line 65
    const-string v1, "html"

    const-string v2, "http://jabber.org/protocol/xhtml-im"

    .line 64
    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/packet/XHTMLExtension;

    .line 66
    .local v0, xhtmlExtension:Lorg/jivesoftware/smackx/packet/XHTMLExtension;
    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/packet/XHTMLExtension;

    .end local v0           #xhtmlExtension:Lorg/jivesoftware/smackx/packet/XHTMLExtension;
    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/XHTMLExtension;-><init>()V

    .line 69
    .restart local v0       #xhtmlExtension:Lorg/jivesoftware/smackx/packet/XHTMLExtension;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 72
    :cond_0
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/XHTMLExtension;->addBody(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static getBodies(Lorg/jivesoftware/smack/packet/Message;)Ljava/util/Iterator;
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Message;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .line 85
    const-string v1, "html"

    const-string v2, "http://jabber.org/protocol/xhtml-im"

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    .line 84
    check-cast v0, Lorg/jivesoftware/smackx/packet/XHTMLExtension;

    .line 86
    .local v0, xhtmlExtension:Lorg/jivesoftware/smackx/packet/XHTMLExtension;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/XHTMLExtension;->getBodies()Ljava/util/Iterator;

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/Connection;)Z
    .locals 2
    .parameter "connection"

    .prologue
    .line 102
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 103
    const-string v1, "http://jabber.org/protocol/xhtml-im"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v0

    .line 102
    return v0
.end method

.method public static isServiceEnabled(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Z
    .locals 3
    .parameter "connection"
    .parameter "userID"

    .prologue
    .line 120
    .line 119
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v2

    .line 120
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v1

    .line 121
    .local v1, result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    const-string v2, "http://jabber.org/protocol/xhtml-im"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->containsFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 124
    .end local v1           #result:Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :goto_0
    return v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    .line 124
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isXHTMLMessage(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 136
    const-string v0, "html"

    const-string v1, "http://jabber.org/protocol/xhtml-im"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setServiceEnabled(Lorg/jivesoftware/smack/Connection;Z)V
    .locals 3
    .parameter "connection"
    .parameter "enabled"

    .prologue
    .line 154
    const-class v1, Lorg/jivesoftware/smackx/XHTMLManager;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/XHTMLManager;->isServiceEnabled(Lorg/jivesoftware/smack/Connection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, p1, :cond_0

    .line 165
    :goto_0
    monitor-exit v1

    return-void

    .line 158
    :cond_0
    if-eqz p1, :cond_1

    .line 159
    :try_start_1
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 160
    const-string v2, "http://jabber.org/protocol/xhtml-im"

    .line 159
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 162
    :cond_1
    :try_start_2
    invoke-static {p0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    .line 163
    const-string v2, "http://jabber.org/protocol/xhtml-im"

    .line 162
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
