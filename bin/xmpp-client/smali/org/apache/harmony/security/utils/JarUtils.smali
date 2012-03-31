.class public Lorg/apache/harmony/security/utils/JarUtils;
.super Ljava/lang/Object;
.source "JarUtils.java"


# static fields
.field private static final MESSAGE_DIGEST_OID:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    .line 50
    return-void

    .line 54
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x48t 0x3t 0x0t 0x0t
        0x8dt 0xbbt 0x1t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .parameter "signer"
    .parameter "candidates"

    .prologue
    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 60
    .local v0, chain:Ljava/util/LinkedList;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, p0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    .line 82
    :goto_0
    return-object v4

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 69
    .local v2, issuer:Ljava/security/Principal;
    const/4 v1, 0x1

    .line 71
    .local v1, count:I
    :goto_1
    invoke-static {v2, p1}, Lorg/apache/harmony/security/utils/JarUtils;->findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 72
    .local v3, issuerCert:Ljava/security/cert/X509Certificate;
    if-nez v3, :cond_2

    .line 82
    :cond_1
    new-array v4, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    .line 77
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    .line 70
    goto :goto_1
.end method

.method private static findCert(Ljava/security/Principal;[Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 4
    .parameter "issuer"
    .parameter "candidates"

    .prologue
    .line 87
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 92
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 87
    :cond_1
    aget-object v0, p1, v1

    .line 88
    .local v0, candidate:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static verifySignature(Ljava/io/InputStream;Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 28
    .parameter "signature"
    .parameter "signatureBlock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 116
    .local v5, bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v26, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 117
    .local v15, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v15}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v24

    .line 118
    .local v24, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v24, :cond_0

    .line 119
    new-instance v26, Ljava/io/IOException;

    const-string v27, "security.173"

    invoke-static/range {v27 .. v27}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 121
    :cond_0
    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v11

    .line 122
    .local v11, encCerts:Ljava/util/Collection;
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_1

    .line 123
    const/16 v26, 0x0

    .line 228
    :goto_0
    return-object v26

    .line 125
    :cond_1
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v6, v0, [Ljava/security/cert/X509Certificate;

    .line 126
    .local v6, certs:[Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 127
    .local v13, i:I
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_2

    .line 132
    invoke-virtual/range {v24 .. v24}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v23

    .line 134
    .local v23, sigInfos:Ljava/util/List;
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_3

    .line 135
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 141
    .local v22, sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v16

    .line 144
    .local v16, issuer:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v25

    .line 147
    .local v25, snum:Ljava/math/BigInteger;
    const/16 v17, 0x0

    .line 148
    .local v17, issuerSertIndex:I
    const/4 v13, 0x0

    :goto_2
    array-length v0, v6

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v13, v0, :cond_4

    .line 155
    :goto_3
    array-length v0, v6

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v13, v0, :cond_6

    .line 156
    const/16 v26, 0x0

    goto :goto_0

    .line 128
    .end local v16           #issuer:Ljavax/security/auth/x500/X500Principal;
    .end local v17           #issuerSertIndex:I
    .end local v22           #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v23           #sigInfos:Ljava/util/List;
    .end local v25           #snum:Ljava/math/BigInteger;
    :cond_2
    add-int/lit8 v14, v13, 0x1

    .end local v13           #i:I
    .local v14, i:I
    new-instance v27, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .line 129
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/apache/harmony/security/x509/Certificate;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 128
    aput-object v27, v6, v13

    move v13, v14

    .end local v14           #i:I
    .restart local v13       #i:I
    goto :goto_1

    .line 137
    .restart local v23       #sigInfos:Ljava/util/List;
    :cond_3
    const/16 v26, 0x0

    goto :goto_0

    .line 149
    .restart local v16       #issuer:Ljavax/security/auth/x500/X500Principal;
    .restart local v17       #issuerSertIndex:I
    .restart local v22       #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v25       #snum:Ljava/math/BigInteger;
    :cond_4
    aget-object v26, v6, v13

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 150
    aget-object v26, v6, v13

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 151
    move/from16 v17, v13

    .line 152
    goto :goto_3

    .line 148
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 159
    :cond_6
    aget-object v26, v6, v17

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/X509Certificate;->hasUnsupportedCriticalExtension()Z

    move-result v26

    if-eqz v26, :cond_7

    .line 160
    new-instance v26, Ljava/lang/SecurityException;

    const-string v27, "security.174"

    invoke-static/range {v27 .. v27}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 164
    :cond_7
    const/16 v21, 0x0

    .line 165
    .local v21, sig:Ljava/security/Signature;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getdigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, da:Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, dea:Ljava/lang/String;
    const/4 v3, 0x0

    .line 168
    .local v3, alg:Ljava/lang/String;
    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    .line 169
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v27, "with"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    :try_start_0
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 175
    :cond_8
    :goto_4
    if-nez v21, :cond_a

    .line 176
    move-object v3, v8

    .line 177
    if-nez v3, :cond_9

    .line 178
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 181
    :cond_9
    :try_start_1
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .line 186
    :cond_a
    aget-object v26, v6, v17

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 193
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getAuthenticatedAttributes()Ljava/util/List;

    move-result-object v4

    .line 195
    .local v4, atr:Ljava/util/List;
    invoke-static/range {p0 .. p0}, Lorg/apache/harmony/luni/util/InputStreamHelper;->readFullyAndClose(Ljava/io/InputStream;)[B

    move-result-object v20

    .line 197
    .local v20, sfBytes:[B
    if-nez v4, :cond_c

    .line 198
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 224
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v26

    if-nez v26, :cond_e

    .line 225
    new-instance v26, Ljava/lang/SecurityException;

    const-string v27, "security.176"

    invoke-static/range {v27 .. v27}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 182
    .end local v4           #atr:Ljava/util/List;
    .end local v20           #sfBytes:[B
    :catch_0
    move-exception v10

    .line 183
    .local v10, e:Ljava/security/NoSuchAlgorithmException;
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 200
    .end local v10           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v4       #atr:Ljava/util/List;
    .restart local v20       #sfBytes:[B
    :cond_c
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncodedAuthenticatedAttributes()[B

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 205
    const/4 v12, 0x0

    check-cast v12, [B

    .line 206
    .local v12, existingDigest:[B
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_d

    .line 213
    if-eqz v12, :cond_b

    .line 215
    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v26

    .line 214
    invoke-static/range {v26 .. v26}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v19

    .line 216
    .local v19, md:Ljava/security/MessageDigest;
    invoke-virtual/range {v19 .. v20}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 217
    .local v7, computedDigest:[B
    invoke-static {v12, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v26

    if-nez v26, :cond_b

    .line 218
    new-instance v26, Ljava/lang/SecurityException;

    .line 219
    const-string v27, "security.175"

    invoke-static/range {v27 .. v27}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 218
    invoke-direct/range {v26 .. v27}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 208
    .end local v7           #computedDigest:[B
    .end local v19           #md:Ljava/security/MessageDigest;
    :cond_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    .line 209
    .local v2, a:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    invoke-virtual {v2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    move-result-object v26

    sget-object v27, Lorg/apache/harmony/security/utils/JarUtils;->MESSAGE_DIGEST_OID:[I

    invoke-static/range {v26 .. v27}, Ljava/util/Arrays;->equals([I[I)Z

    goto :goto_5

    .line 228
    .end local v2           #a:Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    .end local v12           #existingDigest:[B
    :cond_e
    aget-object v26, v6, v17

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lorg/apache/harmony/security/utils/JarUtils;->createChain(Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v26

    goto/16 :goto_0

    .line 172
    .end local v4           #atr:Ljava/util/List;
    .end local v20           #sfBytes:[B
    :catch_1
    move-exception v26

    goto/16 :goto_4
.end method
