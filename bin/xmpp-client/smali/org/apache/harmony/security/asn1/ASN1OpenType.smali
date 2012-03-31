.class public Lorg/apache/harmony/security/asn1/ASN1OpenType;
.super Lorg/apache/harmony/security/asn1/ASN1Any;
.source "ASN1OpenType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;
    }
.end annotation


# instance fields
.field private final key:Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;

.field private final pool:Lorg/apache/harmony/security/asn1/InformationObjectSet;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;Lorg/apache/harmony/security/asn1/InformationObjectSet;)V
    .locals 0
    .parameter "key"
    .parameter "pool"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Any;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->key:Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->pool:Lorg/apache/harmony/security/asn1/InformationObjectSet;

    .line 63
    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->key:Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;

    invoke-virtual {p1, v2}, Lorg/apache/harmony/security/asn1/BerInputStream;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 69
    .local v1, oid:[I
    if-nez v1, :cond_0

    .line 70
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ASN1OpenType;->pool:Lorg/apache/harmony/security/asn1/InformationObjectSet;

    invoke-virtual {v2, v1}, Lorg/apache/harmony/security/asn1/InformationObjectSet;->get([I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeType;

    .line 74
    .local v0, attr:Lorg/apache/harmony/security/x501/AttributeType;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lorg/apache/harmony/security/x501/AttributeType;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->tag:I

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Type;->checkTag(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    :cond_1
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Any;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .line 79
    :goto_0
    iget-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    return-object v2

    .line 77
    :cond_2
    iget-object v2, v0, Lorg/apache/harmony/security/x501/AttributeType;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

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
    .line 84
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    return-object v0
.end method
