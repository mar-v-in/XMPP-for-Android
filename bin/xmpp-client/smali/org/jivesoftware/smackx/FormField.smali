.class public Lorg/jivesoftware/smackx/FormField;
.super Ljava/lang/Object;
.source "FormField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/FormField$Option;
    }
.end annotation


# static fields
.field public static final TYPE_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final TYPE_FIXED:Ljava/lang/String; = "fixed"

.field public static final TYPE_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final TYPE_JID_MULTI:Ljava/lang/String; = "jid-multi"

.field public static final TYPE_JID_SINGLE:Ljava/lang/String; = "jid-single"

.field public static final TYPE_LIST_MULTI:Ljava/lang/String; = "list-multi"

.field public static final TYPE_LIST_SINGLE:Ljava/lang/String; = "list-single"

.field public static final TYPE_TEXT_MULTI:Ljava/lang/String; = "text-multi"

.field public static final TYPE_TEXT_PRIVATE:Ljava/lang/String; = "text-private"

.field public static final TYPE_TEXT_SINGLE:Ljava/lang/String; = "text-single"


# instance fields
.field private description:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smackx/FormField$Option;",
            ">;"
        }
    .end annotation
.end field

.field private required:Z

.field private type:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private variable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/FormField;->required:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/FormField;->options:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    .line 123
    const-string v0, "fixed"

    iput-object v0, p0, Lorg/jivesoftware/smackx/FormField;->type:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "variable"

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/FormField;->required:Z

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/FormField;->options:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    .line 134
    iput-object p1, p0, Lorg/jivesoftware/smackx/FormField;->variable:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public addOption(Lorg/jivesoftware/smackx/FormField$Option;)V
    .locals 2
    .parameter "option"

    .prologue
    .line 145
    iget-object v1, p0, Lorg/jivesoftware/smackx/FormField;->options:Ljava/util/List;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->options:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 158
    iget-object v1, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v1

    .line 161
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addValues(Ljava/util/List;)V
    .locals 2
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
    .line 171
    .local p1, newValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    monitor-exit v1

    .line 174
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/FormField$Option;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lorg/jivesoftware/smackx/FormField;->options:Ljava/util/List;

    monitor-enter v1

    .line 209
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/FormField;->options:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 209
    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/Iterator;
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
    .line 250
    iget-object v1, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    monitor-enter v1

    .line 251
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 251
    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->variable:Ljava/lang/String;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/FormField;->required:Z

    return v0
.end method

.method protected resetValues()V
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jivesoftware/smackx/FormField;->values:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 280
    monitor-exit v1

    .line 283
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 298
    iput-object p1, p0, Lorg/jivesoftware/smackx/FormField;->description:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 309
    iput-object p1, p0, Lorg/jivesoftware/smackx/FormField;->label:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .parameter "required"

    .prologue
    .line 321
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/FormField;->required:Z

    .line 322
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 349
    iput-object p1, p0, Lorg/jivesoftware/smackx/FormField;->type:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v3, "<field"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 357
    const-string v3, " label=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 360
    const-string v3, " var=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 363
    const-string v3, " type=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_2
    const-string v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 368
    const-string v3, "<desc>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</desc>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->isRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    const-string v3, "<required/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 378
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/FormField;->getOptions()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField$Option;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 381
    const-string v3, "</field>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 375
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField$Option;>;"
    :cond_5
    const-string v3, "<value>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</value>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 379
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField$Option;>;"
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/FormField$Option;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/FormField$Option;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
