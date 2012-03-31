.class public Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.super Ljava/security/cert/CertPath;
.source "X509CertPathImpl.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf; = null

.field private static final ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKCS7:I = 0x1

.field private static final PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKI_PATH:I = 0x0

.field static final encodings:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final encodingsArr:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x6ee14ff003fb47acL


# instance fields
.field private final certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private pkcs7Encoding:[B

.field private pkiPathEncoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    new-array v0, v6, [Ljava/lang/String;

    .line 86
    const-string v1, "PkiPath"

    aput-object v1, v0, v4

    const-string v1, "PKCS7"

    aput-object v1, v0, v5

    .line 85
    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    .line 225
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;

    .line 226
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 287
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;

    .line 288
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 290
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    .line 292
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 294
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v6

    .line 287
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 327
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;

    .line 328
    new-array v1, v6, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    .line 329
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 327
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 359
    .local p1, certs:Ljava/util/List;,"Ljava/util/List<*>;"
    const-string v3, "X.509"

    invoke-direct {p0, v3}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 361
    .local v2, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 362
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 370
    return-void

    .line 363
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, cert:Ljava/lang/Object;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_1

    .line 365
    new-instance v3, Ljava/security/cert/CertificateException;

    .line 366
    const-string v4, "security.15D"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 365
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 368
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    check-cast v0, Ljava/security/cert/X509Certificate;

    .end local v0           #cert:Ljava/lang/Object;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/List;I[B)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;I[B)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, certs:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 386
    if-nez p2, :cond_0

    .line 387
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 393
    :goto_0
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 394
    return-void

    .line 389
    :cond_0
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/util/List;I[BLorg/apache/harmony/security/provider/cert/X509CertPathImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Ljava/io/InputStream;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "security.15E"

    .line 164
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 9
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 180
    new-instance v6, Ljava/security/cert/CertificateException;

    .line 181
    const-string v7, "security.15F"

    .line 180
    invoke-static {v7, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_0
    :try_start_0
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    .line 205
    :goto_0
    return-object v6

    .line 189
    :cond_1
    sget-object v6, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 190
    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 191
    .local v1, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v5

    .line 192
    .local v5, sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v5, :cond_2

    .line 193
    new-instance v6, Ljava/security/cert/CertificateException;

    .line 194
    const-string v7, "security.160"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v1           #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v5           #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    :catch_0
    move-exception v2

    .line 208
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.15E"

    .line 209
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v5       #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, certs:Ljava/util/List;,"Ljava/util/List<*>;"
    if-nez v0, :cond_3

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #certs:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .restart local v0       #certs:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 205
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V

    goto :goto_0

    .line 203
    :cond_4
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v7, v6}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getInstance([B)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 100
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "security.15E"

    .line 103
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .locals 9
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 119
    new-instance v6, Ljava/security/cert/CertificateException;

    .line 120
    const-string v7, "security.15F"

    .line 119
    invoke-static {v7, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 123
    :cond_0
    :try_start_0
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    .line 143
    :goto_0
    return-object v6

    .line 128
    :cond_1
    sget-object v6, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 129
    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v1

    .line 128
    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 130
    .local v1, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v5

    .line 131
    .local v5, sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v5, :cond_2

    .line 132
    new-instance v6, Ljava/security/cert/CertificateException;

    .line 133
    const-string v7, "security.160"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1           #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v5           #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    :catch_0
    move-exception v2

    .line 146
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.15E"

    .line 147
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 135
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v5       #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, certs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    if-nez v0, :cond_3

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #certs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .restart local v0       #certs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 143
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V

    goto :goto_0

    .line 141
    :cond_4
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v7, v6}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 411
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    if-nez v1, :cond_0

    .line 412
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 414
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 415
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 426
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    .line 428
    const-string v2, "security.15F"

    .line 427
    invoke-static {v2, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 430
    :cond_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getEncoded()[B

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    .line 435
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    if-nez v1, :cond_2

    .line 436
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    .line 438
    :cond_2
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 439
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
