.class Lorg/apache/harmony/security/x509/ExtendedKeyUsage$1;
.super Lorg/apache/harmony/security/asn1/ASN1Oid;
.source "ExtendedKeyUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ExtendedKeyUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/harmony/security/asn1/ASN1Oid;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 58
    .local v0, oid:[I
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
