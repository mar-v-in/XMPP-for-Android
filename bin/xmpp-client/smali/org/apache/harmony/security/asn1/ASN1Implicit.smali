.class public Lorg/apache/harmony/security/asn1/ASN1Implicit;
.super Lorg/apache/harmony/security/asn1/ASN1Type;
.source "ASN1Implicit.java"


# static fields
.field private static final TAGGING_CONSTRUCTED:I = 0x1

.field private static final TAGGING_PRIMITIVE:I = 0x0

.field private static final TAGGING_STRING:I = 0x2


# instance fields
.field private final taggingType:I

.field private final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .parameter "tagClass"
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;-><init>(II)V

    .line 83
    instance-of v0, p3, Lorg/apache/harmony/security/asn1/ASN1Choice;

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/apache/harmony/security/asn1/ASN1Any;

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 89
    const-string v1, "security.9F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput-object p3, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 94
    iget v0, p3, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    invoke-virtual {p3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget v0, p3, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    invoke-virtual {p3, v0}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    goto :goto_0
.end method

.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 65
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final checkTag(I)Z
    .locals 3
    .parameter "identifier"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    packed-switch v2, :pswitch_data_0

    .line 126
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-eq v2, p1, :cond_0

    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-eq v2, p1, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    .line 122
    :pswitch_0
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    if-eq v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 124
    :pswitch_1
    iget v2, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    if-eq v2, p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->checkTag(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Exception;

    const-string v1, "security.100"

    .line 138
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tagOffset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 139
    iget v4, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 137
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    if-ne v0, v1, :cond_1

    .line 144
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->id:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    .line 148
    :goto_0
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 150
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_2

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_1
    return-object v0

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v0, v0, Lorg/apache/harmony/security/asn1/ASN1Type;->constrId:I

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public encodeASN(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 165
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->taggingType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 166
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->constrId:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    .line 170
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Implicit;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 171
    return-void

    .line 168
    :cond_0
    iget v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->id:I

    invoke-virtual {p1, v0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeTag(I)V

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 176
    return-void
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1Implicit;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V

    .line 181
    return-void
.end method
