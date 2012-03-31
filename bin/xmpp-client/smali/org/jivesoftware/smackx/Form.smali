.class public Lorg/jivesoftware/smackx/Form;
.super Ljava/lang/Object;
.source "Form.java"


# static fields
.field public static final TYPE_CANCEL:Ljava/lang/String; = "cancel"

.field public static final TYPE_FORM:Ljava/lang/String; = "form"

.field public static final TYPE_RESULT:Ljava/lang/String; = "result"

.field public static final TYPE_SUBMIT:Ljava/lang/String; = "submit"


# instance fields
.field private final dataForm:Lorg/jivesoftware/smackx/packet/DataForm;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/packet/DataForm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .parameter "dataForm"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    .line 93
    return-void
.end method

.method public static getFormFrom(Lorg/jivesoftware/smack/packet/Packet;)Lorg/jivesoftware/smackx/Form;
    .locals 4
    .parameter "packet"

    .prologue
    .line 69
    const-string v2, "x"

    .line 70
    const-string v3, "jabber:x:data"

    .line 69
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 71
    .local v1, packetExtension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 73
    check-cast v0, Lorg/jivesoftware/smackx/packet/DataForm;

    .line 74
    .local v0, dataForm:Lorg/jivesoftware/smackx/packet/DataForm;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/packet/DataForm$ReportedData;

    move-result-object v2

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Lorg/jivesoftware/smackx/Form;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 79
    .end local v0           #dataForm:Lorg/jivesoftware/smackx/packet/DataForm;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFormType()Z
    .locals 2

    .prologue
    .line 292
    const-string v0, "form"

    iget-object v1, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DataForm;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSubmitType()Z
    .locals 2

    .prologue
    .line 301
    const-string v0, "submit"

    iget-object v1, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/DataForm;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setAnswer(Lorg/jivesoftware/smackx/FormField;Ljava/lang/Object;)V
    .locals 2
    .parameter "field"
    .parameter "value"

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Form;->isSubmitType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 330
    const-string v1, "Cannot set an answer if the form is not of type \"submit\""

    .line 329
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/FormField;->resetValues()V

    .line 334
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/FormField;->addValue(Ljava/lang/String;)V

    .line 335
    return-void
.end method


# virtual methods
.method public addField(Lorg/jivesoftware/smackx/FormField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 124
    iget-object v0, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DataForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 125
    return-void
.end method

.method public createAnswerForm()Lorg/jivesoftware/smackx/Form;
    .locals 8

    .prologue
    .line 144
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Form;->isFormType()Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 146
    const-string v7, "Only forms of type \"form\" could be answered"

    .line 145
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 149
    :cond_0
    new-instance v2, Lorg/jivesoftware/smackx/Form;

    const-string v6, "submit"

    invoke-direct {v2, v6}, Lorg/jivesoftware/smackx/Form;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, form:Lorg/jivesoftware/smackx/Form;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/Form;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .local v1, fields:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 173
    return-object v2

    .line 151
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 155
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 156
    new-instance v4, Lorg/jivesoftware/smackx/FormField;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 157
    .local v4, newField:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2, v4}, Lorg/jivesoftware/smackx/Form;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 160
    const-string v6, "hidden"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v5, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v3

    .line 166
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    .line 165
    if-nez v6, :cond_3

    .line 169
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;
    .locals 4

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Form;->isSubmitType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    new-instance v0, Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/Form;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jivesoftware/smackx/packet/DataForm;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, dataFormToSend:Lorg/jivesoftware/smackx/packet/DataForm;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/Form;->getFields()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    .end local v0           #dataFormToSend:Lorg/jivesoftware/smackx/packet/DataForm;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :goto_1
    return-object v0

    .line 189
    .restart local v0       #dataFormToSend:Lorg/jivesoftware/smackx/packet/DataForm;
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/FormField;

    .line 190
    .local v1, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/packet/DataForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    goto :goto_0

    .line 196
    .end local v0           #dataFormToSend:Lorg/jivesoftware/smackx/packet/DataForm;
    .end local v1           #field:Lorg/jivesoftware/smackx/FormField;
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    goto :goto_1
.end method

