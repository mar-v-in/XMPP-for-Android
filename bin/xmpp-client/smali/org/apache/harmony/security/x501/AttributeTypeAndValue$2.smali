.class Lorg/apache/harmony/security/x501/AttributeTypeAndValue$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AttributeTypeAndValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
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
    .line 371
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

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
    .line 376
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 377
    .local v0, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [I

    .line 378
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeValue;

    .line 377
    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;-><init>([ILorg/apache/harmony/security/x501/AttributeValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 383
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 385
    .local v0, atav:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->oid:Lorg/apache/harmony/security/utils/ObjectIdentifier;
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->access$1(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v2

    aput-object v2, p2, v1

    .line 386
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->value:Lorg/apache/harmony/security/x501/AttributeValue;
    invoke-static {v0}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->access$2(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)Lorg/apache/harmony/security/x501/AttributeValue;

    move-result-object v2

    aput-object v2, p2, v1

    .line 387
    return-void
.end method
