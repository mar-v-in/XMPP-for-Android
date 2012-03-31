.class public Lorg/apache/harmony/security/x509/OtherName;
.super Ljava/lang/Object;
.source "OtherName.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final typeID:Ljava/lang/String;

.field private final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 56
    new-instance v0, Lorg/apache/harmony/security/x509/OtherName$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 57
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    .line 56
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/OtherName$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .parameter "typeID"
    .parameter "value"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/OtherName;-><init>(Ljava/lang/String;[B[B)V

    .line 86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[B)V
    .locals 0
    .parameter "typeID"
    .parameter "value"
    .parameter "encoding"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/harmony/security/x509/OtherName;->typeID:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/apache/harmony/security/x509/OtherName;->value:[B

    .line 97
    iput-object p3, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[B[BLorg/apache/harmony/security/x509/OtherName;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/OtherName;-><init>(Ljava/lang/String;[B[B)V

    return-void
.end method

.method static synthetic access$1(Lorg/apache/harmony/security/x509/OtherName;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->typeID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/security/x509/OtherName;)[B
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->value:[B

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lorg/apache/harmony/security/x509/OtherName;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->encoding:[B

    return-object v0
.end method

.method public getTypeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->typeID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/harmony/security/x509/OtherName;->value:[B

    return-object v0
.end method
