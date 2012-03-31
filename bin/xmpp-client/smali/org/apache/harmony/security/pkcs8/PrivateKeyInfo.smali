.class public Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
.super Ljava/lang/Object;
.source "PrivateKeyInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final attributes:Ljava/util/List;

.field private encoding:[B

.field private final privateKey:[B

.field private final privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 61
    new-instance v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 63
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    .line 64
    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 65
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 67
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 61
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 49
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V
    .locals 0
    .parameter "version"
    .parameter "privateKeyAlgorithm"
    .parameter "privateKey"
    .parameter "attributes"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    .line 100
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 101
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    .line 102
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    .line 103
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[B)V
    .locals 0
    .parameter "version"
    .parameter "privateKeyAlgorithm"
    .parameter "privateKey"
    .parameter "attributes"
    .parameter "encoding"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    .line 109
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    .line 110
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[BLorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    return v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)[B
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->encoding:[B

    return-object v0
.end method

.method public getPrivateKey()[B
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->privateKey:[B

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->version:I

    return v0
.end method