.method public getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;
    .locals 4
    .parameter "variable"

    .prologue
    .line 210
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 212
    const-string v3, "Variable must not be null or blank."

    .line 211
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/Form;->getFields()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/jivesoftware/smackx/FormField;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 222
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 217
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    .line 218
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public getFields()Ljava/util/Iterator;
    .locals 1
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
    .line 231
    iget-object v0, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DataForm;->getFields()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/DataForm;->getInstructions()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 244
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/DataForm;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAnswer(Ljava/lang/String;D)V
    .locals 3
    .parameter "variable"
    .parameter "value"

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 384
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-nez v0, :cond_0

    .line 385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 386
    const-string v2, "Field not found for the specified variable name."

    .line 385
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_0
    const-string v1, "text-multi"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    const-string v1, "text-private"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    const-string v1, "text-single"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 391
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 392
    const-string v2, "This field is not of type double."

    .line 391
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/Form;->setAnswer(Lorg/jivesoftware/smackx/FormField;Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public setAnswer(Ljava/lang/String;F)V
    .locals 3
    .parameter "variable"
    .parameter "value"

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 415
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-nez v0, :cond_0

    .line 416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 417
    const-string v2, "Field not found for the specified variable name."

    .line 416
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    const-string v1, "text-multi"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 420
    const-string v1, "text-private"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 421
    const-string v1, "text-single"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 423
    const-string v2, "This field is not of type float."

    .line 422
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/Form;->setAnswer(Lorg/jivesoftware/smackx/FormField;Ljava/lang/Object;)V

    .line 426
    return-void
.end method

.method public setAnswer(Ljava/lang/String;I)V
    .locals 3
    .parameter "variable"
    .parameter "value"

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 446
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-nez v0, :cond_0

    .line 447
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 448
    const-string v2, "Field not found for the specified variable name."

    .line 447
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 450
    :cond_0
    const-string v1, "text-multi"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    const-string v1, "text-private"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 452
    const-string v1, "text-single"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 453
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This field is not of type int."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/Form;->setAnswer(Lorg/jivesoftware/smackx/FormField;Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method public setAnswer(Ljava/lang/String;J)V
    .locals 3
    .parameter "variable"
    .parameter "value"

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 523
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-nez v0, :cond_0

    .line 524
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 525
    const-string v2, "Field not found for the specified variable name."

    .line 524
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 527
    :cond_0
    const-string v1, "text-multi"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    const-string v1, "text-private"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    const-string v1, "text-single"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 531
    const-string v2, "This field is not of type long."

    .line 530
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/Form;->setAnswer(Lorg/jivesoftware/smackx/FormField;Ljava/lang/Object;)V

    .line 534
    return-void
.end method

.method public setAnswer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "variable"
    .parameter "value"

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 559
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-nez v0, :cond_0

    .line 560
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 561
    const-string v2, "Field not found for the specified variable name."

    .line 560
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    :cond_0
    const-string v1, "text-multi"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    const-string v1, "text-private"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    const-string v1, "text-single"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 566
    const-string v1, "jid-single"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 567
    const-string v1, "hidden"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 568
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 569
    const-string v2, "This field is not of type String."

    .line 568
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :cond_1
    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/Form;->setAnswer(Lorg/jivesoftware/smackx/FormField;Ljava/lang/Object;)V

    .line 572
    return-void
.end method

.method public setAnswer(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "variable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Form;->isSubmitType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 481
    const-string v2, "Cannot set an answer if the form is not of type \"submit\""

    .line 480
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 485
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-eqz v0, :cond_2

    .line 487
    const-string v1, "jid-multi"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 488
    const-string v1, "list-multi"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    const-string v1, "list-single"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    const-string v1, "hidden"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 492
    const-string v2, "This field only accept list of values."

    .line 491
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->resetValues()V

    .line 498
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/FormField;->addValues(Ljava/util/List;)V

    .line 503
    return-void

    .line 500
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 501
    const-string v2, "Couldn\'t find a field for the specified variable."

    .line 500
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnswer(Ljava/lang/String;Z)V
    .locals 3
    .parameter "variable"
    .parameter "value"

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 355
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-nez v0, :cond_0

    .line 356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 357
    const-string v2, "Field not found for the specified variable name."

    .line 356
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_0
    const-string v1, "boolean"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 361
    const-string v2, "This field is not of type boolean."

    .line 360
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, "1"

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/Form;->setAnswer(Lorg/jivesoftware/smackx/FormField;Ljava/lang/Object;)V

    .line 364
    return-void

    .line 363
    :cond_2
    const-string v1, "0"

    goto :goto_0
.end method

.method public setDefaultAnswer(Ljava/lang/String;)V
    .locals 4
    .parameter "variable"

    .prologue
    .line 588
    invoke-direct {p0}, Lorg/jivesoftware/smackx/Form;->isSubmitType()Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 590
    const-string v3, "Cannot set an answer if the form is not of type \"submit\""

    .line 589
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 593
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 594
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->resetValues()V

    .line 598
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 605
    return-void

    .line 599
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/FormField;->addValue(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 603
    const-string v3, "Couldn\'t find a field for the specified variable."

    .line 602
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 3
    .parameter "instructions"

    .prologue
    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v0, instructionsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    .local v1, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_0

    .line 623
    iget-object v2, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/DataForm;->setInstructions(Ljava/util/List;)V

    .line 625
    return-void

    .line 620
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 636
    iget-object v0, p0, Lorg/jivesoftware/smackx/Form;->dataForm:Lorg/jivesoftware/smackx/packet/DataForm;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/DataForm;->setTitle(Ljava/lang/String;)V

    .line 637
    return-void
.end method
