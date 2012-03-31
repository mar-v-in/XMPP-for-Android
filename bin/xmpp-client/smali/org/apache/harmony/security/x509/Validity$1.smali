.class Lorg/apache/harmony/security/x509/Validity$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "Validity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Validity;
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
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 4
    .parameter "in"

    .prologue
    .line 59
    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 60
    .local v0, values:[Ljava/lang/Object;
    new-instance v3, Lorg/apache/harmony/security/x509/Validity;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Date;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Lorg/apache/harmony/security/x509/Validity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    return-object v3
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Validity;

    .line 68
    .local v0, validity:Lorg/apache/harmony/security/x509/Validity;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/Validity;->notBefore:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Validity;->access$0(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 69
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/Validity;->notAfter:Ljava/util/Date;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Validity;->access$1(Lorg/apache/harmony/security/x509/Validity;)Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v1

    .line 70
    return-void
.end method
