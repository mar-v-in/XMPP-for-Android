.class public Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio$Ringing;
.super Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;
.source "JingleContentInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ringing"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Ringing;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Ringing;-><init>()V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;-><init>(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 69
    return-void
.end method
