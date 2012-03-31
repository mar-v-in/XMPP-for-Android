.class public Lorg/apache/harmony/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

.field private final distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

.field private final reasons:Lorg/apache/harmony/security/x509/ReasonFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 76
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPoint$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 77
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 78
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 79
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 76
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPoint$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/DistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 104
    iput-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    .line 105
    iput-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;Lorg/apache/harmony/security/x509/GeneralNames;)V
    .locals 2
    .parameter "distributionPoint"
    .parameter "reasons"
    .parameter "cRLIssuer"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 111
    if-nez p3, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 113
    const-string v1, "security.17F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 116
    iput-object p2, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    .line 117
    iput-object p3, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 118
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/GeneralNames;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v0, "Distribution Point: [\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->reasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/ReasonFlags;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v0, "  CRL Issuer: [\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPoint;->cRLIssuer:Lorg/apache/harmony/security/x509/GeneralNames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v0, "  ]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v0, "]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    return-void
.end method
