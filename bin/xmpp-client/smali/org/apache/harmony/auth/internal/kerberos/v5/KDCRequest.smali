.class public Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;
.super Ljava/lang/Object;
.source "KDCRequest.java"


# static fields
.field public static final AS_REQ:I = 0xa

.field static final AS_REQ_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit; = null

.field static final KDC_REQ_ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field private static final KDC_REQ_BODY:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final TGS_REQ:I = 0xc


# instance fields
.field private final cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

.field private final msgType:I

.field private final realm:Ljava/lang/String;

.field private final sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 88
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;

    .line 89
    const/16 v1, 0xc

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 90
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v11

    .line 91
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 93
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/asn1/ASN1StringType;->GENERALSTRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    .line 94
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 95
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    invoke-direct {v2, v10, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v10

    const/4 v2, 0x5

    .line 96
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x5

    invoke-static {}, Lorg/apache/harmony/auth/internal/kerberos/v5/KerberosTime;->getASN1()Lorg/apache/harmony/security/asn1/ASN1Type;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 97
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x6

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 98
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/4 v4, 0x7

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 99
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0x8

    new-instance v5, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 100
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 99
    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 101
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0x9

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 102
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0xa

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 104
    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    const/16 v4, 0xb

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 88
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->KDC_REQ_BODY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 169
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$2;

    new-array v1, v10, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 171
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v11

    .line 173
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v8, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v7

    .line 175
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v2, v9, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v8

    .line 177
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->KDC_REQ_BODY:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v10, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v9

    .line 169
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->KDC_REQ_ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 193
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 194
    const/16 v1, 0x40

    const/16 v2, 0xa

    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->KDC_REQ_ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 193
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(IILorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->AS_REQ_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    .line 42
    return-void
.end method

.method constructor <init>(ILorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;Ljava/lang/String;Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;)V
    .locals 0
    .parameter "msgType"
    .parameter "cname"
    .parameter "realm"
    .parameter "sname"

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->msgType:I

    .line 200
    iput-object p2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 201
    iput-object p3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->realm:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    .line 203
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->cname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->realm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->sname:Lorg/apache/harmony/auth/internal/kerberos/v5/PrincipalName;

    return-object v0
.end method

.method static synthetic access$3(Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->msgType:I

    return v0
.end method


# virtual methods
.method public send(Ljava/net/InetAddress;I)Ljava/net/DatagramSocket;
    .locals 5
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget v3, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->msgType:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    .line 209
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "auth.65"

    invoke-static {v4}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 212
    :cond_0
    sget-object v3, Lorg/apache/harmony/auth/internal/kerberos/v5/KDCRequest;->AS_REQ_ASN1:Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-virtual {v3, p0}, Lorg/apache/harmony/security/asn1/ASN1Explicit;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    .line 214
    .local v0, enc:[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v1, v0, v3, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 216
    .local v1, req:Ljava/net/DatagramPacket;
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V

    .line 218
    .local v2, socket:Ljava/net/DatagramSocket;
    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 220
    return-object v2
.end method
