.class public Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevokedCertificate"
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerRetrieved:Z

.field private final revocationDate:Ljava/util/Date;

.field private final userCertificate:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 77
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;

    .line 78
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 79
    sget-object v3, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    aput-object v3, v1, v2

    .line 77
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/util/Date;Lorg/apache/harmony/security/x509/Extensions;)V
    .locals 0
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "crlEntryExtensions"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    .line 106
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    .line 107
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 108
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/math/BigInteger;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v2, 0xa

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Certificate Serial Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Revocation Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 121
    const-string v1, "CRL Entry Extensions: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "rc"

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x0

    .line 129
    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    if-nez v2, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    .line 133
    .local v0, rcert:Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    .line 135
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 134
    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 136
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_2

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_0

    .line 138
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 138
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getCrlEntryExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->encoding:[B

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v1, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 169
    :goto_0
    return-object v1

    .line 160
    :cond_0
    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuerRetrieved:Z

    if-nez v1, :cond_1

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 163
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Extensions;->valueOfCertificateIssuerExtension()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 162
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuer:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuerRetrieved:Z

    .line 169
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->issuer:Ljavax/security/auth/x500/X500Principal;

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUserCertificate()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->userCertificate:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 184
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->revocationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    .line 182
    add-int/2addr v1, v0

    .line 186
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 182
    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->crlEntryExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 187
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/Extensions;->hashCode()I

    move-result v0

    goto :goto_0
.end method
