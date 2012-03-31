.class public Lorg/apache/harmony/security/asn1/ASN1Set;
.super Lorg/apache/harmony/security/asn1/ASN1TypeCollection;
.source "ASN1Set.java"


# direct methods
.method public constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 35
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;-><init>(I[Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 42
    return-void
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
    .line 51
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->readSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V

    .line 53
    iget-boolean v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->isVerify:Z

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Set;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final encodeContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 66
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->encodeSet(Lorg/apache/harmony/security/asn1/ASN1Set;)V

    .line 67
    return-void
.end method

.method public final setEncodingContent(Lorg/apache/harmony/security/asn1/BerOutputStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 71
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerOutputStream;->getSetLength(Lorg/apache/harmony/security/asn1/ASN1Set;)V

    .line 72
    return-void
.end method
