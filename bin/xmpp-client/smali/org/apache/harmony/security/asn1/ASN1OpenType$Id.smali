.class public Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;
.super Lorg/apache/harmony/security/asn1/ASN1Oid;
.source "ASN1OpenType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/ASN1OpenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Id"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, oid:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/apache/harmony/security/asn1/BerInputStream;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p1, p0, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1, p0}, Lorg/apache/harmony/security/asn1/BerInputStream;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
