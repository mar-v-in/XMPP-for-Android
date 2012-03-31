.class public Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;
.super Ljava/lang/Object;
.source "EncryptionKey.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final type:I

.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 46
    new-instance v0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 48
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 49
    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    .line 46
    invoke-direct {v0, v1}, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 34
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .parameter "type"
    .parameter "value"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->type:I

    .line 81
    iput-object p2, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->value:[B

    .line 82
    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->type:I

    return v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;)[B
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->value:[B

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->type:I

    return v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/harmony/auth/internal/kerberos/v5/EncryptionKey;->value:[B

    return-object v0
.end method
