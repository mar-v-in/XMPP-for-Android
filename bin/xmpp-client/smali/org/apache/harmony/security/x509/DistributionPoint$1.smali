.class Lorg/apache/harmony/security/x509/DistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "DistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "$anonymous0"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    .line 83
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 89
    .local v0, values:[Ljava/lang/Object;
    new-instance v4, Lorg/apache/harmony/security/x509/DistributionPoint;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 90
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lorg/apache/harmony/security/x509/ReasonFlags;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    .line 89
    invoke-direct {v4, v1, v2, v3}, Lorg/apache/harmony/security/x509/DistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;Lorg/apache/harmony/security/x509/GeneralNames;)V

    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 95
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPoint;

    .line 96
    .local v0, dp:Lorg/apache/harmony/security/x509/DistributionPoint;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$0(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    move-result-object v2

    aput-object v2, p2, v1

    .line 97
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$1(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    move-result-object v2

    aput-object v2, p2, v1

    .line 98
    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$2(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v2

    aput-object v2, p2, v1

    .line 99
    return-void
.end method
