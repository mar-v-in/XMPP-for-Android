.class public Lorg/apache/harmony/security/x509/TBSCertificate;
.super Ljava/lang/Object;
.source "TBSCertificate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final issuerUniqueID:[Z

.field private final serialNumber:Ljava/math/BigInteger;

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final subject:Lorg/apache/harmony/security/x501/Name;

.field private final subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private final subjectUniqueID:[Z

.field private final validity:Lorg/apache/harmony/security/x509/Validity;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate$1;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 92
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 93
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    .line 94
    sget-object v3, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 95
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 96
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 97
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 91
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 63
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)V
    .locals 11
    .parameter "version"
    .parameter "serialNumber"
    .parameter "signature"
    .parameter "issuer"
    .parameter "validity"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"

    .prologue
    .line 163
    .line 164
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V

    .line 165
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V
    .locals 0
    .parameter "version"
    .parameter "serialNumber"
    .parameter "signature"
    .parameter "issuer"
    .parameter "validity"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "issuerUniqueID"
    .parameter "subjectUniqueID"
    .parameter "extensions"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    .line 197
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 198
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 199
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 200
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    .line 201
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    .line 202
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .line 203
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    .line 204
    iput-object p9, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    .line 205
    iput-object p10, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 206
    return-void
.end method

.method private constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0
    .parameter "version"
    .parameter "serialNumber"
    .parameter "signature"
    .parameter "issuer"
    .parameter "validity"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "issuerUniqueID"
    .parameter "subjectUniqueID"
    .parameter "extensions"
    .parameter "encoding"

    .prologue
    .line 227
    .line 229
    invoke-direct/range {p0 .. p10}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V

    .line 230
    iput-object p11, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    .line 231
    return-void
.end method

.method synthetic constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct/range {p0 .. p11}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/TBSCertificate;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method

.method static synthetic access$10(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$5(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method static synthetic access$6(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$7(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method static synthetic access$8(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method static synthetic access$9(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .locals 8
    .parameter "buffer"

    .prologue
    const/16 v2, 0x31

    const/16 v3, 0x30

    const/4 v4, 0x0

    .line 237
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    const-string v1, "\n  Version: V"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    const-string v1, "\n  Subject: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 240
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    const-string v6, "RFC2253"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string v1, "\n  Signature Algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 243
    const-string v1, "\n  Key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v1, "\n  Validity: [From: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 247
    const-string v1, "\n               To: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    const-string v1, "\n  Issuer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v5, "RFC2253"

    invoke-virtual {v1, v5}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    const-string v1, "\n  Serial Number: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 253
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "\n  Issuer Id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    iget-object v6, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    array-length v7, v6

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_3

    .line 259
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    if-eqz v1, :cond_1

    .line 260
    const-string v1, "\n  Subject Id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    iget-object v5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    array-length v6, v5

    :goto_1
    if-lt v4, v6, :cond_5

    .line 265
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v1, :cond_2

    .line 266
    const-string v1, "\n\n  Extensions: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    const-string v1, "[\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 269
    const-string v1, "  ]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_2
    const-string v1, "\n]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    return-void

    .line 255
    :cond_3
    aget-boolean v0, v6, v5

    .line 256
    .local v0, element:Z
    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_4
    move v1, v3

    .line 256
    goto :goto_2

    .line 261
    .end local v0           #element:Z
    :cond_5
    aget-boolean v0, v5, v4

    .line 262
    .restart local v0       #element:Z
    if-eqz v0, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 261
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_6
    move v1, v3

    .line 262
    goto :goto_3
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    .line 283
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method

.method public getValidity()Lorg/apache/harmony/security/x509/Validity;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method
