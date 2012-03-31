.class public Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
.super Ljava/lang/Object;
.source "SubjectPublicKeyInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private encoding:[B

.field private publicKey:Ljava/security/PublicKey;

.field private final subjectPublicKey:[B

.field private final unusedBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 64
    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    .line 63
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .parameter "algID"
    .parameter "subjectPublicKey"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI)V
    .locals 2
    .parameter "algID"
    .parameter "subjectPublicKey"
    .parameter "unused"

    .prologue
    .line 109
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    .line 110
    return-void
.end method

.method private constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V
    .locals 0
    .parameter "algID"
    .parameter "subjectPublicKey"
    .parameter "unused"
    .parameter "encoding"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 122
    iput-object p2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    .line 123
    iput p3, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    .line 124
    iput-object p4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[BLorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[BI[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)[B
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)I
    .locals 1
    .parameter

    .prologue
    .line 59
    iget v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    return v0
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->encoding:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5

    .prologue
    .line 155
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v2, :cond_1

    .line 156
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->algorithmID:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, alg_oid:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, alg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 161
    move-object v0, v1

    .line 163
    :cond_0
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 164
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 163
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0           #alg:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    if-nez v2, :cond_1

    .line 169
    new-instance v2, Lorg/apache/harmony/security/x509/X509PublicKey;

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v3

    .line 170
    iget-object v4, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/harmony/security/x509/X509PublicKey;-><init>(Ljava/lang/String;[B[B)V

    .line 169
    iput-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    .line 173
    .end local v1           #alg_oid:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->publicKey:Ljava/security/PublicKey;

    return-object v2

    .line 166
    .restart local v1       #alg_oid:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 165
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public getSubjectPublicKey()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->subjectPublicKey:[B

    return-object v0
.end method

.method public getUnusedBits()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->unusedBits:I

    return v0
.end method
