.class public Lorg/apache/harmony/security/x501/AttributeType;
.super Ljava/lang/Object;
.source "AttributeType.java"


# instance fields
.field public final oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

.field public final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/security/asn1/ObjectIdentifier;Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "oid"
    .parameter "type"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/harmony/security/x501/AttributeType;->oid:Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    .line 44
    iput-object p2, p0, Lorg/apache/harmony/security/x501/AttributeType;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 45
    return-void
.end method
