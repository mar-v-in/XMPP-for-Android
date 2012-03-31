.class public Lorg/jivesoftware/smackx/packet/StreamInitiation;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "StreamInitiation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;,
        Lorg/jivesoftware/smackx/packet/StreamInitiation$File;
    }
.end annotation


# instance fields
.field private featureNegotiation:Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;

.field private file:Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

.field private id:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 321
    const-string v2, "<si xmlns=\"http://jabber.org/protocol/si\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 323
    const-string v2, "id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 326
    const-string v2, "mime-type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_1
    const-string v2, "profile=\"http://jabber.org/protocol/si/profile/file-transfer\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->file:Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/StreamInitiation$File;->toXML()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, fileXML:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .end local v1           #fileXML:Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->featureNegotiation:Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;

    if-eqz v2, :cond_3

    .line 341
    iget-object v2, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->featureNegotiation:Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_3
    const-string v2, "</si>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 335
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/packet/StreamInitiation;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 336
    const-string v2, "<si xmlns=\"http://jabber.org/protocol/si\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "IQ Type not understood"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFeatureNegotiationForm()Lorg/jivesoftware/smackx/packet/DataForm;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->featureNegotiation:Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;->getData()Lorg/jivesoftware/smackx/packet/DataForm;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lorg/jivesoftware/smackx/packet/StreamInitiation$File;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->file:Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setFeatureNegotiationForm(Lorg/jivesoftware/smackx/packet/DataForm;)V
    .locals 1
    .parameter "form"

    .prologue
    .line 395
    new-instance v0, Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;-><init>(Lorg/jivesoftware/smackx/packet/StreamInitiation;Lorg/jivesoftware/smackx/packet/DataForm;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->featureNegotiation:Lorg/jivesoftware/smackx/packet/StreamInitiation$Feature;

    .line 396
    return-void
.end method

.method public setFile(Lorg/jivesoftware/smackx/packet/StreamInitiation$File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 406
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->file:Lorg/jivesoftware/smackx/packet/StreamInitiation$File;

    .line 407
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "mimeType"

    .prologue
    .line 422
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->mimeType:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setSesssionID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 436
    iput-object p1, p0, Lorg/jivesoftware/smackx/packet/StreamInitiation;->id:Ljava/lang/String;

    .line 437
    return-void
.end method
