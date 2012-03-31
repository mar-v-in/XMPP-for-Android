.class public Lorg/apache/harmony/security/x509/CRLDistributionPoints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CRLDistributionPoints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final distributionPoints:Ljava/util/List;

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;

    .line 85
    sget-object v1, Lorg/apache/harmony/security/x509/DistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 84
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter "distributionPoints"

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 100
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    const-string v1, "security.17D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/util/List;[B)V
    .locals 2
    .parameter "distributionPoints"
    .parameter "encoding"

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 108
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 110
    const-string v1, "security.17D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    .line 113
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    .line 114
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/CRLDistributionPoints;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    .locals 2
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 73
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    .line 74
    .local v0, cdp:Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "CRL Distribution Points: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, number:I
    iget-object v2, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    return-void

    .line 125
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x509/DistributionPoint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/harmony/security/x509/DistributionPoint;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    return-object v0
.end method
