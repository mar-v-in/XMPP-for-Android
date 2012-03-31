.class public abstract Lorg/apache/harmony/security/asn1/ASN1TypeCollection;
.super Lorg/apache/harmony/security/asn1/ASN1Constructured;
.source "ASN1TypeCollection.java"


# instance fields
.field public final DEFAULT:[Ljava/lang/Object;

.field public final OPTIONAL:[Z

.field public final type:[Lorg/apache/harmony/security/asn1/ASN1Type;


# direct methods
.method public constructor <init>(I[Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .parameter "tagNumber"
    .parameter "type"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Constructured;-><init>(I)V

    .line 60
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->type:[Lorg/apache/harmony/security/asn1/ASN1Type;

    .line 61
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    .line 62
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .parameter "object"
    .parameter "values"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    .line 80
    const-string v1, "security.101"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final setDefault(Ljava/lang/Object;I)V
    .locals 2
    .parameter "object"
    .parameter "index"

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->DEFAULT:[Ljava/lang/Object;

    aput-object p1, v0, p2

    .line 95
    return-void
.end method

.method protected final setOptional(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ASN1TypeCollection;->OPTIONAL:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 105
    return-void
.end method
