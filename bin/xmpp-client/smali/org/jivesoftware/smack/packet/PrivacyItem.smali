.class public Lorg/jivesoftware/smack/packet/PrivacyItem;
.super Ljava/lang/Object;
.source "PrivacyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;,
        Lorg/jivesoftware/smack/packet/PrivacyItem$Type;
    }
.end annotation


# instance fields
.field private allow:Z

.field private filterIQ:Z

.field private filterMessage:Z

.field private filterPresence_in:Z

.field private filterPresence_out:Z

.field private order:I

.field private rule:Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1
    .parameter "type"
    .parameter "allow"
    .parameter "order"

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterIQ:Z

    .line 205
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterMessage:Z

    .line 208
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_in:Z

    .line 211
    iput-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_out:Z

    .line 220
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setRule(Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;)V

    .line 221
    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setAllow(Z)V

    .line 222
    invoke-virtual {p0, p3}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setOrder(I)V

    .line 223
    return-void
.end method

.method private getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->rule:Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    return-object v0
.end method

.method private setAllow(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 342
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->allow:Z

    .line 343
    return-void
.end method

.method private setRule(Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;)V
    .locals 0
    .parameter "rule"

    .prologue
    .line 403
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->rule:Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    .line 404
    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->order:I

    return v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    if-nez v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAllow()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->allow:Z

    return v0
.end method

.method public isFilterEverything()Z
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterIQ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_in()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_out()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFilterIQ()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterIQ:Z

    return v0
.end method

.method public isFilterMessage()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterMessage:Z

    return v0
.end method

.method public isFilterPresence_in()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_in:Z

    return v0
.end method

.method public isFilterPresence_out()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_out:Z

    return v0
.end method

.method public setFilterIQ(Z)V
    .locals 0
    .parameter "filterIQ"

    .prologue
    .line 353
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterIQ:Z

    .line 354
    return-void
.end method

.method public setFilterMessage(Z)V
    .locals 0
    .parameter "filterMessage"

    .prologue
    .line 364
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterMessage:Z

    .line 365
    return-void
.end method

.method public setFilterPresence_in(Z)V
    .locals 0
    .parameter "filterPresence_in"

    .prologue
    .line 375
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_in:Z

    .line 376
    return-void
.end method

.method public setFilterPresence_out(Z)V
    .locals 0
    .parameter "filterPresence_out"

    .prologue
    .line 386
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->filterPresence_out:Z

    .line 387
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 399
    iput p1, p0, Lorg/jivesoftware/smack/packet/PrivacyItem;->order:I

    .line 400
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 419
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 420
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getRule()Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/PrivacyItem$PrivacyRule;->setValue(Ljava/lang/String;)V

    .line 422
    :cond_1
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isAllow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 433
    const-string v1, " action=\"allow\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :goto_0
    const-string v1, " order=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getOrder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 439
    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getType()Lorg/jivesoftware/smack/packet/PrivacyItem$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 442
    const-string v1, " value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterEverything()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 445
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 435
    :cond_2
    const-string v1, " action=\"deny\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 447
    :cond_3
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterIQ()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 449
    const-string v1, "<iq/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 452
    const-string v1, "<message/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_in()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 455
    const-string v1, "<presence-in/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->isFilterPresence_out()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 458
    const-string v1, "<presence-out/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_7
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
