.class Lorg/apache/harmony/security/x509/DistributionPointName$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "DistributionPointName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPointName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, result:Lorg/apache/harmony/security/x509/DistributionPointName;
    iget v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->choiceIndex:I

    if-nez v1, :cond_0

    .line 81
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .end local v0           #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x509/GeneralNames;)V

    .line 87
    .restart local v0       #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .end local v0           #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;-><init>(Lorg/apache/harmony/security/x501/Name;)V

    .restart local v0       #result:Lorg/apache/harmony/security/x509/DistributionPointName;
    goto :goto_0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 92
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 93
    .local v0, dpn:Lorg/apache/harmony/security/x509/DistributionPointName;
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "object"

    .prologue
    .line 98
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 99
    .local v0, dpn:Lorg/apache/harmony/security/x509/DistributionPointName;
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v1

    if-nez v1, :cond_0

    .line 100
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$1(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    :cond_0
    #getter for: Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/DistributionPointName;->access$0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v1

    goto :goto_0
.end method
