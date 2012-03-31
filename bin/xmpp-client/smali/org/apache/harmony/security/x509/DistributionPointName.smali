.class public Lorg/apache/harmony/security/x509/DistributionPointName;
.super Ljava/lang/Object;
.source "DistributionPointName.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;


# instance fields
.field private final fullName:Lorg/apache/harmony/security/x509/GeneralNames;

.field private final nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    new-instance v0, Lorg/apache/harmony/security/x509/DistributionPointName$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 74
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 75
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1_RDN:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 73
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/DistributionPointName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x501/Name;)V
    .locals 1
    .parameter "nameRelativeToCRLIssuer"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 114
    iput-object p1, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/GeneralNames;)V
    .locals 1
    .parameter "fullName"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

    .line 110
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x509/GeneralNames;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/DistributionPointName;)Lorg/apache/harmony/security/x501/Name;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const-string v0, "Distribution Point Name: [\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->fullName:Lorg/apache/harmony/security/x509/GeneralNames;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 132
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v0, "]\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v0, p0, Lorg/apache/harmony/security/x509/DistributionPointName;->nameRelativeToCRLIssuer:Lorg/apache/harmony/security/x501/Name;

    .line 130
    const-string v1, "RFC2253"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
