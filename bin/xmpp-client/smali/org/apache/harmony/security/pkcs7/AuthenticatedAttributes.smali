.class Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;
.super Ljava/lang/Object;
.source "AuthenticatedAttributes.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;


# instance fields
.field private final authenticatedAttributes:Ljava/util/List;

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;

    .line 40
    sget-object v1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 39
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .line 35
    return-void
.end method

.method public constructor <init>([BLjava/util/List;)V
    .locals 0
    .parameter "encoding"
    .parameter "authenticatedAttributes"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    .line 50
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->authenticatedAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    if-nez v0, :cond_0

    .line 64
    sget-object v0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1SetOf;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs7/AuthenticatedAttributes;->encoding:[B

    return-object v0
.end method
