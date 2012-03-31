.class public Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
.super Ljava/lang/Object;
.source "AlgorithmIdentifier.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private algorithmName:Ljava/lang/String;

.field private encoding:[B

.field private final parameters:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    .line 63
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "algorithm"

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .parameter "algorithm"
    .parameter "parameters"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    .line 106
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .parameter "algorithm"
    .parameter "parameters"
    .parameter "encoding"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    .line 118
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    .line 119
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v0, :cond_0

    .line 127
    const-string v0, ", no params, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    :goto_0
    const-string v0, "OID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    return-void

    .line 129
    :cond_0
    const-string v0, ", params unparsed, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "ai"

    .prologue
    const/4 v1, 0x0

    .line 137
    instance-of v2, p1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    if-nez v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 140
    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 141
    .local v0, algid:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v2, :cond_0

    .line 143
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    iget-object v3, v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    return-object v0
.end method

.method public getParameters()[B
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    .line 195
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 194
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
