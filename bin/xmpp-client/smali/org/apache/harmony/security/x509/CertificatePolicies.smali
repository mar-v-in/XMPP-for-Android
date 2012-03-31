.class public Lorg/apache/harmony/security/x509/CertificatePolicies;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CertificatePolicies.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private encoding:[B

.field private policyInformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lorg/apache/harmony/security/x509/CertificatePolicies$1;

    .line 65
    sget-object v1, Lorg/apache/harmony/security/x509/PolicyInformation;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 64
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificatePolicies$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, policyInformations:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    .line 94
    return-void
.end method

.method private constructor <init>(Ljava/util/List;[B)V
    .locals 0
    .parameter
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, policyInformations:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/PolicyInformation;>;"
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    .line 104
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 105
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;[BLorg/apache/harmony/security/x509/CertificatePolicies;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/CertificatePolicies;-><init>(Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/CertificatePolicies;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .locals 2
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v1, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 50
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Lorg/apache/harmony/security/x509/CertificatePolicies;

    .line 51
    .local v0, cps:Lorg/apache/harmony/security/x509/CertificatePolicies;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 52
    return-object v0
.end method


# virtual methods
.method public addPolicyInformation(Lorg/apache/harmony/security/x509/PolicyInformation;)Lorg/apache/harmony/security/x509/CertificatePolicies;
    .locals 1
    .parameter "policyInformation"

    .prologue
    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 117
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-object p0
.end method

.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "CertificatePolicies [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    return-void

    .line 131
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyInformation;

    .line 132
    .local v0, policyInformation:Lorg/apache/harmony/security/x509/PolicyInformation;
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/x509/PolicyInformation;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 135
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->encoding:[B

    return-object v0
.end method

.method public getPolicyInformations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/PolicyInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/CertificatePolicies;->policyInformations:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
