.class public Lorg/jivesoftware/smackx/pubsub/SubscribeForm;
.super Lorg/jivesoftware/smackx/Form;
.source "SubscribeForm.java"


# static fields
.field private static final format:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 42
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 41
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->format:Ljava/text/SimpleDateFormat;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/Form;)V
    .locals 1
    .parameter "subscribeOptionsForm"

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/Form;->getDataFormToSend()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 0
    .parameter "configDataForm"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/Form;-><init>(Lorg/jivesoftware/smackx/packet/DataForm;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/FormType;)V
    .locals 1
    .parameter "formType"

    .prologue
    .line 57
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/FormType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/Form;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V
    .locals 3
    .parameter "nodeField"
    .parameter "type"

    .prologue
    .line 61
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, fieldName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v2

    if-nez v2, :cond_0

    .line 64
    new-instance v0, Lorg/jivesoftware/smackx/FormField;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/FormField;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, field:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/FormField;->setType(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/FormField;)V

    .line 68
    .end local v0           #field:Lorg/jivesoftware/smackx/FormField;
    :cond_0
    return-void
.end method

.method private getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;
    .locals 2
    .parameter "field"

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 102
    .local v0, formField:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getFieldValues(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/util/Iterator;
    .locals 2
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/FormField;

    move-result-object v0

    .line 108
    .local v0, formField:Lorg/jivesoftware/smackx/FormField;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getValues()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "fieldValue"

    .prologue
    .line 45
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDigestFrequency()I
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    return v0
.end method

.method public getExpiry()Ljava/util/Date;
    .locals 4

    .prologue
    .line 88
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, dateTime:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, e:Ljava/text/ParseException;
    new-instance v2, Ljava/util/UnknownFormatConversionException;

    invoke-direct {v2, v0}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, exc:Ljava/util/UnknownFormatConversionException;
    invoke-virtual {v2, v1}, Ljava/util/UnknownFormatConversionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 95
    throw v2
.end method

.method public getShowValues()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/PresenceState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smackx/pubsub/PresenceState;>;"
    sget-object v3, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValues(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    return-object v3

    .line 122
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, state:Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/pubsub/PresenceState;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PresenceState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isDeliverOn()Z
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDigestOn()Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIncludeBody()Z
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->getFieldValue(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDeliverOn(Z)V
    .locals 2
    .parameter "deliverNotifications"

    .prologue
    .line 162
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Z)V

    .line 165
    return-void
.end method

.method public setDigestFrequency(I)V
    .locals 2
    .parameter "frequency"

    .prologue
    .line 175
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    .line 176
    const-string v1, "text-single"

    .line 175
    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->digest_frequency:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method public setDigestOn(Z)V
    .locals 2
    .parameter "digestOn"

    .prologue
    .line 188
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->deliver:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public setExpiry(Ljava/util/Date;)V
    .locals 2
    .parameter "expire"

    .prologue
    .line 200
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "text-single"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->expire:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    .line 202
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public setIncludeBody(Z)V
    .locals 2
    .parameter "include"

    .prologue
    .line 213
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v1, "boolean"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->include_body:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public setShowValues(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jivesoftware/smackx/pubsub/PresenceState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, stateValues:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/jivesoftware/smackx/pubsub/PresenceState;>;"
    new-instance v1, Ljava/util/ArrayList;

    .line 226
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 225
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    const-string v3, "list-multi"

    invoke-direct {p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->addField(Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;Ljava/lang/String;)V

    .line 232
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->show_values:Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeOptionFields;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 233
    return-void

    .line 228
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    .line 229
    .local v0, state:Lorg/jivesoftware/smackx/pubsub/PresenceState;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/PresenceState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
