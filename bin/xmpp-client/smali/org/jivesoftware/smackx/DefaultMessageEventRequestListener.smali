.class public Lorg/jivesoftware/smackx/DefaultMessageEventRequestListener;
.super Ljava/lang/Object;
.source "DefaultMessageEventRequestListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/MessageEventRequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public composingNotificationRequested(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/MessageEventManager;)V
    .locals 0
    .parameter "from"
    .parameter "packetID"
    .parameter "messageEventManager"

    .prologue
    .line 40
    return-void
.end method

.method public deliveredNotificationRequested(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/MessageEventManager;)V
    .locals 0
    .parameter "from"
    .parameter "packetID"
    .parameter "messageEventManager"

    .prologue
    .line 46
    invoke-virtual {p3, p1, p2}, Lorg/jivesoftware/smackx/MessageEventManager;->sendDeliveredNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public displayedNotificationRequested(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/MessageEventManager;)V
    .locals 0
    .parameter "from"
    .parameter "packetID"
    .parameter "messageEventManager"

    .prologue
    .line 52
    return-void
.end method

.method public offlineNotificationRequested(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/MessageEventManager;)V
    .locals 0
    .parameter "from"
    .parameter "packetID"
    .parameter "messageEventManager"

    .prologue
    .line 57
    return-void
.end method
