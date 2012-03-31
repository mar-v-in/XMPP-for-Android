.class public Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;
.super Lorg/jivesoftware/smackx/packet/JingleDescription;
.source "JingleDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/JingleDescription;
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
    .line 46
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/JingleDescription;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 0
    .parameter "pt"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jivesoftware/smackx/packet/JingleDescription;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;->addPayloadType(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "urn:xmpp:tmp:jingle:apps:rtp"

    return-object v0
.end method
