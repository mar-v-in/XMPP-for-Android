.class Lorg/apache/harmony/security/x509/Extensions$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .parameter "$anonymous0"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 1
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 2
    .parameter "in"

    .prologue
    .line 78
    new-instance v1, Lorg/apache/harmony/security/x509/Extensions;

    iget-object v0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {v1, v0}, Lorg/apache/harmony/security/x509/Extensions;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/harmony/security/x509/Extensions$1;->getValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/security/x509/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extensions;

    .line 84
    .local v0, exts:Lorg/apache/harmony/security/x509/Extensions;
    #getter for: Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->access$0(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1

    .line 85
    :cond_0
    #getter for: Lorg/apache/harmony/security/x509/Extensions;->extensions:Ljava/util/List;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/Extensions;->access$0(Lorg/apache/harmony/security/x509/Extensions;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
