.class public final Lorg/apache/harmony/security/asn1/ASN1Explicit;
.super Lorg/apache/harmony/security/asn1/ASN1Constructured;
.source "ASN1Explicit.java"


# instance fields
.field public final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "tagClass"
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Constructured;-><init>(II)V

    .line 71
    iput-object p3, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 72
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 53
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 54
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->constrId:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-eq v0, v1, :cond_0

    .line 83
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.13F"

    .line 84
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->constrId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 85
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    .line 89
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 91
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Explicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 105
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeExplicit(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V

    .line 106
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 110
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getExplicitLength(Lorg/apache/harmony/security/asn1/ASN1Explicit;)V

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lorg/apache/harmony/security/asn1/ASN1Constructured;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/asn1/ASN1Explicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
