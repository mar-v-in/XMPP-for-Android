.class public Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;
.super Lorg/jivesoftware/smackx/packet/JingleContentInfo;
.source "JingleContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Busy;,
        Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Hold;,
        Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Mute;,
        Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Queued;,
        Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Ringing;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:tmp:jingle:apps:rtp"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/ContentInfo;)V
    .locals 1
    .parameter "mi"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleContentInfo;-><init>(Lorg/jivesoftware/smackx/jingle/media/ContentInfo;)V

    .line 88
    const-string v0, "urn:xmpp:tmp:jingle:apps:rtp"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;->setNamespace(Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "urn:xmpp:tmp:jingle:apps:rtp"

    return-object v0
.end method
