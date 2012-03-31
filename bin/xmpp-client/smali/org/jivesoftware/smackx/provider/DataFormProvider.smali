.class public Lorg/jivesoftware/smackx/provider/DataFormProvider;
.super Ljava/lang/Object;
.source "DataFormProvider.java"

# interfaces
.implements Lorg/jivesoftware/smack/provider/PacketExtensionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/FormField;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, done:Z
    new-instance v2, Lorg/jivesoftware/smackx/FormField;

    const-string v3, ""

    .line 78
    const-string v4, "var"

    .line 77
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, formField:Lorg/jivesoftware/smackx/FormField;
    const-string v3, ""

    const-string v4, "label"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/FormField;->setLabel(Ljava/lang/String;)V

    .line 80
    const-string v3, ""

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 99
    return-object v2

    .line 82
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 83
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "desc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/FormField;->setDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/FormField;->addValue(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "required"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 89
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/FormField;->setRequired(Z)V

    goto :goto_0

    .line 90
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "option"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseOption(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/FormField$Option;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/FormField;->addOption(Lorg/jivesoftware/smackx/FormField$Option;)V

    goto :goto_0

    .line 93
    :cond_5
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "field"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/DataForm$Item;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, done:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, fields:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 117
    new-instance v3, Lorg/jivesoftware/smackx/packet/DataForm$Item;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smackx/packet/DataForm$Item;-><init>(Ljava/util/List;)V

    return-object v3

    .line 106
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 107
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "field"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseOption(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/FormField$Option;
    .locals 6
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, done:Z
    const/4 v3, 0x0

    .line 123
    .local v3, option:Lorg/jivesoftware/smackx/FormField$Option;
    const-string v4, ""

    const-string v5, "label"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, label:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 136
    return-object v3

    .line 125
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 126
    .local v1, eventType:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 127
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    new-instance v3, Lorg/jivesoftware/smackx/FormField$Option;

    .end local v3           #option:Lorg/jivesoftware/smackx/FormField$Option;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/jivesoftware/smackx/FormField$Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3       #option:Lorg/jivesoftware/smackx/FormField$Option;
    goto :goto_0

    .line 130
    :cond_2
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 131
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "option"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseReported(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, done:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, fields:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 155
    new-instance v3, Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;-><init>(Ljava/util/List;)V

    return-object v3

    .line 144
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 145
    .local v1, eventType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "field"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_2
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reported"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 5
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    new-instance v0, Lorg/jivesoftware/smackx/packet/DataForm;

    const-string v3, ""

    .line 51
    const-string v4, "type"

    .line 50
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, dataForm:Lorg/jivesoftware/smackx/packet/DataForm;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 72
    return-object v0

    .line 53
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 54
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "instructions"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;->addInstruction(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "field"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    goto :goto_0

    .line 61
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 62
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/DataForm$Item;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;->addItem(Lorg/jivesoftware/smackx/packet/DataForm$Item;)V

    goto :goto_0

    .line 63
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reported"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/provider/DataFormProvider;->parseReported(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;->setReportedData(Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;)V

    goto :goto_0

    .line 66
    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DataForm;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    const/4 v1, 0x1

    goto :goto_0
.end method
