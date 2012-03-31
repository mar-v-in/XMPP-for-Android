.class public Lorg/apache/harmony/security/x509/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final signatureValue:[B

.field private final tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lorg/apache/harmony/security/x509/Certificate$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 60
    sget-object v3, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 61
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Certificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 3
    .parameter "tbsCertificate"
    .parameter "signatureAlgorithm"
    .parameter "signatureValue"

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    .line 97
    iput-object p2, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 98
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    .line 100
    array-length v1, p3

    .line 99
    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .locals 0
    .parameter "tbsCertificate"
    .parameter "signatureAlgorithm"
    .parameter "signatureValue"
    .parameter "encoding"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/Certificate;-><init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    .line 114
    iput-object p4, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/x509/Certificate;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/Certificate;-><init>(Lorg/apache/harmony/security/x509/TBSCertificate;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/Certificate;)Lorg/apache/harmony/security/x509/TBSCertificate;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/Certificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/x509/Certificate;)[B
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->encoding:[B

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSignatureValue()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 145
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    iget-object v2, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    return-object v0
.end method

.method public getTbsCertificate()Lorg/apache/harmony/security/x509/TBSCertificate;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5d

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v1, "X.509 Certificate:\n[\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->tbsCertificate:Lorg/apache/harmony/security/x509/TBSCertificate;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/x509/TBSCertificate;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 163
    const-string v1, "\n  Algorithm: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 165
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    const-string v1, "\n  Signature Value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lorg/apache/harmony/security/x509/Certificate;->signatureValue:[B

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
