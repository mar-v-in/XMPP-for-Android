.class Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;
.super Lorg/apache/harmony/security/asn1/ASN1SetOf;
.source "AuthenticatedAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .parameter "in"

    .prologue
    .line 43
    new-instance v1, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    .line 44
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 43
    invoke-direct {v1, v2, v0}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;-><init>([BLjava/util/List;)V

    return-object v1
.end method
