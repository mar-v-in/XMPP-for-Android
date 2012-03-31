.class Lorg/apache/harmony/security/pkcs7/SignerInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    .line 73
    .local v0, issAndSerial:[Ljava/lang/Object;
    aget-object v1, v0, v2

    aput-object v1, p2, v2

    .line 74
    aget-object v1, v0, v3

    aput-object v1, p2, v3

    .line 75
    return-void
.end method
