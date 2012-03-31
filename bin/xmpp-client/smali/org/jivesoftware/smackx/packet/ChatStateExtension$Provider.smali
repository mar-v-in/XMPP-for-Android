.class public Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;
.super Ljava/lang/Object;
.source "ChatStateExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/ChatStateExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


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
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smackx/ChatState;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/ChatState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    .local v1, state:Lorg/jivesoftware/smackx/ChatState;
    :goto_0
    new-instance v2, Lorg/jivesoftware/smackx/packet/ChatStateExtension;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/packet/ChatStateExtension;-><init>(Lorg/jivesoftware/smackx/ChatState;)V

    return-object v2

    .line 45
    .end local v1           #state:Lorg/jivesoftware/smackx/ChatState;
    :catch_0
    move-exception v0

    .line 46
    .local v0, ex:Ljava/lang/Exception;
    sget-object v1, Lorg/jivesoftware/smackx/ChatState;->active:Lorg/jivesoftware/smackx/ChatState;

    .restart local v1       #state:Lorg/jivesoftware/smackx/ChatState;
    goto :goto_0
.end method
