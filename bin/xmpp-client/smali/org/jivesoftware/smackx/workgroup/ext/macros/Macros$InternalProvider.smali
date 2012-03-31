.class public Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;
.super Ljava/lang/Object;
.source "Macros.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/IQProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v3, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;-><init>()V

    .line 51
    .local v3, macroGroup:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;
    const/4 v0, 0x0

    .line 52
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 67
    return-object v3

    .line 53
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 54
    .local v1, eventType:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "model"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, macros:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacroGroups(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v2

    .line 58
    .local v2, group:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros;->setRootGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V

    goto :goto_0

    .line 60
    .end local v2           #group:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .end local v4           #macros:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "macros"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseMacro(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;-><init>()V

    .line 72
    .local v2, macro:Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;
    const/4 v0, 0x0

    .line 73
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 93
    return-object v2

    .line 74
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 75
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 76
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "description"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 80
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 84
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;->setType(I)V

    goto :goto_0

    .line 87
    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "macro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseMacroGroup(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v2, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;-><init>()V

    .line 100
    .local v2, group:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    const/4 v0, 0x0

    .line 101
    .local v0, done:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 119
    return-object v2

    .line 102
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 103
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "macrogroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacroGroup(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->addMacroGroup(Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;)V

    .line 107
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->setTitle(Ljava/lang/String;)V

    .line 110
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "macro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacro(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;->addMacro(Lorg/jivesoftware/smackx/workgroup/ext/macros/Macro;)V

    goto :goto_0

    .line 113
    :cond_4
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "macrogroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public parseMacroGroups(Ljava/lang/String;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    .locals 5
    .parameter "macros"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, group:Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;
    new-instance v2, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v2}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 126
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 127
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 128
    .local v0, eventType:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 136
    return-object v1

    .line 129
    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 130
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 131
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "macrogroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/workgroup/ext/macros/Macros$InternalProvider;->parseMacroGroup(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/workgroup/ext/macros/MacroGroup;

    move-result-object v1

    goto :goto_0
.end method
