.class Lorg/apache/harmony/security/x509/ORAddress$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ORAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ORAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final foo:Ljava/lang/Object;


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "$anonymous0"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress$2;->foo:Ljava/lang/Object;

    .line 1
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .parameter "in"

    .prologue
    .line 65
    new-instance v0, Lorg/apache/harmony/security/x509/ORAddress;

    invoke-direct {v0}, Lorg/apache/harmony/security/x509/ORAddress;-><init>()V

    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .parameter "object"
    .parameter "values"

    .prologue
    .line 70
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/ORAddress$2;->foo:Ljava/lang/Object;

    aput-object v1, p2, v0

    .line 71
    return-void
.end method
