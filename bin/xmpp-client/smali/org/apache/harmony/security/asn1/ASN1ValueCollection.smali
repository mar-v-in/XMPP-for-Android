.class public abstract Lorg/apache/harmony/security/asn1/ASN1ValueCollection;
.super Lorg/apache/harmony/security/asn1/ASN1Constructured;
.source "ASN1ValueCollection.java"


# instance fields
.field public final type:Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructured;-><init>(I)V

    .line 53
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1ValueCollection;->type:Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 54
    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .parameter "object"

    .prologue
    .line 66
    check-cast p1, Ljava/util/Collection;

    .end local p1
    return-object p1
.end method
