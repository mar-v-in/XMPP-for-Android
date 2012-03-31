.class Lorg/apache/harmony/security/x509/AccessDescription$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AccessDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AccessDescription;
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
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .parameter "in"

    .prologue
    .line 54
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 55
    .local v0, values:[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/security/x509/AccessDescription;

    .line 56
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    .line 57
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    .line 55
    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/apache/harmony/security/x509/AccessDescription;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[BLorg/apache/harmony/security/x509/AccessDescription;)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 63
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AccessDescription;

    .line 65
    .local v0, ad:Lorg/apache/harmony/security/x509/AccessDescription;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/AccessDescription;->accessMethod:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AccessDescription;->access$1(Lorg/apache/harmony/security/x509/AccessDescription;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 66
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/AccessDescription;->accessLocation:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AccessDescription;->access$2(Lorg/apache/harmony/security/x509/AccessDescription;)Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v2

    aput-object v2, p2, v1

    .line 67
    return-void
.end method
