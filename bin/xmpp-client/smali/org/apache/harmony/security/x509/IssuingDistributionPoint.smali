.class public Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "IssuingDistributionPoint.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private final onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    new-instance v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 74
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/x509/DistributionPointName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 75
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 76
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 77
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/x509/ReasonFlags;->ASN1:Lorg/apache/harmony/security/asn1/ASN1BitString;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 78
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    const/4 v2, 0x5

    .line 79
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    const/4 v4, 0x5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 72
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;)V
    .locals 1
    .parameter "distributionPoint"
    .parameter "onlySomeReasons"

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 62
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 63
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 65
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 67
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 130
    iput-object p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    .line 131
    iput-object p2, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    .line 132
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method static synthetic access$5(Lorg/apache/harmony/security/x509/IssuingDistributionPoint;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    .locals 2
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v1, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 55
    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    .line 54
    check-cast v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    .line 56
    .local v0, idp:Lorg/apache/harmony/security/x509/IssuingDistributionPoint;
    iput-object p0, v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    .line 57
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 4
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v3, 0xa

    .line 140
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Issuing Distribution Point: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/DistributionPointName;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  onlyContainsUserCerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 145
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  onlyContainsCACerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 147
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

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

    .line 151
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  indirectCRL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 152
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  onlyContainsAttributeCerts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 154
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    return-void
.end method

.method public getDistributionPoint()Lorg/apache/harmony/security/x509/DistributionPointName;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->distributionPoint:Lorg/apache/harmony/security/x509/DistributionPointName;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    if-nez v0, :cond_0

    .line 172
    sget-object v0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->encoding:[B

    return-object v0
.end method

.method public getIndirectCRL()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public getOnlyContainsAttributeCerts()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public getOnlyContainsCACerts()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public getOnlyContainsUserCerts()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public getOnlySomeReasons()Lorg/apache/harmony/security/x509/ReasonFlags;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlySomeReasons:Lorg/apache/harmony/security/x509/ReasonFlags;

    return-object v0
.end method

.method public setIndirectCRL(Z)V
    .locals 0
    .parameter "indirectCRL"

    .prologue
    .line 216
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->indirectCRL:Z

    .line 217
    return-void
.end method

.method public setOnlyContainsAttributeCerts(Z)V
    .locals 0
    .parameter "onlyContainsAttributeCerts"

    .prologue
    .line 223
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    .line 224
    return-void
.end method

.method public setOnlyContainsCACerts(Z)V
    .locals 0
    .parameter "onlyContainsCACerts"

    .prologue
    .line 230
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    .line 231
    return-void
.end method

.method public setOnlyContainsUserCerts(Z)V
    .locals 0
    .parameter "onlyContainsUserCerts"

    .prologue
    .line 237
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 238
    return-void
.end method
