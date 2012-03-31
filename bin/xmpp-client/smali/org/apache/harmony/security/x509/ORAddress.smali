.class public Lorg/apache/harmony/security/x509/ORAddress;
.super Ljava/lang/Object;
.source "ORAddress.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    new-instance v0, Lorg/apache/harmony/security/x509/ORAddress$2;

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/x509/ORAddress$1;

    new-array v3, v4, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v2, v3}, Lorg/apache/harmony/security/x509/ORAddress$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    .line 54
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ORAddress$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress;->encoding:[B

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lorg/apache/harmony/security/x509/ORAddress;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress;->encoding:[B

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress;->encoding:[B

    return-object v0
.end method
