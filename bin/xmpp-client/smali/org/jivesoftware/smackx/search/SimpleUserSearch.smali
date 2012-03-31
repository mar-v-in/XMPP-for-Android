.class Lorg/jivesoftware/smackx/search/SimpleUserSearch;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "SimpleUserSearch.java"


# instance fields
.field private data:Lorg/jivesoftware/smackx/ReportedData;

.field private form:Lorg/jivesoftware/smackx/Form;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method

.method private getItemsToSearch()Ljava/lang/String;
    .locals 7

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/Form;

    if-nez v5, :cond_0

    .line 65
    invoke-static {p0}, Lorg/jivesoftware/smackx/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;

    move-result-object v5

    iput-object v5, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/Form;

    .line 68
    :cond_0
    iget-object v5, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/Form;

    if-nez v5, :cond_1

    .line 69
    const-string v5, ""

    .line 83
    :goto_0
    return-object v5

    .line 72
    :cond_1
    iget-object v5, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/Form;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/Form;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .line 73
    .local v2, fields:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 74
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/FormField;

    .line 75
    .local v1, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, name:Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getSingleValue(Lorg/jivesoftware/smackx/FormField;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 78
    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static getSingleValue(Lorg/jivesoftware/smackx/FormField;)Ljava/lang/String;
    .locals 2
    .parameter "formField"

    .prologue
    .line 41
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v0

    .line 42
    .local v0, values:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<query xmlns=\"jabber:iq:search\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {p0}, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->getItemsToSearch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "</query>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReportedData()Lorg/jivesoftware/smackx/ReportedData;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->data:Lorg/jivesoftware/smackx/ReportedData;

    return-object v0
.end method

.method protected parseItems(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 18
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v3, Lorg/jivesoftware/smackx/ReportedData;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/ReportedData;-><init>()V

    .line 92
    .local v3, data:Lorg/jivesoftware/smackx/ReportedData;
    new-instance v14, Lorg/jivesoftware/smackx/ReportedData$Column;

    const-string v15, "JID"

    const-string v16, "jid"

    const-string v17, "text-single"

    invoke-direct/range {v14 .. v17}, Lorg/jivesoftware/smackx/ReportedData$Column;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Lorg/jivesoftware/smackx/ReportedData;->addColumn(Lorg/jivesoftware/smackx/ReportedData$Column;)V

    .line 94
    const/4 v4, 0x0

    .line 96
    .local v4, done:Z
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v8, fields:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/ReportedData$Field;>;"
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 149
    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->data:Lorg/jivesoftware/smackx/ReportedData;

    .line 150
    return-void

    .line 98
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-lez v14, :cond_2

    .line 99
    const-string v14, ""

    const-string v15, "jid"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, jid:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v13, valueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v7, Lorg/jivesoftware/smackx/ReportedData$Field;

    const-string v14, "jid"

    invoke-direct {v7, v14, v13}, Lorg/jivesoftware/smackx/ReportedData$Field;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    .local v7, field:Lorg/jivesoftware/smackx/ReportedData$Field;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v7           #field:Lorg/jivesoftware/smackx/ReportedData$Field;
    .end local v9           #jid:Ljava/lang/String;
    .end local v13           #valueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 109
    .local v5, eventType:I
    const/4 v14, 0x2

    if-ne v5, v14, :cond_3

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "item"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 111
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #fields:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/ReportedData$Field;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .restart local v8       #fields:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/ReportedData$Field;>;"
    goto :goto_0

    .line 112
    :cond_3
    const/4 v14, 0x3

    if-ne v5, v14, :cond_4

    .line 113
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "item"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 114
    new-instance v11, Lorg/jivesoftware/smackx/ReportedData$Row;

    invoke-direct {v11, v8}, Lorg/jivesoftware/smackx/ReportedData$Row;-><init>(Ljava/util/List;)V

    .line 115
    .local v11, row:Lorg/jivesoftware/smackx/ReportedData$Row;
    invoke-virtual {v3, v11}, Lorg/jivesoftware/smackx/ReportedData;->addRow(Lorg/jivesoftware/smackx/ReportedData$Row;)V

    goto :goto_0

    .line 116
    .end local v11           #row:Lorg/jivesoftware/smackx/ReportedData$Row;
    :cond_4
    const/4 v14, 0x2

    if-ne v5, v14, :cond_7

    .line 117
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, name:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, value:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .restart local v13       #valueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v7, Lorg/jivesoftware/smackx/ReportedData$Field;

    invoke-direct {v7, v10, v13}, Lorg/jivesoftware/smackx/ReportedData$Field;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 124
    .restart local v7       #field:Lorg/jivesoftware/smackx/ReportedData$Field;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v6, 0x0

    .line 127
    .local v6, exists:Z
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/ReportedData;->getColumns()Ljava/util/Iterator;

    move-result-object v1

    .line 128
    .local v1, cols:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/ReportedData$Column;>;"
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_6

    .line 136
    if-nez v6, :cond_0

    .line 137
    new-instance v2, Lorg/jivesoftware/smackx/ReportedData$Column;

    .line 138
    const-string v14, "text-single"

    .line 137
    invoke-direct {v2, v10, v10, v14}, Lorg/jivesoftware/smackx/ReportedData$Column;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v2, column:Lorg/jivesoftware/smackx/ReportedData$Column;
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smackx/ReportedData;->addColumn(Lorg/jivesoftware/smackx/ReportedData$Column;)V

    goto/16 :goto_0

    .line 129
    .end local v2           #column:Lorg/jivesoftware/smackx/ReportedData$Column;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/ReportedData$Column;

    .line 130
    .restart local v2       #column:Lorg/jivesoftware/smackx/ReportedData$Column;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/ReportedData$Column;->getVariable()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 131
    const/4 v6, 0x1

    goto :goto_1

    .line 141
    .end local v1           #cols:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/ReportedData$Column;>;"
    .end local v2           #column:Lorg/jivesoftware/smackx/ReportedData$Column;
    .end local v6           #exists:Z
    .end local v7           #field:Lorg/jivesoftware/smackx/ReportedData$Field;
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    .end local v13           #valueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    const/4 v14, 0x3

    if-ne v5, v14, :cond_0

    .line 142
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "query"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 143
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setForm(Lorg/jivesoftware/smackx/Form;)V
    .locals 0
    .parameter "form"

    .prologue
    .line 153
    iput-object p1, p0, Lorg/jivesoftware/smackx/search/SimpleUserSearch;->form:Lorg/jivesoftware/smackx/Form;

    .line 154
    return-void
.end method
