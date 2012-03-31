.class public Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
.super Ljava/lang/Object;
.source "CertificationRequestInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final attributes:Ljava/util/List;

.field private encoding:[B

.field private final subject:Lorg/apache/harmony/security/x501/Name;

.field private final subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 61
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    .line 62
    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 63
    sget-object v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 64
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 60
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 44
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;)V
    .locals 0
    .parameter "version"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "attributes"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    .line 90
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    .line 91
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .line 92
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    .line 93
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[B)V
    .locals 0
    .parameter "version"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "attributes"
    .parameter "encoding"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;)V

    .line 100
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    .line 101
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[BLorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    return v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x501/Name;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "-- CertificationRequestInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, "\n subject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "\n subjectPublicKeyInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\t algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n\t public key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v1, "\n attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :goto_0
    const-string v1, "\n-- CertificationRequestInfo End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 159
    :cond_0
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
