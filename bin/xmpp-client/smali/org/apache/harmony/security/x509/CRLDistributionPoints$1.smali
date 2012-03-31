.class Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "CRLDistributionPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/CRLDistributionPoints;
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
    .line 84
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 3
    .parameter "in"

    .prologue
    .line 89
    new-instance v1, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;-><init>(Ljava/util/List;[B)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter "object"

    .prologue
    .line 94
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    .line 95
    .local v0, dps:Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    #getter for: Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->access$0(Lorg/apache/harmony/security/x509/CRLDistributionPoints;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
