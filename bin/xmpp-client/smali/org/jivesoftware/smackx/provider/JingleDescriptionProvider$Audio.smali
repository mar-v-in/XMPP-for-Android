.class public Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider$Audio;
.super Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;
.source "JingleDescriptionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Audio"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method protected getInstance()Lorg/jivesoftware/smackx/packet/JingleDescription;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/JingleDescription$Audio;-><init>()V

    return-object v0
.end method

.method public parsePayload(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/provider/JingleDescriptionProvider;->parsePayload(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    move-result-object v2

    .line 63
    .local v2, pte:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    new-instance v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;-><init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V

    .line 64
    .local v0, pt:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    const/4 v1, 0x0

    .line 67
    .local v1, ptClockRate:I
    :try_start_0
    const-string v3, ""

    .line 68
    const-string v4, "clockrate"

    .line 67
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->setClockRate(I)V

    .line 73
    return-object v0

    .line 69
    :catch_0
    move-exception v3

    goto :goto_0
.end method
