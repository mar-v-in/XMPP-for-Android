.class public Lorg/jivesoftware/smackx/bytestreams/ibb/provider/CloseIQProvider;
.super Ljava/lang/Object;
.source "CloseIQProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v1, ""

    const-string v2, "sid"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, sid:Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
