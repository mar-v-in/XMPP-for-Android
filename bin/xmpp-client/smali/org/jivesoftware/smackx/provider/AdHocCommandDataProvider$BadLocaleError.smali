.class public Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider$BadLocaleError;
.super Ljava/lang/Object;
.source "AdHocCommandDataProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/provider/AdHocCommandDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadLocaleError"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
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
    .line 56
    new-instance v0, Lorg/jivesoftware/smackx/packet/AdHocCommandData$SpecificError;

    .line 57
    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badLocale:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 56
    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData$SpecificError;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    return-object v0
.end method
