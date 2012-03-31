.class public Lorg/jivesoftware/smackx/ReportedData;
.super Ljava/lang/Object;
.source "ReportedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/ReportedData$Column;,
        Lorg/jivesoftware/smackx/ReportedData$Field;,
        Lorg/jivesoftware/smackx/ReportedData$Row;
    }
.end annotation


# instance fields
.field private final columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/ReportedData$Column;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/ReportedData$Row;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ReportedData;->columns:Ljava/util/List;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ReportedData;->rows:Ljava/util/List;

    .line 205
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smackx/ReportedData;->title:Ljava/lang/String;

    .line 209
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 12
    .parameter "dataForm"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/jivesoftware/smackx/ReportedData;->columns:Ljava/util/List;

    .line 203
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lorg/jivesoftware/smackx/ReportedData;->rows:Ljava/util/List;

    .line 205
    const-string v7, ""

    iput-object v7, p0, Lorg/jivesoftware/smackx/ReportedData;->title:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .line 222
    .local v2, fields:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 221
    if-nez v7, :cond_0

    .line 229
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DataForm;->getItems()Ljava/util/Iterator;

    move-result-object v5

    .local v5, items:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 248
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/jivesoftware/smackx/ReportedData;->title:Ljava/lang/String;

    .line 249
    return-void

    .line 223
    .end local v5           #items:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 224
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    iget-object v7, p0, Lorg/jivesoftware/smackx/ReportedData;->columns:Ljava/util/List;

    new-instance v8, Lorg/jivesoftware/smackx/ReportedData$Column;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v10

    .line 225
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11}, Lorg/jivesoftware/smackx/ReportedData$Column;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    .end local v0           #field:Lorg/jivesoftware/smackx/FormField;
    .restart local v5       #items:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DataForm$Item;

    .line 231
    .local v4, item:Lorg/jivesoftware/smackx/packet/DataForm$Item;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/jivesoftware/smackx/ReportedData;->columns:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v1, fieldList:Ljava/util/List;,"Ljava/util/List<Lorg/jivesoftware/smackx/ReportedData$Field;>;"
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/packet/DataForm$Item;->getFields()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 244
    iget-object v7, p0, Lorg/jivesoftware/smackx/ReportedData;->rows:Ljava/util/List;

    new-instance v8, Lorg/jivesoftware/smackx/ReportedData$Row;

    invoke-direct {v8, v1}, Lorg/jivesoftware/smackx/ReportedData$Row;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 237
    .restart local v0       #field:Lorg/jivesoftware/smackx/FormField;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v6, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    .line 238
    if-nez v7, :cond_3

    .line 242
    new-instance v7, Lorg/jivesoftware/smackx/ReportedData$Field;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/jivesoftware/smackx/ReportedData$Field;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 240
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public static getReportedDataFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/ReportedData;
    .locals 4
    .parameter "packet"

    .prologue
    .line 188
    const-string v2, "x"

    .line 189
    const-string v3, "jabber:x:data"

    .line 188
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 190
    .local v1, packetExtension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 192
    check-cast v0, Lorg/jivesoftware/smackx/packet/DataForm;

    .line 193
    .local v0, dataForm:Lorg/jivesoftware/smackx/packet/DataForm;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    new-instance v2, Lorg/jivesoftware/smackx/ReportedData;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/ReportedData;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 198
    .end local v0           #dataForm:Lorg/jivesoftware/smackx/packet/DataForm;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addColumn(Lorg/jivesoftware/smackx/ReportedData$Column;)V
    .locals 1
    .parameter "column"

    .prologue
    .line 258
    iget-object v0, p0, Lorg/jivesoftware/smackx/ReportedData;->columns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method public addRow(Lorg/jivesoftware/smackx/ReportedData$Row;)V
    .locals 1
    .parameter "row"

    .prologue
    .line 268
    iget-object v0, p0, Lorg/jivesoftware/smackx/ReportedData;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public getColumns()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/ReportedData$Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ReportedData;->columns:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    return-object v0
.end method

.method public getRows()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/ReportedData$Row;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/ReportedData;->rows:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lorg/jivesoftware/smackx/ReportedData;->title:Ljava/lang/String;

    return-object v0
.end method
