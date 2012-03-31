.class public Lorg/apache/harmony/security/x501/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getASN1(Lorg/apache/harmony/security/asn1/InformationObjectSet;)Lorg/apache/harmony/security/asn1/ASN1Sequence;
    .locals 6
    .parameter "set"

    .prologue
    .line 53
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;

    invoke-direct {v1}, Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;-><init>()V

    .line 54
    .local v1, id:Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1OpenType;

    invoke-direct {v0, v1, p0}, Lorg/apache/harmony/security/asn1/ASN1OpenType;-><init>(Lorg/apache/harmony/security/asn1/ASN1OpenType$Id;Lorg/apache/harmony/security/asn1/InformationObjectSet;)V

    .line 56
    .local v0, any:Lorg/apache/harmony/security/asn1/ASN1OpenType;
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Sequence;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-object v2
.end method
