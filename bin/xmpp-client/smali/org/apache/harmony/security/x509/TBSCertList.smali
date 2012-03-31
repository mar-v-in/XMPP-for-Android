.class public Lorg/apache/harmony/security/x509/TBSCertList;
.super Ljava/lang/Object;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

.field private encoding:[B

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final nextUpdate:Ljava/util/Date;

.field private final revokedCertificates:Ljava/util/List;

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final thisUpdate:Ljava/util/Date;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 212
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertList$1;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 213
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    .line 214
    sget-object v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 215
    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 216
    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 217
    sget-object v3, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 218
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 219
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 212
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertList$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 66
    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;)V
    .locals 0
    .parameter "version"
    .parameter "signature"
    .parameter "issuer"
    .parameter "thisUpdate"
    .parameter "nextUpdate"
    .parameter "revokedCertificates"
    .parameter "crlExtensions"

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    .line 308
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 309
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 310
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 311
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 312
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 313
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 314
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V
    .locals 0
    .parameter "version"
    .parameter "signature"
    .parameter "issuer"
    .parameter "thisUpdate"
    .parameter "nextUpdate"
    .parameter "revokedCertificates"
    .parameter "crlExtensions"
    .parameter "encoding"

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    .line 321
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 322
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 323
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 324
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 325
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 326
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 327
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    .line 328
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList;)V
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

    .prologue
    .line 317
    invoke-direct/range {p0 .. p8}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;)V
    .locals 2
    .parameter "signature"
    .parameter "issuer"
    .parameter "thisUpdate"

    .prologue
    const/4 v1, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    .line 275
    iput-object p1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 276
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 277
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 278
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 279
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 280
    iput-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 281
    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/TBSCertList;)I
    .locals 1
    .parameter

    .prologue
    .line 192
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$4(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$5(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$6(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .locals 8
    .parameter "buffer"

    .prologue
    const/16 v7, 0x5d

    const/16 v6, 0xa

    .line 335
    const-string v3, "X.509 CRL v"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 336
    const-string v3, "\nSignature Algorithm: ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 338
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 339
    const-string v3, "\nIssuer: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v5, "RFC2253"

    invoke-virtual {v4, v5}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    const-string v3, "\n\nThis Update: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 341
    const-string v3, "\nNext Update: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 343
    const-string v3, "\nRevoked Certificates: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 344
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    const/4 v1, 0x1

    .line 346
    .local v1, number:I
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 347
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 346
    if-nez v3, :cond_2

    .line 352
    const-string v3, "]\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #number:I
    :cond_0
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v3, :cond_1

    .line 355
    const-string v3, "\nCRL Extensions: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 356
    iget-object v4, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/Extensions;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    iget-object v3, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v4, "  "

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 358
    const-string v3, "]\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    :cond_1
    return-void

    .line 348
    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v1       #number:I
    :cond_2
    const-string v3, "\n  ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #number:I
    .local v2, number:I
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;

    const-string v4, "  "

    invoke-virtual {v3, p1, v4}, Lorg/apache/harmony/security/x509/TBSCertList$RevokedCertificate;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v2

    .end local v2           #number:I
    .restart local v1       #number:I
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "tbs"

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, 0x3e8

    .line 364
    instance-of v2, p1, Lorg/apache/harmony/security/x509/TBSCertList;

    if-nez v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 367
    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    .line 368
    .local v0, tbscert:Lorg/apache/harmony/security/x509/TBSCertList;
    iget v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    iget v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    if-ne v2, v3, :cond_0

    .line 369
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v2

    .line 372
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    invoke-virtual {v3}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v3

    .line 371
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    .line 374
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 373
    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 375
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    if-nez v2, :cond_0

    .line 378
    :goto_1
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 379
    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    .line 380
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 381
    :cond_4
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    if-nez v2, :cond_0

    .line 382
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 376
    :cond_5
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v6

    iget-object v4, v0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    .line 377
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v6

    .line 376
    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    .line 382
    :cond_6
    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    iget-object v3, v0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {v2, v3}, Lorg/apache/harmony/security/x509/Extensions;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2
.end method

.method public getCrlExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->crlExtensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    if-nez v0, :cond_0

    .line 401
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertList;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->encoding:[B

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->nextUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getRevokedCertificates()Ljava/util/List;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->revokedCertificates:Ljava/util/List;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 462
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertList;->version:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 463
    invoke-virtual {v1}, Lorg/apache/harmony/security/x501/Name;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 462
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 465
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertList;->thisUpdate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x3e8

    .line 462
    add-int/2addr v0, v1

    return v0
.end method
