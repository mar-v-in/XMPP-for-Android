.class public Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
    }
.end annotation


# static fields
.field private static CERT_BOUND_SUFFIX:[B

.field private static CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

.field private static CERT_CACHE_SEED_LENGTH:I

.field private static CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

.field private static CRL_CACHE_SEED_LENGTH:I

.field private static FREE_BOUND_SUFFIX:[B

.field private static pemBegin:[B

.field private static pemClose:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 233
    const/16 v1, 0x1c

    sput v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    .line 235
    new-instance v1, Lorg/apache/harmony/security/provider/cert/Cache;

    sget v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 237
    const/16 v1, 0x18

    sput v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    .line 240
    new-instance v1, Lorg/apache/harmony/security/provider/cert/Cache;

    sget v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-direct {v1, v2}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 251
    const/4 v1, 0x0

    sput-object v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    .line 263
    :try_start_0
    const-string v1, "-----BEGIN"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemBegin:[B

    .line 264
    const-string v1, "-----END"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemClose:[B

    .line 265
    const-string v1, " CERTIFICATE-----"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 442
    return-void
.end method

.method private decodePEM(Ljava/io/InputStream;[B)[B
    .locals 11
    .parameter "inStream"
    .parameter "boundary_suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    sget-object v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemBegin:[B

    array-length v8, v8

    if-lt v3, v8, :cond_2

    .line 483
    if-nez p2, :cond_6

    .line 486
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/16 v8, 0xa

    if-ne v1, v8, :cond_5

    .line 507
    :cond_1
    const/16 v7, 0x400

    .line 508
    .local v7, size:I
    new-array v0, v7, [B

    .line 509
    .local v0, buff:[B
    const/4 v4, 0x0

    .line 511
    .local v4, index:I
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_a

    .line 524
    add-int/lit8 v8, v4, -0x1

    aget-byte v8, v0, v8

    const/16 v9, 0xa

    if-eq v8, v9, :cond_c

    .line 525
    new-instance v8, Ljava/io/IOException;

    const-string v9, "security.158"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 476
    .end local v0           #buff:[B
    .end local v1           #ch:I
    .end local v4           #index:I
    .end local v7           #size:I
    :cond_2
    sget-object v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemBegin:[B

    aget-byte v8, v8, v3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    if-eq v8, v1, :cond_4

    .line 477
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    if-nez p2, :cond_3

    const-string v8, ""

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 480
    const-string v10, "\' is expected as opening delimiter boundary."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 477
    invoke-direct {v9, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 478
    :cond_3
    new-instance v8, Ljava/lang/String;

    .line 479
    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 475
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 487
    :cond_5
    const/4 v8, -0x1

    if-ne v1, v8, :cond_0

    .line 488
    new-instance v8, Ljava/io/IOException;

    const-string v9, "security.156"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 492
    .end local v1           #ch:I
    :cond_6
    array-length v9, p2

    const/4 v8, 0x0

    :goto_3
    if-lt v8, v9, :cond_8

    .line 499
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    const/16 v8, 0xd

    if-ne v1, v8, :cond_7

    .line 501
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 503
    :cond_7
    const/16 v8, 0xa

    if-eq v1, v8, :cond_1

    .line 504
    new-instance v8, Ljava/io/IOException;

    const-string v9, "security.15B2"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 492
    .end local v1           #ch:I
    :cond_8
    aget-byte v2, p2, v8

    .line 493
    .local v2, element:B
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v10

    if-eq v2, v10, :cond_9

    .line 494
    new-instance v8, Ljava/io/IOException;

    const-string v9, "security.15B"

    .line 495
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p2}, Ljava/lang/String;-><init>([B)V

    .line 494
    invoke-static {v9, v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 492
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 512
    .end local v2           #element:B
    .restart local v0       #buff:[B
    .restart local v1       #ch:I
    .restart local v4       #index:I
    .restart local v7       #size:I
    :cond_a
    const/4 v8, -0x1

    if-ne v1, v8, :cond_b

    .line 513
    new-instance v8, Ljava/io/IOException;

    const-string v9, "security.157"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 515
    :cond_b
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    int-to-byte v8, v1

    aput-byte v8, v0, v4

    .line 516
    if-ne v5, v7, :cond_17

    .line 518
    add-int/lit16 v8, v7, 0x400

    new-array v6, v8, [B

    .line 519
    .local v6, newbuff:[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    move-object v0, v6

    .line 521
    add-int/lit16 v7, v7, 0x400

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto/16 :goto_1

    .line 529
    .end local v6           #newbuff:[B
    :cond_c
    const/4 v3, 0x1

    :goto_4
    sget-object v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemClose:[B

    array-length v8, v8

    if-lt v3, v8, :cond_10

    .line 536
    if-nez p2, :cond_13

    .line 539
    :cond_d
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_e

    const/16 v8, 0xa

    if-eq v1, v8, :cond_e

    .line 540
    const/16 v8, 0xd

    if-ne v1, v8, :cond_d

    .line 551
    :cond_e
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 552
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_f

    const/16 v8, 0xa

    if-eq v1, v8, :cond_15

    const/16 v8, 0xd

    if-eq v1, v8, :cond_15

    .line 555
    :cond_f
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 556
    invoke-static {v0, v4}, Lorg/apache/harmony/luni/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 557
    if-nez v0, :cond_16

    .line 558
    new-instance v8, Ljava/io/IOException;

    const-string v9, "security.159"

    invoke-static {v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 530
    :cond_10
    sget-object v8, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemClose:[B

    aget-byte v8, v8, v3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    if-eq v8, v9, :cond_12

    .line 531
    new-instance v9, Ljava/io/IOException;

    const-string v10, "security.15B1"

    .line 532
    if-nez p2, :cond_11

    const-string v8, ""

    .line 531
    :goto_6
    invoke-static {v10, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 532
    :cond_11
    new-instance v8, Ljava/lang/String;

    .line 533
    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_6

    .line 529
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 543
    :cond_13
    array-length v9, p2

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v9, :cond_e

    aget-byte v2, p2, v8

    .line 544
    .restart local v2       #element:B
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v10

    if-eq v2, v10, :cond_14

    .line 545
    new-instance v8, Ljava/io/IOException;

    const-string v9, "security.15B1"

    .line 546
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p2}, Ljava/lang/String;-><init>([B)V

    .line 545
    invoke-static {v9, v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 543
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 553
    .end local v2           #element:B
    :cond_15
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    goto :goto_5

    .line 560
    :cond_16
    return-object v0

    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_17
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto/16 :goto_1
.end method

.method private static getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 8
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    .line 386
    :try_start_0
    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 387
    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 389
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 390
    if-nez v0, :cond_0

    .line 391
    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "security.152"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 385
    .end local v0           #buff:[B
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 393
    .restart local v0       #buff:[B
    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 394
    .local v2, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 395
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    .line 396
    .local v1, encoding:[B
    array-length v5, v1

    sget v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    if-ge v5, v7, :cond_1

    .line 397
    new-instance v5, Ljava/security/cert/CRLException;

    const-string v7, "security.15B4"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 400
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CRL;

    .line 401
    .local v4, res:Ljava/security/cert/CRL;
    if-eqz v4, :cond_2

    .line 402
    monitor-exit v6

    .line 410
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :goto_0
    return-object v4

    .line 404
    .restart local v1       #encoding:[B
    .restart local v4       #res:Ljava/security/cert/CRL;
    :cond_2
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    .end local v4           #res:Ljava/security/cert/CRL;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 405
    .restart local v4       #res:Ljava/security/cert/CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 406
    monitor-exit v6

    goto :goto_0

    .line 408
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :cond_3
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Ljava/io/InputStream;)V

    .line 409
    .local v4, res:Ljava/security/cert/X509CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 410
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getCRL([B)Ljava/security/cert/CRL;
    .locals 6
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    array-length v4, p0

    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    if-ge v4, v5, :cond_0

    .line 354
    new-instance v4, Ljava/security/cert/CRLException;

    const-string v5, "security.152"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 356
    :cond_0
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 357
    :try_start_0
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 358
    .local v0, hash:J
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 360
    .local v2, res:Ljava/security/cert/X509CRL;
    if-eqz v2, :cond_1

    .line 361
    monitor-exit v5

    move-object v3, v2

    .line 366
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .local v3, res:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 364
    .end local v3           #res:Ljava/lang/Object;
    :cond_1
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 365
    .restart local v2       #res:Ljava/security/cert/X509CRL;
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 366
    monitor-exit v5

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_0

    .line 356
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 8
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v6

    .line 312
    :try_start_0
    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-virtual {p0, v5}, Ljava/io/InputStream;->mark(I)V

    .line 314
    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-static {p0, v5}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 315
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 316
    if-nez v0, :cond_0

    .line 317
    new-instance v5, Ljava/security/cert/CertificateException;

    .line 318
    const-string v7, "security.152"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    .end local v0           #buff:[B
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 320
    .restart local v0       #buff:[B
    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 321
    .local v2, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 322
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v5

    new-array v1, v5, [B

    .line 323
    .local v1, encoding:[B
    array-length v5, v1

    sget v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    if-ge v5, v7, :cond_1

    .line 324
    new-instance v5, Ljava/security/cert/CertificateException;

    .line 325
    const-string v7, "security.15B3"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 324
    invoke-direct {v5, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 327
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 328
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 329
    .local v4, res:Ljava/security/cert/Certificate;
    if-eqz v4, :cond_2

    .line 330
    monitor-exit v6

    .line 339
    .end local v1           #encoding:[B
    :goto_0
    return-object v4

    .line 332
    .restart local v1       #encoding:[B
    :cond_2
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .end local v4           #res:Ljava/security/cert/Certificate;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 333
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 334
    monitor-exit v6

    goto :goto_0

    .line 336
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/Certificate;
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 337
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Ljava/io/InputStream;)V

    .line 338
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v5, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 339
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static getCertificate([B)Ljava/security/cert/Certificate;
    .locals 6
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    array-length v4, p0

    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    if-ge v4, v5, :cond_0

    .line 283
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "security.152"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_0
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 286
    :try_start_0
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 287
    .local v0, hash:J
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 288
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 290
    .local v2, res:Ljava/security/cert/Certificate;
    if-eqz v2, :cond_1

    .line 291
    monitor-exit v5

    move-object v3, v2

    .line 296
    .end local v2           #res:Ljava/security/cert/Certificate;
    .local v3, res:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 294
    .end local v3           #res:Ljava/lang/Object;
    :cond_1
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 295
    .restart local v2       #res:Ljava/security/cert/Certificate;
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 296
    monitor-exit v5

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_0

    .line 285
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/Certificate;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .parameter "source"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    new-array v2, p1, [B

    .line 427
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 434
    .end local v2           #result:[B
    :goto_1
    return-object v2

    .line 428
    .restart local v2       #result:[B
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 429
    .local v0, bytik:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 430
    const/4 v2, 0x0

    goto :goto_1

    .line 432
    :cond_1
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 785
    if-nez p1, :cond_0

    .line 786
    new-instance v2, Ljava/security/cert/CRLException;

    const-string v3, "security.153"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 789
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 793
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 795
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 797
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 799
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v2

    .line 803
    :goto_0
    return-object v2

    .line 801
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 803
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CRLException;

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 14
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x30

    const/4 v12, -0x1

    .line 817
    if-nez p1, :cond_0

    .line 818
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.153"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 820
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/CRL;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_1

    .line 823
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v7, inStream:Ljava/io/InputStream;
    move-object p1, v7

    .line 827
    .end local v7           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    const/4 v4, 0x0

    check-cast v4, [B

    .line 832
    .local v4, encoding:[B
    const/4 v10, -0x1

    .line 833
    .local v10, second_asn1_tag:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 835
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    if-ne v0, v12, :cond_3

    .line 886
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_b

    .line 909
    :cond_2
    :goto_2
    return-object v9

    .line 837
    :cond_3
    const/16 v11, 0x2d

    if-ne v0, v11, :cond_5

    .line 839
    sget-object v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v11}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v4

    .line 857
    :goto_3
    if-nez v4, :cond_8

    new-instance v6, Lorg/apache/harmony/security/asn1/BerInputStream;

    .line 858
    invoke-direct {v6, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 860
    .local v6, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_4
    invoke-virtual {v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v10

    .line 861
    if-nez v4, :cond_4

    .line 863
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 866
    :cond_4
    if-eq v10, v13, :cond_9

    .line 867
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .line 840
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_5
    if-ne v0, v13, :cond_6

    .line 841
    const/4 v4, 0x0

    check-cast v4, [B

    .line 842
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 844
    sget v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 913
    .end local v0           #ch:I
    .end local v4           #encoding:[B
    .end local v10           #second_asn1_tag:I
    :catch_0
    move-exception v3

    .line 914
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CRLException;

    invoke-direct {v11, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 846
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #ch:I
    .restart local v4       #encoding:[B
    .restart local v10       #second_asn1_tag:I
    :cond_6
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_7

    .line 847
    new-instance v11, Ljava/security/cert/CRLException;

    .line 848
    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 847
    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 852
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_2

    .line 858
    :cond_8
    new-instance v6, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v6, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_4

    .line 878
    .restart local v6       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_9
    if-nez v4, :cond_a

    .line 879
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :goto_5
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 881
    :cond_a
    invoke-static {v4}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 889
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_b
    if-ne v0, v12, :cond_c

    .line 890
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.155"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 893
    :cond_c
    const/4 v11, 0x6

    if-ne v10, v11, :cond_f

    .line 895
    if-eqz v4, :cond_d

    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 896
    invoke-virtual {v11, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v8

    .line 895
    :goto_6
    check-cast v8, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 898
    .local v8, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v8}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v2

    .line 899
    .local v2, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v2, :cond_e

    .line 900
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.154"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 896
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_d
    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_6

    .line 902
    .restart local v2       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v8       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_e
    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCRLs()Ljava/util/List;

    move-result-object v1

    .line 903
    .local v1, crls:Ljava/util/List;
    if-eqz v1, :cond_2

    .line 904
    const/4 v5, 0x0

    .local v5, i:I
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 905
    new-instance v12, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    .line 906
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/harmony/security/x509/CertificateList;

    invoke-direct {v12, v11}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    .line 905
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 912
    .end local v1           #crls:Ljava/util/List;
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v5           #i:I
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_f
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 2
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 728
    if-nez p1, :cond_0

    .line 729
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "security.153"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 5
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 741
    if-nez p1, :cond_0

    .line 742
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "security.153"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 744
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    .line 745
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v2, inStream:Ljava/io/InputStream;
    move-object p1, v2

    .line 748
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 752
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    .line 755
    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v3

    .line 754
    invoke-static {v3, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    .line 759
    :goto_0
    return-object v3

    .line 756
    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    .line 757
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 759
    invoke-static {p1, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    goto :goto_0

    .line 761
    :cond_3
    new-instance v3, Ljava/security/cert/CertificateException;

    .line 762
    const-string v4, "security.15F"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 761
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v0           #ch:I
    :catch_0
    move-exception v1

    .line 765
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 776
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 580
    if-nez p1, :cond_0

    .line 581
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "security.153"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 586
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 590
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 592
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 594
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 598
    :goto_0
    return-object v2

    .line 596
    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 598
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 14
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x30

    const/4 v12, -0x1

    .line 615
    if-nez p1, :cond_0

    .line 616
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "security.153"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 618
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/Certificate;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_1

    .line 622
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v7, inStream:Ljava/io/InputStream;
    move-object p1, v7

    .line 626
    .end local v7           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    const/4 v4, 0x0

    check-cast v4, [B

    .line 631
    .local v4, encoding:[B
    const/4 v10, -0x1

    .line 632
    .local v10, second_asn1_tag:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 634
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-ne v1, v12, :cond_3

    .line 686
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_b

    .line 712
    :cond_2
    :goto_2
    return-object v9

    .line 636
    :cond_3
    const/16 v11, 0x2d

    if-ne v1, v11, :cond_5

    .line 638
    sget-object v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v11}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v4

    .line 656
    :goto_3
    if-nez v4, :cond_8

    new-instance v6, Lorg/apache/harmony/security/asn1/BerInputStream;

    .line 657
    invoke-direct {v6, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 659
    .local v6, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_4
    invoke-virtual {v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v10

    .line 660
    if-nez v4, :cond_4

    .line 662
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 665
    :cond_4
    if-eq v10, v13, :cond_9

    .line 666
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .line 639
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_5
    if-ne v1, v13, :cond_6

    .line 640
    const/4 v4, 0x0

    check-cast v4, [B

    .line 641
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 643
    sget v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 716
    .end local v1           #ch:I
    .end local v4           #encoding:[B
    .end local v10           #second_asn1_tag:I
    :catch_0
    move-exception v3

    .line 717
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CertificateException;

    invoke-direct {v11, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 645
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #ch:I
    .restart local v4       #encoding:[B
    .restart local v10       #second_asn1_tag:I
    :cond_6
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_7

    .line 646
    new-instance v11, Ljava/security/cert/CertificateException;

    .line 647
    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 646
    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 651
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_2

    .line 657
    :cond_8
    new-instance v6, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v6, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    goto :goto_4

    .line 677
    .restart local v6       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_9
    if-nez v4, :cond_a

    .line 678
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    :goto_5
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0

    .line 680
    :cond_a
    invoke-static {v4}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 689
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_b
    if-ne v1, v12, :cond_c

    .line 690
    new-instance v11, Ljava/security/cert/CertificateException;

    .line 691
    const-string v12, "security.155"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 690
    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 694
    :cond_c
    const/4 v11, 0x6

    if-ne v10, v11, :cond_f

    .line 696
    if-eqz v4, :cond_d

    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 697
    invoke-virtual {v11, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v8

    .line 696
    :goto_6
    check-cast v8, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 699
    .local v8, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v8}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v2

    .line 700
    .local v2, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v2, :cond_e

    .line 701
    new-instance v11, Ljava/security/cert/CertificateException;

    .line 702
    const-string v12, "security.154"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 701
    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 697
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_d
    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_6

    .line 704
    .restart local v2       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v8       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_e
    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 705
    .local v0, certs:Ljava/util/List;
    if-eqz v0, :cond_2

    .line 706
    const/4 v5, 0x0

    .local v5, i:I
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 707
    new-instance v12, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .line 709
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v12, v11}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 707
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 715
    .end local v0           #certs:Ljava/util/List;
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v5           #i:I
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_f
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
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
    .line 924
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
