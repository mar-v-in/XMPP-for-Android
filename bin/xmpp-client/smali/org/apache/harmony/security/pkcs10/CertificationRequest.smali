.class public Lorg/apache/harmony/security/pkcs10/CertificationRequest;
.super Ljava/lang/Object;
.source "CertificationRequest.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private final info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

.field private final signature:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 54
    sget-object v3, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 55
    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 56
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 53
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequest$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 3
    .parameter "info"
    .parameter "algId"
    .parameter "signature"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    .line 82
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 83
    array-length v0, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V
    .locals 0
    .parameter "info"
    .parameter "algId"
    .parameter "signature"
    .parameter "encoding"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    .line 91
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[BLorg/apache/harmony/security/pkcs10/CertificationRequest;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs10/CertificationRequest;-><init>(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/pkcs10/CertificationRequest;)[B
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    return-object v0
.end method


# virtual methods
.method public getAlgId()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->algId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    if-nez v0, :cond_0

    .line 108
    sget-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->encoding:[B

    return-object v0
.end method

.method public getInfo()Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->info:Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 125
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequest;->signature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-object v0
.end method
