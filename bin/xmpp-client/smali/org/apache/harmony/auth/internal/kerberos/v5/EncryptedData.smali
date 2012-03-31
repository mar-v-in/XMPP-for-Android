.class public Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;
.super Ljava/lang/Object;
.source "EncryptedData.java"


# static fields
.field static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final DES_CBC_CRC:I = 0x1

.field public static final DES_CBC_MD4:I = 0x2

.field public static final DES_CBC_MD5:I = 0x3


# instance fields
.field private final cipher:[B

.field private final etype:I

.field private final kvno:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 70
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 72
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 74
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 68
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 36
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .parameter "etype"
    .parameter "kvno"
    .parameter "cipher"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->etype:I

    .line 94
    iput p2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->kvno:I

    .line 95
    iput-object p3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->cipher:[B

    .line 96
    return-void
.end method


# virtual methods
.method public decrypt(Ljavax/crypto/SecretKey;)[B
    .locals 8
    .parameter "key"

    .prologue
    .line 103
    iget v6, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->etype:I

    packed-switch v6, :pswitch_data_0

    .line 117
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 105
    :pswitch_0
    const/16 v3, 0xc

    .line 107
    .local v3, offset:I
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 121
    .local v2, initCipherState:Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    :try_start_0
    const-string v6, "DES/CBC/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 123
    .local v0, dcipher:Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 125
    iget-object v6, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->cipher:[B

    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 131
    .local v5, tmp:[B
    array-length v6, v5

    sub-int/2addr v6, v3

    new-array v4, v6, [B

    .line 132
    .local v4, result:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v5, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-object v4

    .line 111
    .end local v0           #dcipher:Ljavax/crypto/Cipher;
    .end local v2           #initCipherState:Ljavax/crypto/spec/IvParameterSpec;
    .end local v3           #offset:I
    .end local v4           #result:[B
    .end local v5           #tmp:[B
    :pswitch_1
    const/16 v3, 0x18

    .line 113
    .restart local v3       #offset:I
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v6, 0x8

    new-array v6, v6, [B

    invoke-direct {v2, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 115
    .restart local v2       #initCipherState:Ljavax/crypto/spec/IvParameterSpec;
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getCipher()[B
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->cipher:[B

    return-object v0
.end method

.method public getEtype()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->etype:I

    return v0
.end method

.method public getKvno()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->kvno:I

    return v0
.end method
