.class public Lorg/apache/harmony/security/x509/CRLNumber;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CRLNumber.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final number:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/x509/CRLNumber;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    .line 54
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 61
    new-instance v1, Ljava/math/BigInteger;

    sget-object v0, Lorg/apache/harmony/security/x509/CRLNumber;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    .line 62
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "CRL Number: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 71
    const-string v1, " ]\n"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    return-void
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->encoding:[B

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lorg/apache/harmony/security/x509/CRLNumber;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->encoding:[B

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->encoding:[B

    return-object v0
.end method

.method public getNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLNumber;->number:Ljava/math/BigInteger;

    return-object v0
.end method
