.class public Lorg/apache/harmony/security/pkcs7/SignedData;
.super Ljava/lang/Object;
.source "SignedData.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

.field private final crls:Ljava/util/List;

.field private final digestAlgorithms:Ljava/util/List;

.field private final signerInfos:Ljava/util/List;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    new-instance v0, Lorg/apache/harmony/security/pkcs7/SignedData$1;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 57
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 58
    sget-object v3, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 59
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 60
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x509/CertificateList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 61
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v4, Lorg/apache/harmony/security/pkcs7/SignerInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 56
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/SignedData$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs7/SignedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter "version"
    .parameter "digestAlgorithms"
    .parameter "contentInfo"
    .parameter
    .parameter "crls"
    .parameter "signerInfos"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List;",
            "Lorg/apache/harmony/security/pkcs7/ContentInfo;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Certificate;",
            ">;",
            "Ljava/util/List;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p4, certificates:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    .line 91
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    .line 92
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 93
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    .line 94
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    .line 95
    iput-object p6, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/pkcs7/SignedData;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    iget v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    return v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/pkcs7/SignedData;)Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCRLs()Ljava/util/List;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    return-object v0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    return-object v0
.end method

.method public getContentInfo()Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    return-object v0
.end method

.method public getDigestAlgorithms()Ljava/util/List;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public getSignerInfos()Ljava/util/List;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "---- SignedData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "\nversion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, "\ndigestAlgorithms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->digestAlgorithms:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "\ncontentInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->contentInfo:Lorg/apache/harmony/security/pkcs7/ContentInfo;

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "\ncertificates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->certificates:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_0
    const-string v1, "\ncrls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->crls:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1
    const-string v1, "\nsignerInfos:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs7/SignedData;->signerInfos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "\n---- SignedData End\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
