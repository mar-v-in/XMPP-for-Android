.class public Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio$Queued;
.super Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;
.source "JingleContentInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Queued"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Queued;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleContentInfo$Audio$Queued;-><init>()V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/provider/JingleContentInfoProvider$Audio;-><init>(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 61
    return-void
.end method
