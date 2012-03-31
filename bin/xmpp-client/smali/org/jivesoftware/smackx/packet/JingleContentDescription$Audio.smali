.class public Lorg/jivesoftware/smackx/packet/JingleContentDescription$Audio;
.super Lorg/jivesoftware/smackx/packet/JingleContentDescription;
.source "JingleContentDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleContentDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:tmp:jingle:apps:rtp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/JingleContentDescription;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;)V
    .locals 0
    .parameter "pt"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/JingleContentDescription;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleContentDescription$Audio;->addJinglePayloadType(Lorg/jivesoftware/smackx/packet/JingleContentDescription$JinglePayloadType;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "urn:xmpp:tmp:jingle:apps:rtp"

    return-object v0
.end method
