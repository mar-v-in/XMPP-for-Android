.class public Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;
.super Ljava/lang/Object;
.source "KDCReply.java"


# static fields
.field public static final AS_REP:I = 0xb

.field public static final AS_REP_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit; = null

.field private static final ENC_AS_REP_PART:Lorg/apache/harmony/security/asn1/ASN1Explicit; = null

.field private static final ENC_KDC_REP_PART:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field private static final HOST_ADDRESS:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field static final KDC_REP_ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field private static final LAST_REQ:Lorg/apache/harmony/security/asn1/ASN1SequenceOf; = null

.field public static final TGS_REP:I = 0xd


# instance fields
.field private authtime:Ljava/util/Date;

.field private final cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

.field private final crealm:Ljava/lang/String;

.field private final encPart:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;

.field private endtime:Ljava/util/Date;

.field private flags:Lorg/apache/harmony/security/asn1/BitString;

.field private key:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

.field private final msgType:I

.field private renewtill:Ljava/util/Date;

.field private sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

.field private srealm:Ljava/lang/String;

.field private starttime:Ljava/util/Date;

.field private final ticket:Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$1;

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 103
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 104
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 105
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    .line 107
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 108
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v10, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v10

    const/4 v2, 0x5

    .line 109
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x5

    sget-object v5, Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;->TICKET_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 110
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x6

    sget-object v5, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 102
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->KDC_REP_ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 132
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 133
    const/16 v1, 0x40

    const/16 v2, 0xb

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->KDC_REP_ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 132
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->AS_REP_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 135
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 136
    new-instance v1, Lorg/apache/harmony/security/asn1/ASN1Sequence;

    new-array v2, v8, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 138
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v2, v6

    .line 139
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v4

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v2, v7

    .line 136
    invoke-direct {v1, v2}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 135
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->LAST_REQ:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 142
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 143
    new-array v1, v8, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 145
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 146
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 142
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->HOST_ADDRESS:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 149
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$2;

    .line 150
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v6, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v6

    .line 151
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->LAST_REQ:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 153
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    .line 154
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v3

    invoke-direct {v2, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 156
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v10

    const/4 v2, 0x5

    .line 157
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x5

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 158
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x6

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 159
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x7

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 160
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0x8

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 162
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0x9

    sget-object v5, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 163
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0xa

    sget-object v5, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 164
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0xb

    sget-object v5, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->HOST_ADDRESS:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 149
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->ENC_KDC_REP_PART:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 175
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 176
    const/16 v1, 0x40

    const/16 v2, 0x19

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->ENC_KDC_REP_PART:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 175
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->ENC_AS_REP_PART:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 43
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;)V
    .locals 0
    .parameter "msgType"
    .parameter "crealm"
    .parameter "cname"
    .parameter "ticket"
    .parameter "encPart"

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->msgType:I

    .line 181
    iput-object p3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 182
    iput-object p2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->crealm:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->ticket:Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;

    .line 184
    iput-object p5, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->encPart:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;-><init>(ILjava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;)V

    return-void
.end method


# virtual methods
.method public decrypt(Ljavax/crypto/SecretKey;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lorg/apache/harmony/security/asn1/DerInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 193
    iget-object v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->encPart:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;

    invoke-virtual {v3, p1}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;->decrypt(Ljavax/crypto/SecretKey;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 192
    invoke-direct {v0, v2}, Lorg/apache/harmony/security/asn1/DerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v0, in:Lorg/apache/harmony/security/asn1/DerInputStream;
    sget-object v2, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->ENC_AS_REP_PART:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1Explicit;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 197
    .local v1, values:[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->key:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

    .line 198
    const/4 v2, 0x4

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/asn1/BitString;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->flags:Lorg/apache/harmony/security/asn1/BitString;

    .line 199
    const/4 v2, 0x5

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->authtime:Ljava/util/Date;

    .line 200
    const/4 v2, 0x6

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->starttime:Ljava/util/Date;

    .line 201
    const/4 v2, 0x7

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->endtime:Ljava/util/Date;

    .line 202
    const/16 v2, 0x8

    aget-object v2, v1, v2

    check-cast v2, Ljava/util/Date;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->renewtill:Ljava/util/Date;

    .line 203
    const/16 v2, 0x9

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->srealm:Ljava/lang/String;

    .line 204
    const/16 v2, 0xa

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    iput-object v2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 205
    return-void
.end method

.method public getAuthtime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->authtime:Ljava/util/Date;

    return-object v0
.end method

.method public getCname()Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method

.method public getCrealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->crealm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncPart()Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->encPart:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptedData;

    return-object v0
.end method

.method public getEndtime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->endtime:Ljava/util/Date;

    return-object v0
.end method

.method public getFlags()Lorg/apache/harmony/security/asn1/BitString;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->flags:Lorg/apache/harmony/security/asn1/BitString;

    return-object v0
.end method

.method public getKey()Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->key:Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;

    return-object v0
.end method

.method public getMsgtype()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->msgType:I

    return v0
.end method

.method public getRenewtill()Ljava/util/Date;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->renewtill:Ljava/util/Date;

    return-object v0
.end method

.method public getSname()Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method

.method public getSrealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->srealm:Ljava/lang/String;

    return-object v0
.end method

.method public getStarttime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->starttime:Ljava/util/Date;

    return-object v0
.end method

.method public getTicket()Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCReply;->ticket:Lorg/apache/harmony/auth/internal/kerberos/v5/Ticket;

    return-object v0
.end method
