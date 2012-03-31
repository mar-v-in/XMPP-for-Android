.class public Lorg/jivesoftware/smackx/jingle/media/PayloadType;
.super Ljava/lang/Object;
.source "PayloadType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    }
.end annotation


# static fields
.field public static INVALID_PT:I = 0x0

.field public static MAX_FIXED_PT:I = 0x0

.field public static final NODENAME:Ljava/lang/String; = "payload-type"


# instance fields
.field private channels:I

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x5f

    sput v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->MAX_FIXED_PT:I

    .line 171
    const v0, 0xffff

    sput v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->INVALID_PT:I

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 192
    sget v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->INVALID_PT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "channels"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->id:I

    .line 220
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->name:Ljava/lang/String;

    .line 221
    iput p3, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->channels:I

    .line 222
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/media/PayloadType;)V
    .locals 3
    .parameter "pt"

    .prologue
    .line 231
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;-><init>(ILjava/lang/String;I)V

    .line 232
    return-void
.end method

.method public static getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "payload-type"

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p0, p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 245
    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 248
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 250
    check-cast v0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;

    .line 251
    .local v0, other:Lorg/jivesoftware/smackx/jingle/media/PayloadType;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 252
    goto :goto_0

    .line 254
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 255
    goto :goto_0

    .line 259
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v3

    sget v4, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->MAX_FIXED_PT:I

    if-le v3, v4, :cond_0

    .line 260
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 261
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 262
    goto :goto_0

    .line 264
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 265
    goto :goto_0
.end method

.method public getChannels()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->channels:I

    return v0
.end method

.method protected getChildAttributes()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .local v0, buf:Ljava/lang/StringBuilder;
    instance-of v2, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 284
    check-cast v1, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;

    .line 286
    .local v1, pta:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    const-string v2, " clockrate=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;->getClockRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 287
    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .end local v1           #pta:Lorg/jivesoftware/smackx/jingle/media/PayloadType$Audio;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 318
    const/16 v0, 0x1f

    .line 319
    .local v0, PRIME:I
    const/4 v1, 0x1

    .line 320
    .local v1, result:I
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 321
    mul-int/lit8 v2, v1, 0x1f

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v3

    add-int v1, v2, v3

    .line 322
    mul-int/lit8 v3, v1, 0x1f

    .line 323
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 322
    :goto_0
    add-int v1, v3, v2

    .line 324
    return v1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isNull()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 333
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v1

    sget v2, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->INVALID_PT:I

    if-ne v1, v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannels(I)V
    .locals 0
    .parameter "channels"

    .prologue
    .line 348
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->channels:I

    .line 349
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 358
    iput p1, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->id:I

    .line 359
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 368
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->name:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v1

    sget v2, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->INVALID_PT:I

    if-eq v1, v2, :cond_0

    .line 378
    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 381
    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    const-string v1, " channels=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChannels()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChildAttributes()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/media/PayloadType;->getChildAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_3
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
