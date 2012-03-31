.class public Lorg/jivesoftware/smack/packet/Presence;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/Presence$Mode;,
        Lorg/jivesoftware/smack/packet/Presence$Type;
    }
.end annotation


# instance fields
.field private language:Ljava/lang/String;

.field private mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field private priority:I

.field private status:Ljava/lang/String;

.field private type:Lorg/jivesoftware/smack/packet/Presence$Type;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 145
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 146
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    .line 147
    const/high16 v0, -0x8000

    iput v0, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    .line 149
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 161
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setType(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/Presence$Type;Ljava/lang/String;ILorg/jivesoftware/smack/packet/Presence$Mode;)V
    .locals 2
    .parameter "type"
    .parameter "status"
    .parameter "priority"
    .parameter "mode"

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 145
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 146
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    .line 147
    const/high16 v0, -0x8000

    iput v0, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    .line 149
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 178
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setType(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 179
    invoke-virtual {p0, p2}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p3}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    .line 181
    invoke-virtual {p0, p4}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 182
    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->language:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/Presence$Type;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAway()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v0, v1, :cond_1

    .line 264
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->away:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->xa:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->dnd:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 263
    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 275
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->language:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 286
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 287
    return-void
.end method

.method public setPriority(I)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 298
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Priority value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 300
    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    iput p1, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    .line 303
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 313
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setType(Lorg/jivesoftware/smack/packet/Presence$Type;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 327
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eqz v1, :cond_0

    .line 334
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 337
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v2, "<presence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 347
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->language:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 350
    const-string v2, " xml:lang=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Presence;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 353
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 356
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 357
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 360
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 361
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :cond_4
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-eq v2, v3, :cond_5

    .line 364
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_5
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 368
    const-string v2, "<status>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    const-string v3, "</status>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_6
    iget v2, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    const/high16 v3, -0x8000

    if-eq v2, v3, :cond_7

    .line 372
    const-string v2, "<priority>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</priority>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_7
    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v2, v3, :cond_8

    .line 375
    const-string v2, "<show>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</show>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_8
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    .line 382
    .local v1, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v1, :cond_9

    .line 383
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_9
    const-string v2, "</presence>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
