.class Lorg/apache/harmony/security/x509/InfoAccessSyntax$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "InfoAccessSyntax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/InfoAccessSyntax;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;-><init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/InfoAccessSyntax;)V

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
            "<*>;"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    .line 69
    .local v0, aias:Lorg/apache/harmony/security/x509/InfoAccessSyntax;
    #getter for: Lorg/apache/harmony/security/x509/InfoAccessSyntax;->accessDescriptions:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->access$1(Lorg/apache/harmony/security/x509/InfoAccessSyntax;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
