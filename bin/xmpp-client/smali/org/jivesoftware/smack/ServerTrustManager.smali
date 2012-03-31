.class Lorg/jivesoftware/smack/ServerTrustManager;
.super Ljava/lang/Object;
.source "ServerTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static cnPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field private final server:Ljava/lang/String;

.field private trustStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "(?i)(cn=)([^,]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/ServerTrustManager;->cnPattern:Ljava/util/regex/Pattern;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/ConnectionConfiguration;)V
    .locals 4
    .parameter "server"
    .parameter "configuration"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    .line 143
    iput-object p1, p0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    .line 145
    const/4 v1, 0x0

    .line 148
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getTruststoreType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 147
    iput-object v2, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    .line 150
    iget-object v2, p0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    invoke-virtual {p2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->getTruststorePassword()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 150
    invoke-virtual {v2, v1, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    if-eqz v1, :cond_0

    .line 159
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setVerifyRootCAEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 157
    if-eqz v1, :cond_0

    .line 159
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 160
    :catch_1
    move-exception v2

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 157
    if-eqz v1, :cond_1

    .line 159
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 164
    :cond_1
    :goto_1
    throw v2

    .line 160
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public static getPeerIdentity(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 4
    .parameter "x509Certificate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p0}, Lorg/jivesoftware/smack/ServerTrustManager;->getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v2

    .line 72
    .local v2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, name:Ljava/lang/String;
    sget-object v3, Lorg/jivesoftware/smack/ServerTrustManager;->cnPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 75
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .restart local v2       #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private static getSubjectAlternativeNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .locals 3
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, identities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 103
    .local v0, altNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    .end local v0           #altNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    .end local v2           #identities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v2

    .line 125
    .restart local v2       #identities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 17
    .parameter "x509Certificates"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 176
    move-object/from16 v0, p1

    array-length v5, v0

    .line 178
    .local v5, nSize:I
    const/4 v14, 0x0

    aget-object v14, p1, v14

    invoke-static {v14}, Lorg/jivesoftware/smack/ServerTrustManager;->getPeerIdentity(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v6

    .line 180
    .local v6, peerIdentities:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isVerifyChainEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 184
    const/4 v9, 0x0

    .line 185
    .local v9, principalLast:Ljava/security/Principal;
    add-int/lit8 v4, v5, -0x1

    .local v4, i:I
    :goto_0
    if-gez v4, :cond_2

    .line 211
    .end local v4           #i:I
    .end local v9           #principalLast:Ljava/security/Principal;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isVerifyRootCAEnabled()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 214
    const/4 v12, 0x0

    .line 216
    .local v12, trusted:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->trustStore:Ljava/security/KeyStore;

    .line 217
    add-int/lit8 v15, v5, -0x1

    aget-object v15, p1, v15

    invoke-virtual {v14, v15}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v14

    .line 216
    if-eqz v14, :cond_5

    const/4 v12, 0x1

    .line 218
    :goto_1
    if-nez v12, :cond_1

    const/4 v14, 0x1

    if-ne v5, v14, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isSelfSignedCertificateEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 220
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 221
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Accepting self-signed certificate of remote server: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 221
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    const/4 v12, 0x1

    .line 228
    :cond_1
    :goto_2
    if-nez v12, :cond_6

    .line 229
    new-instance v14, Ljava/security/cert/CertificateException;

    .line 230
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "root certificate not trusted of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 229
    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 186
    .end local v12           #trusted:Z
    .restart local v4       #i:I
    .restart local v9       #principalLast:Ljava/security/Principal;
    :cond_2
    aget-object v13, p1, v4

    .line 187
    .local v13, x509certificate:Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    .line 189
    .local v8, principalIssuer:Ljava/security/Principal;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    .line 190
    .local v10, principalSubject:Ljava/security/Principal;
    if-eqz v9, :cond_3

    .line 191
    invoke-interface {v8, v9}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 193
    add-int/lit8 v14, v4, 0x1

    :try_start_1
    aget-object v14, p1, v14

    .line 194
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v11

    .line 195
    .local v11, publickey:Ljava/security/PublicKey;
    aget-object v14, p1, v4

    invoke-virtual {v14, v11}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    .end local v11           #publickey:Ljava/security/PublicKey;
    :cond_3
    move-object v9, v10

    .line 185
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v3

    .line 197
    .local v3, generalsecurityexception:Ljava/security/GeneralSecurityException;
    new-instance v14, Ljava/security/cert/CertificateException;

    .line 198
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "signature verification failed of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 198
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 197
    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 202
    .end local v3           #generalsecurityexception:Ljava/security/GeneralSecurityException;
    :cond_4
    new-instance v14, Ljava/security/cert/CertificateException;

    .line 203
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "subject/issuer verification failed of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 203
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 202
    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 216
    .end local v4           #i:I
    .end local v8           #principalIssuer:Ljava/security/Principal;
    .end local v9           #principalLast:Ljava/security/Principal;
    .end local v10           #principalSubject:Ljava/security/Principal;
    .end local v13           #x509certificate:Ljava/security/cert/X509Certificate;
    .restart local v12       #trusted:Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 225
    :catch_1
    move-exception v2

    .line 226
    .local v2, e:Ljava/security/KeyStoreException;
    invoke-virtual {v2}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_2

    .line 234
    .end local v2           #e:Ljava/security/KeyStoreException;
    .end local v12           #trusted:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isNotMatchingDomainCheckEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 239
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 240
    const/4 v14, 0x0

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "*."

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 242
    const/4 v14, 0x0

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "*."

    .line 243
    const-string v16, ""

    .line 242
    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, peerIdentity:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 246
    new-instance v14, Ljava/security/cert/CertificateException;

    .line 247
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "target verification failed of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 246
    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 249
    .end local v7           #peerIdentity:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    invoke-interface {v6, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 250
    new-instance v14, Ljava/security/cert/CertificateException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "target verification failed of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 250
    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 255
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jivesoftware/smack/ServerTrustManager;->configuration:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v14}, Lorg/jivesoftware/smack/ConnectionConfiguration;->isExpiredCertificatesCheckEnabled()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 258
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 259
    .local v1, date:Ljava/util/Date;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_3
    if-lt v4, v5, :cond_a

    .line 268
    .end local v1           #date:Ljava/util/Date;
    .end local v4           #i:I
    :cond_9
    return-void

    .line 261
    .restart local v1       #date:Ljava/util/Date;
    .restart local v4       #i:I
    :cond_a
    :try_start_2
    aget-object v14, p1, v4

    invoke-virtual {v14, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 262
    :catch_2
    move-exception v3

    .line 263
    .restart local v3       #generalsecurityexception:Ljava/security/GeneralSecurityException;
    new-instance v14, Ljava/security/cert/CertificateException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "invalid date of "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ServerTrustManager;->server:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
