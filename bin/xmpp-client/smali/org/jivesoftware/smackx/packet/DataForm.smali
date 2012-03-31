.class public Lorg/jivesoftware/smackx/packet/DataForm;
.super Ljava/lang/Object;
.source "DataForm.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/DataForm$Item;,
        Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private instructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/packet/DataForm$Item;",
            ">;"
        }
    .end annotation
.end field

.field private reportedData:Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

.field private title:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    .line 125
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->type:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public addField(Lorg/jivesoftware/smackx/FormField;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 135
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v1

    .line 138
    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addInstruction(Ljava/lang/String;)V
    .locals 2
    .parameter "instruction"

    .prologue
    .line 150
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    monitor-exit v1

    .line 153
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addItem(Lorg/jivesoftware/smackx/packet/DataForm$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 162
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v1

    .line 165
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "x"

    return-object v0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/FormField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    monitor-enter v1

    .line 180
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DataForm;->fields:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    monitor-exit v1

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInstructions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    monitor-enter v1

    .line 197
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 197
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 196
    monitor-exit v1

    return-object v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItems()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/packet/DataForm$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    monitor-enter v1

    .line 208
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/DataForm;->items:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    monitor-exit v1

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const-string v0, "jabber:x:data"

    return-object v0
.end method

.method public getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->reportedData:Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/DataForm;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setInstructions(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, instructions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->instructions:Ljava/util/List;

    .line 271
    return-void
.end method

.method public setReportedData(Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;)V
    .locals 0
    .parameter "reportedData"

    .prologue
    .line 280
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->reportedData:Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    .line 281
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 292
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/DataForm;->title:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 9

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v6, "<"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xmlns=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 299
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 300
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\" type=\""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 302
    const-string v6, "<title>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</title>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getInstructions()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 309
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 310
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getItems()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DataForm$Item;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 319
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 323
    const-string v6, "</"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/DataForm;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 305
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    .end local v3           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DataForm$Item;>;"
    :cond_2
    const-string v6, "<instructions>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 306
    const-string v7, "</instructions>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 315
    .restart local v3       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/packet/DataForm$Item;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/packet/DataForm$Item;

    .line 316
    .local v5, item:Lorg/jivesoftware/smackx/packet/DataForm$Item;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/DataForm$Item;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 320
    .end local v5           #item:Lorg/jivesoftware/smackx/packet/DataForm$Item;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/FormField;

    .line 321
    .local v1, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
