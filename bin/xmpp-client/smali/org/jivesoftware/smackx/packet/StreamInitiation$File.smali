.class public Lorg/jivesoftware/smackx/packet/StreamInitiation$File;
.super Ljava/lang/Object;
.source "StreamInitiation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/packet/StreamInitiation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private desc:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private isRanged:Z

.field private final name:Ljava/lang/String;

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter "name"
    .parameter "size"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->name:Ljava/lang/String;

    .line 149
    iput-wide p2, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->size:J

    .line 150
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    const-string v0, "file"

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const-string v0, "http://jabber.org/protocol/si/profile/file-transfer"

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->size:J

    return-wide v0
.end method

.method public isRanged()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->isRanged:Z

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 225
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->date:Ljava/util/Date;

    .line 226
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 236
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 246
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->hash:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setRanged(Z)V
    .locals 0
    .parameter "isRanged"

    .prologue
    .line 256
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->isRanged:Z

    .line 257
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, buffer:Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " xmlns=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 267
    const-string v1, "name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 268
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 273
    const-string v1, "size=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 277
    const-string v1, "date=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->date:Ljava/util/Date;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getHash()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 283
    const-string v1, "hash=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->isRanged:Z

    if-eqz v1, :cond_8

    .line 287
    :cond_5
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getDesc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 289
    const-string v1, "<desc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    const-string v2, "</desc>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->isRanged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 294
    const-string v1, "<range/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_7
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 298
    :cond_8
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
