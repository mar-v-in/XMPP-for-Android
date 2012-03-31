.class public Lorg/apache/harmony/security/asn1/ASN1Boolean;
.super Lorg/apache/harmony/security/asn1/ASN1Primitive;
.source "ASN1Boolean.java"


# static fields
.field private static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;

    invoke-direct {v0}, Lorg/apache/harmony/security/asn1/ASN1Boolean;-><init>()V

    sput-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/harmony/security/asn1/ASN1Primitive;-><init>(I)V

    .line 58
    return-void
.end method

.method public static getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/harmony/security/asn1/ASN1Boolean;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Boolean;

    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->readBoolean()V

    .line 70
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeBoolean()V

    .line 79
    return-void
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->buffer:[B

    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->contentOffset:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput v0, p1, Lorg/apache/harmony/security/asn1/BerOutputStream;->length:I

    .line 105
    return-void
.end method
