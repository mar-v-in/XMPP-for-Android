.class public Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Mute;
.super Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;
.source "JingleContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mute"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/jivesoftware/smackx/jingle/media/ContentInfo$Audio;->MUTE:Lorg/jivesoftware/smackx/jingle/media/ContentInfo$Audio;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio;-><init>(Lorg/jivesoftware/smackx/jingle/media/ContentInfo;)V

    .line 61
    return-void
.end method
