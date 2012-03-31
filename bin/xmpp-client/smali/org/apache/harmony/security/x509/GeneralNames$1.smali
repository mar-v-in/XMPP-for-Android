.class Lorg/apache/harmony/security/x509/GeneralNames$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "GeneralNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/GeneralNames;
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
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "in"

    .prologue
    .line 62
    new-instance v1, Lorg/apache/harmony/security/x509/GeneralNames;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    .line 62
    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/harmony/security/x509/GeneralNames;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/GeneralNames;)V

    return-object v1
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/harmony/security/x509/GeneralName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/GeneralNames;

    .line 69
    .local v0, gns:Lorg/apache/harmony/security/x509/GeneralNames;
    #getter for: Lorg/apache/harmony/security/x509/GeneralNames;->generalNames:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/GeneralNames;->access$1(Lorg/apache/harmony/security/x509/GeneralNames;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
