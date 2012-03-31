.class public Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;
.super Ljava/lang/Object;
.source "KrbClient.java"


# static fields
.field private static final BUF_SIZE:I = 0x400

.field private static final DEFAULT_KDC:Ljava/lang/String; = "java.security.krb5.kdc"

.field private static final DEFAULT_REALM:Ljava/lang/String; = "java.security.krb5.realm"

.field private static isInitialized:Z

.field private static kdc:Ljava/lang/String;

.field private static port:I

.field private static realm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x58

    sput v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->port:I

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->isInitialized:Z

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    return-void
.end method

.method public static doAS(Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;[C)Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;
    .locals 17
    .parameter "cname"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->setEnv()V

    .line 70
    new-instance v11, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 71
    const/4 v13, 0x4

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "krbtgt"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    aput-object v16, v14, v15

    .line 70
    invoke-direct {v11, v13, v14}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;-><init>(I[Ljava/lang/String;)V

    .line 73
    .local v11, sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    new-instance v9, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;

    const/16 v13, 0xa

    .line 74
    sget-object v14, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p0

    invoke-direct {v9, v13, v0, v14, v11}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;-><init>(ILorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Ljava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V

    .line 78
    .local v9, request:Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;
    :try_start_0
    sget-object v13, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    sget v14, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->port:I

    .line 77
    invoke-virtual {v9, v13, v14}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->send(Ljava/net/InetAddress;I)Ljava/net/DatagramSocket;

    move-result-object v12

    .line 80
    .local v12, socket:Ljava/net/DatagramSocket;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    .line 81
    const/16 v13, 0x400

    .line 80
    invoke-direct {v7, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 83
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    const/16 v13, 0x400

    new-array v1, v13, [B

    .line 85
    .local v1, buf:[B
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v13, v1

    invoke-direct {v10, v1, v13}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 87
    .local v10, resp:Ljava/net/DatagramPacket;
    const/16 v2, 0x400

    .line 88
    .local v2, bytesRead:I
    :goto_0
    const/16 v13, 0x400

    if-eq v2, v13, :cond_0

    .line 94
    new-instance v5, Lorg/apache/harmony/security/asn1/DerInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-direct {v5, v13}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>([B)V

    .line 96
    .local v5, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    iget v13, v5, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    sget-object v14, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->AS_REP_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    iget v14, v14, Lorg/apache/harmony/security/asn1/ASN1Explicit;->constrId:I

    if-ne v13, v14, :cond_1

    .line 97
    sget-object v13, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->AS_REP_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 98
    invoke-virtual {v13, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v8

    .line 97
    check-cast v8, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;

    .line 100
    .local v8, reply:Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;
    new-instance v6, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;

    new-instance v13, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;

    .line 101
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getName()[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x40

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->getType()I

    move-result v15

    invoke-direct {v13, v14, v15}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;-><init>(Ljava/lang/String;I)V

    .line 102
    const-string v14, "DES"

    .line 100
    move-object/from16 v0, p1

    invoke-direct {v6, v13, v0, v14}, Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;-><init>(Lorg/apache/harmony/javax/security/auth/kerberos/KerberosPrincipal;[CLjava/lang/String;)V

    .line 104
    .local v6, key:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    invoke-virtual {v8, v6}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->decrypt(Ljavax/crypto/SecretKey;)V

    .line 106
    return-object v8

    .line 89
    .end local v5           #in:Lorg/apache/harmony/security/asn1/DerInputStream;
    .end local v6           #key:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosKey;
    .end local v8           #reply:Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;
    :cond_0
    invoke-virtual {v12, v10}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 91
    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    .line 92
    invoke-virtual {v10}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v13

    invoke-virtual {v7, v1, v13, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1           #buf:[B
    .end local v2           #bytesRead:I
    .end local v7           #out:Ljava/io/ByteArrayOutputStream;
    .end local v10           #resp:Ljava/net/DatagramPacket;
    .end local v12           #socket:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v3

    .line 118
    .local v3, e:Ljava/io/IOException;
    new-instance v13, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 107
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #buf:[B
    .restart local v2       #bytesRead:I
    .restart local v5       #in:Lorg/apache/harmony/security/asn1/DerInputStream;
    .restart local v7       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #resp:Ljava/net/DatagramPacket;
    .restart local v12       #socket:Ljava/net/DatagramSocket;
    :cond_1
    :try_start_1
    iget v13, v5, Lorg/apache/harmony/security/asn1/DerInputStream;->tag:I

    sget-object v14, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    iget v14, v14, Lorg/apache/harmony/security/asn1/ASN1Explicit;->constrId:I

    if-ne v13, v14, :cond_2

    .line 109
    invoke-static {v5}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->decode(Lorg/apache/harmony/security/asn1/DerInputStream;)Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;

    move-result-object v4

    .line 111
    .local v4, errMsg:Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;
    new-instance v13, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;

    .line 112
    const-string v14, "auth.52"

    invoke-virtual {v4}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;->getErrorCode()I

    move-result v15

    .line 111
    invoke-static {v14, v15}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 114
    .end local v4           #errMsg:Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosErrorMessage;
    :cond_2
    new-instance v13, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;

    invoke-direct {v13}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;-><init>()V

    throw v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static doTGS()Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->setEnv()V

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getRealm()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;
        }
    .end annotation

    .prologue
    .line 129
    const-class v1, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->isInitialized:Z

    if-nez v0, :cond_0

    .line 130
    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->setEnv()V

    .line 132
    :cond_0
    sget-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setEnv()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;
        }
    .end annotation

    .prologue
    .line 136
    sget-boolean v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->isInitialized:Z

    if-eqz v3, :cond_0

    .line 174
    :goto_0
    return-void

    .line 141
    :cond_0
    const-string v3, "java.security.krb5.kdc"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    .line 142
    const-string v3, "java.security.krb5.realm"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    .line 143
    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    if-nez v3, :cond_1

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_1
    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 145
    :cond_2
    new-instance v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;

    invoke-direct {v3}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;-><init>()V

    throw v3

    .line 146
    :cond_3
    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    if-nez v3, :cond_5

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, config:Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->getSystemConfig()Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 156
    if-nez v0, :cond_4

    .line 158
    new-instance v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;

    invoke-direct {v3}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;-><init>()V

    throw v3

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const-string v3, "libdefaults"

    .line 161
    const-string v4, "default_realm"

    .line 160
    invoke-virtual {v0, v3, v4}, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->realm:Ljava/lang/String;

    goto :goto_0

    .line 167
    .end local v0           #config:Lorg/apache/harmony/auth/internal/kerberos/v5/KrbConfig;
    :cond_5
    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 168
    .local v2, pos:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 169
    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->port:I

    .line 170
    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->kdc:Ljava/lang/String;

    .line 173
    :cond_6
    const/4 v3, 0x1

    sput-boolean v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KrbClient;->isInitialized:Z

    goto :goto_0
.end method
