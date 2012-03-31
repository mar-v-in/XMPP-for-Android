.class public Lorg/jivesoftware/smackx/workgroup/packet/MetaDataProvider;
.super Ljava/lang/Object;
.source "MetaDataProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 2
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Lorg/jivesoftware/smackx/workgroup/util/MetaDataUtils;->parseMetaData(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v0

    .line 48
    .local v0, metaData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v1, Lorg/jivesoftware/smackx/workgroup/MetaData;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/workgroup/MetaData;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
