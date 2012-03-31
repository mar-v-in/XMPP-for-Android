.class Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "IssuingDistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 2
    .parameter "$anonymous0"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 82
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setOptional(I)V

    .line 83
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 84
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 85
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 86
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;->setDefault(Ljava/lang/Object;I)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 8
    .parameter "in"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 91
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 92
    .local v1, values:[Ljava/lang/Object;
    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    .line 93
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/x509/DistributionPointName;

    const/4 v3, 0x3

    aget-object v3, v1, v3

    check-cast v3, Lorg/apache/harmony/security/x509/ReasonFlags;

    .line 92
    invoke-direct {v0, v2, v3}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V

    .line 94
    .local v0, idp:Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    .line 95
    aget-object v2, v1, v4

    if-eqz v2, :cond_0

    .line 96
    aget-object v2, v1, v4

    check-cast v2, Ljava/lang/Boolean;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 96
    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsUserCerts(Z)V

    .line 99
    :cond_0
    aget-object v2, v1, v5

    if-eqz v2, :cond_1

    .line 100
    aget-object v2, v1, v5

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsCACerts(Z)V

    .line 102
    :cond_1
    aget-object v2, v1, v6

    if-eqz v2, :cond_2

    .line 103
    aget-object v2, v1, v6

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setIndirectCRL(Z)V

    .line 105
    :cond_2
    aget-object v2, v1, v7

    if-eqz v2, :cond_3

    .line 106
    aget-object v2, v1, v7

    check-cast v2, Ljava/lang/Boolean;

    .line 107
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 106
    invoke-virtual {v0, v2}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->setOnlyContainsAttributeCerts(Z)V

    .line 109
    :cond_3
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 114
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    .line 115
    .local v0, idp:Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$0(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    move-result-object v3

    aput-object v3, p2, v1

    .line 116
    const/4 v3, 0x1

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$1(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    aput-object v1, p2, v3

    .line 117
    const/4 v3, 0x2

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$2(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    aput-object v1, p2, v3

    .line 118
    const/4 v1, 0x3

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$3(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    move-result-object v3

    aput-object v3, p2, v1

    .line 119
    const/4 v3, 0x4

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$4(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    aput-object v1, p2, v3

    .line 120
    const/4 v1, 0x5

    #getter for: Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z
    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->access$5(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    aput-object v2, p2, v1

    .line 121
    return-void

    :cond_1
    move-object v1, v2

    .line 116
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 117
    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 119
    goto :goto_2
.end method
